-- 1. List all consumers with their connection type and status
SELECT 
    c.consumer_id,
    c.consumer_name,
    c.phone,
    cn.connection_type,
    cn.status
FROM consumers c
JOIN connections cn ON c.consumer_id = cn.consumer_id
ORDER BY c.consumer_id;

-- 2. Show all bills with consumer name and payment status
SELECT 
    b.bill_id,
    c.consumer_name,
    b.bill_date,
    b.amount,
    b.status AS bill_status,
    p.payment_method,
    p.payment_date
FROM bills b
JOIN connections cn ON b.connection_id = cn.connection_id
JOIN consumers c ON cn.consumer_id = c.consumer_id
LEFT JOIN payments p ON b.bill_id = p.bill_id
ORDER BY b.bill_date;

-- 3. Display meter details with consumer name and meter type
SELECT 
    c.consumer_name,
    m.meter_id,
    m.meter_type,
    m.install_date,
    cn.connection_type
FROM meters m
JOIN connections cn ON m.connection_id = cn.connection_id
JOIN consumers c ON cn.consumer_id = c.consumer_id
ORDER BY m.install_date;

-- 5. List transformers with their area names and capacity
SELECT 
    t.transformer_id,
    t.transformer_name,
    t.capacity_kva,
    a.area_name
FROM transformers t
JOIN areas a ON t.area_id = a.area_id
ORDER BY t.capacity_kva DESC;

-- AGGREGATE FUNCTIONS
-- 6. Total revenue collected per payment method
SELECT 
    payment_method,
    COUNT(payment_id) AS total_transactions,
    SUM(amount) AS total_collected,
    ROUND(AVG(amount),2) AS avg_payment
FROM payments
GROUP BY payment_method
ORDER BY total_collected DESC;

7. -- Count of connections by type and status
SELECT 
    connection_type,
    status,
    COUNT(*) AS total_connections
FROM connections
GROUP BY connection_type, status
ORDER BY connection_type, status;

8 -- Total units consumed per connection type
SELECT 
    cn.connection_type,
    SUM(mr.units_consumed) AS total_units,
    ROUND(AVG(mr.units_consumed),2) AS avg_units,
    MAX(mr.units_consumed) AS max_units,
    MIN(mr.units_consumed) AS min_units
FROM meter_readings mr
JOIN meters m ON mr.meter_id = m.meter_id
JOIN connections cn ON m.connection_id = cn.connection_id
GROUP BY cn.connection_type;

-- 9. Monthly bill collection summary
SELECT 
    DATE_FORMAT(bill_date, '%Y-%m') AS bill_month,
    COUNT(bill_id)                  AS total_bills,
    SUM(amount)                     AS total_amount,
    SUM(CASE WHEN status = 'Paid'   THEN amount ELSE 0 END) AS paid_amount,
    SUM(CASE WHEN status = 'Unpaid' THEN amount ELSE 0 END) AS unpaid_amount
FROM bills
GROUP BY DATE_FORMAT(bill_date, '%Y-%m')
ORDER BY bill_month;

-- 10. Total penalties collected by unpaid bills
SELECT 
    b.bill_id,
    c.consumer_name,
    b.amount        AS bill_amount,
    p.penalty_amount,
    (b.amount + p.penalty_amount) AS total_due
FROM penalties p
JOIN bills b ON p.bill_id = b.bill_id
JOIN connections cn ON b.connection_id = cn.connection_id
JOIN consumers c ON cn.consumer_id = c.consumer_id
ORDER BY p.penalty_amount DESC;

-- SUBQUERIES 
-- 11. Consumers who have more than average bill amount
SELECT 
    c.consumer_name,
    b.amount,
    b.status
FROM bills b
JOIN connections cn ON b.connection_id = cn.connection_id
JOIN consumers c ON cn.consumer_id = c.consumer_id
WHERE b.amount > (SELECT AVG(amount) FROM bills)
ORDER BY b.amount DESC;

-- 12. Areas that have experienced outages
SELECT 
    a.area_name,
    COUNT(o.outage_id) AS total_outages,
    MIN(o.outage_date) AS first_outage,
    MAX(o.outage_date) AS last_outage
FROM outages o
JOIN areas a ON o.area_id = a.area_id
GROUP BY a.area_name
ORDER BY total_outages DESC;

-- 13. Consumers with unpaid bills and their penalty details
SELECT 
    c.consumer_name,
    c.phone,
    b.bill_id,
    b.amount        AS bill_amount,
    b.bill_date,
    COALESCE(pen.penalty_amount, 0) AS penalty
FROM consumers c
JOIN connections cn ON c.consumer_id = cn.consumer_id
JOIN bills b ON cn.connection_id = b.connection_id
LEFT JOIN penalties pen ON b.bill_id = pen.bill_id
WHERE b.status = 'Unpaid'
ORDER BY b.amount DESC;

-- 14. Top 5 highest electricity consuming connections
SELECT 
    c.consumer_name,
    cn.connection_type,
    SUM(mr.units_consumed) AS total_units
