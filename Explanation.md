#Objective:#
The project aims to create a Job Recruitment Application for a recruitment agency to facilitate job applications from applicants and job offers management by recruiters. The system also includes an administrator role for overseeing the application, handling feedback, and ensuring a user-friendly experience.

#Database Entities:#

Login Information Entity: Stores login credentials securely, including login ID, encrypted password, and user type (e.g., Administrator).
Applicant Entity: Represents the default user, storing email address, location, and name.
Admin Entity: Includes information about administrators, such as email address, location, SSN, and name.
Recruiter Entity: Represents employers, containing email address, location, and name.
Feedback Entity: Allows users to report problems, consisting of a feedback number and textual comment.
Job Offer Entity: Contains details about job offers, including Job ID, description, location, salary, and a flag indicating whether the job is remote.

#ER Diagram:#
An Entity-Relationship (ER) diagram visually represents the relationships between the entities, showcasing how they interact and connect.

#Relational Schema:#
The ER diagram is translated into a relational schema, specifying tables, attributes, and relationships.

#SQL Queries:#
SQL queries are developed to interact with the database and retrieve specific information. The queries address various questions related to applicants, recruiters, job offers, feedback, and administrators.

#Normalization:#

First Normal Form (1NF): Ensures each column contains a single value and eliminates redundancy. The database was found to already be in 1NF.
Second Normal Form (2NF): The Job Offer table is revised to eliminate partial dependencies, breaking it into two tables for better structure.
Third Normal Form (3NF): Ensures no transitive dependencies exist. The database was found to be in 3NF, but a specific case of BCNF was identified and applied to the Login table.
