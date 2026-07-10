SELECT * FROM cleaned_csv;

CREATE TABLE customers (
    customer_id TEXT PRIMARY KEY,
    annual_income REAL,
    year_in_current_job TEXT,
    home_ownership TEXT
);

CREATE TABLE loans (
    loan_id TEXT,
    customer_id TEXT PRIMARY KEY,
    current_loan_amount REAL,
    term TEXT,
    purpose TEXT,
    monthly_debt REAL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE credit_profiles (
    loan_id TEXT PRIMARY KEY,
    credit_score REAL,
    months_since_last_delinquent INTEGER,
    number_of_open_accounts INTEGER,
    number_of_credit_problems INTEGER,
    current_credit_balance REAL,
    maximum_open_credit REAL,
    bankruptcies INTEGER,
    tax_liens INTEGER,
    FOREIGN KEY (loan_id) REFERENCES loans(loan_id)
);