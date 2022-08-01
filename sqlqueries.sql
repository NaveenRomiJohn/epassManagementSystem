CREATE TABLE epass_user (
    user_id VARCHAR2(10) NOT NULL PRIMARY KEY,
    first_name VARCHAR2(20) NOT NULL,
    last_name VARCHAR2(20) NULL,
    gender VARCHAR2(15) NOT NULL,
    age NUMBER NOT NULL,
    email VARCHAR2(50) NULL,
    mobile_number NUMBER NOT NULL,
    address VARCHAR2(200) NOT NULL,
    user_password VARCHAR2(20) NOT NULL
);
select * from epass_user;


create table epass_admin(
admin_id VARCHAR2(10) NOT NULL PRIMARY KEY,
admin_name VARCHAR2(30) NOT NULL,
admin_email VARCHAR2(30) NOT NULL,
admin_password VARCHAR2(20) NOT NULL,
date_of_joining DATE NOT NULL,
admin_designation VARCHAR2(30) NOT NULL
);
select * from epass_admin;


create table epass_across_district(
epass_id VARCHAR2(20) NOT NULL,
from_district VARCHAR2(30) NOT NULL,
to_district VARCHAR2(30) NOT NULL,
FOREIGN KEY (epass_id) REFERENCES epass_form(epass_id)
);
select * from epass_across_district;


create table epass_passengers(
epass_id VARCHAR2(20) NOT NULL,
passenger_name VARCHAR2(30) NOT NULL ,
date_of_birth DATE NOT NULL,
passenger_gender VARCHAR2(20) NOT NULL,
covid_symptoms VARCHAR2(50) NOT NULL,
id_proof_type VARCHAR2(20) NOT NULL,
id_proof_number NUMBER(20) NOT NULL PRIMARY KEY,
FOREIGN KEY (epass_id) REFERENCES epass_form(epass_id)
);
select * from epass_passengers;


create table epass_form(
epass_id VARCHAR2(20) NOT NULL PRIMARY KEY,
admin_id VARCHAR2(10) NOT NULL,
user_id VARCHAR2(10) NOT NULL,
travel_reason VARCHAR2(50) NOT NULL ,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
vehicle_number NUMBER(15) NOT NULL,
number_of_passengers NUMBER NOT NULL,
applied_date DATE NOT NULL,
approval_status VARCHAR2(20) NOT NULL,
approved_date DATE NOT NULL,
from_address VARCHAR2(200) NOT NULL ,
destination_address VARCHAR2(200) NOT NULL ,
application_type VARCHAR2(25) NOT NULL,
FOREIGN KEY (admin_id) REFERENCES epass_admin(admin_id),
FOREIGN KEY (user_id) REFERENCES epass_user(user_id)
);
select * from epass_form;


create table epass_outside_state(
epass_id VARCHAR2(20) NOT NULL ,
from_state VARCHAR2(50) NOT NULL ,
to_state VARCHAR2(50) NOT NULL ,
quarantine_from_date DATE NOT NULL,
quarantine_to_date DATE NOT NULL,
quarantine_location VARCHAR2(50) NOT NULL ,
pcr_result_certificate_date DATE NOT NULL,
pcr_result_certificate_number NUMBER(20) NOT NULL ,
pcr_certificate_issued_by VARCHAR2(100) NOT NULL ,
FOREIGN KEY (epass_id) REFERENCES epass_form(epass_id)
);
select * from epass_outside_state;

commit;