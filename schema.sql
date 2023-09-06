CREATE TABLE patients (
    id INT PRIMARY KEY,
    name VARCHAR(225),
    date_of_birth DATE
);

CREATE TABLE medical_histories(
    id INT  PRIMARY KEY,
    admited_at TIMESTAMP,
    patient_id INT REFERENCES patients(id),
    status VARCHAR(225)
);

CREATE TABLE invoices (
    id INT PRIMARY KEY,
    generated_at TIMESTAMP,
    payed_at TIMESTAMP,
    medical_history_id INT REFERENCES medical_histories(id)
);

CREATE TABLE treatments(
    id INT PRIMARY KEY,
    type VARCHAR(225),
    name VARCHAR(225)
);

CREATE TABLE  invoice_items (
   id INT PRIMARY KEY,
   unit_price DECIMAL,
   quantity INT,
   total_price DECIMAL,
   invoice_id INT REFERENCES envoices(id),
   traitment_id  INT REFERENCES traitments(id)
); 