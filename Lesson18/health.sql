CREATE DATABASE IF NOT EXISTS health;

USE health;

CREATE TABLE IF NOT EXISTS Analysis (
    an_id INT AUTO_INCREMENT PRIMARY KEY,
    an_name VARCHAR(255) NOT NULL,
    an_cost DECIMAL(10,2) NOT NULL,
    an_price DECIMAL(10,2) NOT NULL,
    an_group INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Groups (
    gr_id INT AUTO_INCREMENT PRIMARY KEY,
    gr_name VARCHAR(255) NOT NULL,
    gr_temp VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Orders (
    ord_id INT AUTO_INCREMENT PRIMARY KEY,
    ord_datetime DATETIME NOT NULL,
    ord_an INT NOT NULL
);

INSERT INTO Groups (gr_name, gr_temp)
VALUES
    ('Биохимические', '2-8°C'),
    ('Гематологические', '15-25°C'),
    ('Иммунологические', '2-8°C'),
    ('Микробиологические', '15-25°C');

INSERT INTO Analysis (an_name, an_cost, an_price, an_group)
VALUES
    ('Общий анализ крови', 5.50, 15.00, 2),
    ('Биохимический анализ крови', 12.00, 25.00, 1),
    ('Анализ на антитела к COVID-19', 8.75, 20.00, 3),
    ('Анализ на чувствительность к антибиотикам', 10.00, 22.50, 4);

INSERT INTO Orders (ord_datetime, ord_an)
VALUES
    ('2020-02-05 10:38:46', 1),
    ('2020-02-06 14:45:10', 2),
    ('2020-02-07 09:17:13', 3),
    ('2020-02-08 16:25:21', 4),
    ('2020-02-09 11:06:10', 1),
    ('2020-02-10 15:13:02', 4),
    ('2020-02-11 12:22:09', 3),
    ('2020-02-12 13:21:11', 2);

SELECT a.an_name, a.an_price, o.ord_datetime FROM Analysis a JOIN Orders o ON a.an_id = o.ord_an WHERE o.ord_datetime BETWEEN '2020-02-05' AND '2020-02-13'