FROM meter_readings mr
JOIN meters m ON mr.meter_id = m.meter_id
JOIN connections cn ON m.connection_id = cn.connection_id
JOIN consumers c ON cn.consumer_id = c.consumer_id
GROUP BY c.consumer_name, cn.connection_type
ORDER BY total_units DESC
LIMIT 5;

-- 15. Consumers who have never filed a complaint
SELECT 
    c.consumer_id,
    c.consumer_name,
    c.phone,
    c.email
FROM consumers c
WHERE c.consumer_id NOT IN (
    SELECT DISTINCT consumer_id FROM complaints
)
ORDER BY c.consumer_id;

-- ============================================
-- ADVANCED JOINS & CASE STATEMENTS

-- 16. Bill summary with slab-based category using CASE
SELECT 
    c.consumer_name,
    cn.connection_type,
    b.amount,
    CASE 
        WHEN b.amount < 500   THEN 'Low Usage'
        WHEN b.amount < 2000  THEN 'Medium Usage'
        WHEN b.amount < 8000  THEN 'High Usage'
        ELSE 'Very High Usage'
    END AS usage_category,
    b.status
FROM bills b
JOIN connections cn ON b.connection_id = cn.connection_id
JOIN consumers c ON cn.consumer_id = c.consumer_id
ORDER BY b.amount DESC;

-- 17. Employee audit activity report
SELECT 
    e.employee_name,
    e.designation,
    COUNT(a.audit_id)         AS total_actions,
    MIN(a.audit_date)         AS first_action,
    MAX(a.audit_date)         AS last_action
FROM audits a
JOIN employees e ON a.employee_id = e.employee_id
GROUP BY e.employee_name, e.designation
ORDER BY total_actions DESC;

-- 18. Complaint resolution rate by complaint type
SELECT 
    comp.complaint_type,
    COUNT(*)                                                        AS total_complaints,
    SUM(CASE WHEN cs.status = 'Resolved'    THEN 1 ELSE 0 END)     AS resolved,
    SUM(CASE WHEN cs.status = 'In Progress' THEN 1 ELSE 0 END)     AS in_progress,
    SUM(CASE WHEN cs.status = 'Pending'     THEN 1 ELSE 0 END)     AS pending,
    ROUND(SUM(CASE WHEN cs.status = 'Resolved' THEN 1 ELSE 0 END)
          * 100.0 / COUNT(*), 2)                                    AS resolution_rate_pct
FROM complaints comp
JOIN complaint_status cs ON comp.complaint_id = cs.complaint_id
GROUP BY comp.complaint_type
ORDER BY resolution_rate_pct DESC;

-- 19. Consumer full profile — consumer + address + connection + meter
SELECT 
    c.consumer_id,
    c.consumer_name,
    c.phone,
    c.email,
    ad.city,
    ad.state,
    ad.pincode,
    cn.connection_type,
    cn.status     AS connection_status,
    m.meter_type,
    m.install_date
FROM consumers c
JOIN addresses ad  ON c.consumer_id  = ad.consumer_id
JOIN connections cn ON c.consumer_id = cn.consumer_id
JOIN meters m       ON cn.connection_id = m.connection_id
ORDER BY c.consumer_id;

-- 20. Power usage vs billed amount comparison
SELECT 
    c.consumer_name,
    cn.connection_type,
    pu.units_used,
    b.amount       AS billed_amount,
    ROUND(b.amount / pu.units_used, 2) AS effective_rate_per_unit
FROM power_usage pu
JOIN connections cn ON pu.connection_id = cn.connection_id
JOIN consumers c    ON cn.consumer_id   = c.consumer_id
JOIN bills b        ON cn.connection_id = b.connection_id
ORDER BY effective_rate_per_unit DESC;

-- ============================================
-- WINDOW FUNCTIONS & RANKING

-- 21. Rank consumers by bill amount within each connection type
SELECT 
    c.consumer_name,
    cn.connection_type,
    b.amount,
    RANK() OVER (
        PARTITION BY cn.connection_type 
        ORDER BY b.amount DESC
    ) AS rank_in_type
FROM bills b
JOIN connections cn ON b.connection_id = cn.connection_id
JOIN consumers c    ON cn.consumer_id   = c.consumer_id;

-- 22. Running total of payments month by month
SELECT 
    DATE_FORMAT(payment_date, '%Y-%m')    AS pay_month,
    SUM(amount)                           AS monthly_collected,
    SUM(SUM(amount)) OVER (
        ORDER BY DATE_FORMAT(payment_date, '%Y-%m')
    )                                     AS running_total
FROM payments
GROUP BY DATE_FORMAT(payment_date, '%Y-%m')
ORDER BY pay_month;

-- 23. Meter reading comparison — current vs previous month units
SELECT 
    mr.meter_id,
    c.consumer_name,
    mr.reading_date,
    mr.units_consumed,
    LAG(mr.units_consumed) OVER (
        PARTITION BY mr.meter_id 
        ORDER BY mr.reading_date
    )                                             AS prev_month_units,
    mr.units_consumed - LAG(mr.units_consumed) OVER (
        PARTITION BY mr.meter_id 
        ORDER BY mr.reading_date
    )                                             AS difference
