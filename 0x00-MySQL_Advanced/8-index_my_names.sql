-- Task Optimize simple search
CREATE INDEX idx_name_first_score ON names (SUBSTR(name, 1, 1), score);
