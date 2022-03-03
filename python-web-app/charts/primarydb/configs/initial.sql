SET password_encryption = 'scram-sha-256';
CREATE ROLE repuser WITH REPLICATION PASSWORD 'changeme' LOGIN;
SELECT * FROM pg_create_physical_replication_slot('replica_1_slot');
CREATE TABLE blacklist (
    id serial PRIMARY KEY,
	path VARCHAR ( 50 ),
	ipaddress VARCHAR ( 50 ),
    timestamp TIMESTAMP 
);