FROM meter_readings mr
JOIN meters m       ON mr.meter_id      = m.meter_id
JOIN connections cn ON m.connection_id  = cn.connection_id
JOIN consumers c    ON cn.consumer_id   = c.consumer_id;

-- 24. Percentile rank of each bill amount
SELECT 
    c.consumer_name,
    b.amount,
    ROUND(PERCENT_RANK() OVER (ORDER BY b.amount) * 100, 2) AS percentile_rank,
    NTILE(4) OVER (ORDER BY b.amount)                       AS quartile
FROM bills b
JOIN connections cn ON b.connection_id = cn.connection_id
JOIN consumers c    ON cn.consumer_id   = c.consumer_id
ORDER BY b.amount;

-- 25. Dense rank of areas by number of outages
SELECT 
    a.area_name,
    COUNT(o.outage_id) AS outage_count,
    DENSE_RANK() OVER (
        ORDER BY COUNT(o.outage_id) DESC
    ) AS outage_rank
FROM areas a
LEFT JOIN outages o ON a.area_id = o.area_id
GROUP BY a.area_name
ORDER BY outage_rank;

-- ============================================
-- STORED PROCEDURE & VIEW

-- 26. View: Unpaid bills with penalty and total due
CREATE VIEW vw_unpaid_dues AS
SELECT 
    c.consumer_id,
    c.consumer_name,
    c.phone,
    b.bill_id,
    b.bill_date,
    b.amount                        AS bill_amount,
    COALESCE(p.penalty_amount, 0)   AS penalty,
    b.amount + COALESCE(p.penalty_amount, 0) AS total_due
FROM bills b
JOIN connections cn  ON b.connection_id  = cn.connection_id
JOIN consumers c     ON cn.consumer_id   = c.consumer_id
LEFT JOIN penalties p ON b.bill_id       = p.bill_id
WHERE b.status = 'Unpaid';

-- Query the view
SELECT * FROM vw_unpaid_dues ORDER BY total_due DESC;

-- 27. View: Area-wise outage and transformer summary
CREATE VIEW vw_area_summary AS
SELECT 
    a.area_name,
    t.transformer_name,
    t.capacity_kva,
    COUNT(o.outage_id) AS total_outages
FROM areas a
LEFT JOIN transformers t ON a.area_id = t.area_id
LEFT JOIN outages o      ON a.area_id = o.area_id
GROUP BY a.area_name, t.transformer_name, t.capacity_kva;

-- Query the view
SELECT * FROM vw_area_summary ORDER BY total_outages DESC;

-- 28. Stored Procedure: Get full bill details by consumer ID
DELIMITER $$
CREATE PROCEDURE GetConsumerBillDetails(IN p_consumer_id INT)
BEGIN
    SELECT 
        c.consumer_name,
        c.phone,
        b.bill_id,
        b.bill_date,
        b.amount,
        b.status,
        COALESCE(p.payment_method, 'Not Paid') AS payment_method,
        COALESCE(p.payment_date,   NULL)        AS payment_date,
        COALESCE(pen.penalty_amount, 0)         AS penalty
    FROM consumers c
    JOIN connections cn  ON c.consumer_id    = cn.consumer_id
    JOIN bills b         ON cn.connection_id = b.connection_id
    LEFT JOIN payments p   ON b.bill_id      = p.bill_id
    LEFT JOIN penalties pen ON b.bill_id     = pen.bill_id
    WHERE c.consumer_id = p_consumer_id;
END $$
DELIMITER ;

-- Call the procedure
CALL GetConsumerBillDetails(3);

-- 29. Stored Procedure: Monthly revenue report
DELIMITER $$
CREATE PROCEDURE GetMonthlyRevenue(IN p_year INT)
BEGIN
    SELECT 
        DATE_FORMAT(payment_date, '%M')   AS month_name,
        COUNT(payment_id)                 AS total_payments,
        SUM(amount)                       AS revenue,
        ROUND(AVG(amount), 2)             AS avg_payment
    FROM payments
    WHERE YEAR(payment_date) = p_year
    GROUP BY DATE_FORMAT(payment_date, '%M'), MONTH(payment_date)
    ORDER BY MONTH(payment_date);
END $$
DELIMITER ;

-- Call the procedure
CALL GetMonthlyRevenue(2024);

-- 30. Stored Procedure: Flag high usage consumers (above threshold)
DELIMITER $$
CREATE PROCEDURE GetHighUsageConsumers(IN p_threshold INT)
BEGIN
    SELECT 
        c.consumer_name,
        c.phone,
        c.email,
        cn.connection_type,
        mr.units_consumed,
        b.amount,
        b.status
    FROM meter_readings mr
    JOIN meters m       ON mr.meter_id      = m.meter_id
    JOIN connections cn ON m.connection_id  = cn.connection_id
    JOIN consumers c    ON cn.consumer_id   = c.consumer_id
    JOIN bills b        ON cn.connection_id = b.connection_id
    WHERE mr.units_consumed > p_threshold
    ORDER BY mr.units_consumed DESC;
END $$
DELIMITER ;

-- Call the procedure
CALL GetHighUsageConsumers(500);