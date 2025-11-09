-- query1
SELECT
    COUNT(id)
FROM
    all_2509.group_by;

-- query2
SELECT
    COUNT(DISTINCT id)
FROM
    all_2509.group_by;

-- query3
SELECT
    COUNT(columns) AS column_amount
FROM
    information_schema.columns
WHERE
    table_name = 'group_by';

-- query4
SELECT (
    SUM(qtr) +
    SUM(purchase_year) +
    SUM(purchase_month) +
    SUM(purchase_day) +
    SUM(special_day) +
    SUM(online_sale_offers) +
    SUM(day_of_week) +
    SUM(weekend) +
    SUM(morning) +
    SUM(afternoon) +
    SUM(evening) +
    SUM(night) +
    SUM(gender_binary) +
    SUM(quantity) +
    SUM(item_price) +
    SUM(shipping_price) +
    SUM(total_amount) +
    SUM(profit_percentage) +
    SUM(profit_inr) +
    SUM(cost_of)
) AS sum_of_columns
FROM
    all_2509.group_by;

-- query5
SELECT SUM(sum_of_row) AS sum_of_rows
FROM (
    SELECT
        id,
        SUM(
            qtr +
            purchase_year +
            purchase_month +
            purchase_day +
            special_day +
            online_sale_offers +
            day_of_week +
            weekend +
            morning +
            afternoon +
            evening +
            night +
            gender_binary +
            quantity +
            item_price +
            shipping_price +
            total_amount +
            profit_percentage +
            profit_inr +
            cost_of
        ) AS sum_of_row
    FROM
        all_2509.group_by
    GROUP BY id
);

-- query6
SELECT
    purchase_date
FROM
    all_2509.group_by
ORDER BY
    RANDOM()
LIMIT
    5;

-- query7
SELECT
    *
FROM
    all_2509.group_by
ORDER BY
    RANDOM()
LIMIT
    5;
