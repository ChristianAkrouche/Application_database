-- Insert into LOGINF
INSERT INTO LOGINF (LID, PASS, UTYPE)
VALUES
    ('user1', 'pass1', 'Applicant'),
    ('user2', 'pass2', 'Administrator'),
    ('user3', 'pass3', 'Recruiter'),
    ('user4', 'pass4', 'Applicant'),
    ('user5', 'pass5', 'Recruiter');

-- Insert into APPLICANT
INSERT INTO APPLICANT (APEMAIL, APLOCATION, APFNAME, APLNAME, LID)
VALUES
    ('applicant1@example.com', 'City1', 'John', 'Doe', 'user1'),
    ('applicant2@example.com', 'City2', 'Jane', 'Smith', 'user4'),
    ('applicant3@example.com', 'City3', 'Bob', 'Johnson', 'user5'),
    ('applicant4@example.com', 'City4', 'Alice', 'Williams', 'user1'),
    ('applicant5@example.com', 'City5', 'Chris', 'Davis', 'user4');

-- Insert into ADMINISTRATOR
INSERT INTO ADMINISTRATOR (ADEMAIL, ADSSN, ADFNAME, ADLNAME, LID)
VALUES
    ('admin1@example.com', '123456789', 'Admin', 'One', 'user2'),
    ('admin2@example.com', '987654321', 'Admin', 'Two', 'user2'),
    ('admin3@example.com', '654321987', 'Admin', 'Three', 'user2'),
    ('admin4@example.com', '111223344', 'Admin', 'Four', 'user2'),
    ('admin5@example.com', '998877665', 'Admin', 'Five', 'user2');

-- Insert into RECRUITER
INSERT INTO RECRUITER (REMAIL, RLOCATION, RNAME, LID)
VALUES
    ('recruiter1@example.com', 'CityA', 'Recruiter A', 'user3'),
    ('recruiter2@example.com', 'CityB', 'Recruiter B', 'user3'),
    ('recruiter3@example.com', 'CityC', 'Recruiter C', 'user3'),
    ('recruiter4@example.com', 'CityD', 'Recruiter D', 'user3'),
    ('recruiter5@example.com', 'CityE', 'Recruiter E', 'user3');

-- Insert into FEEDBACK
INSERT INTO FEEDBACK (APEMAIL, COMMENT)
VALUES
    ('applicant1@example.com', 'Good experience with the application process.'),
    ('applicant2@example.com', 'Satisfied with the interview process.'),
    ('applicant3@example.com', 'Excellent communication from the recruiter.'),
    ('applicant4@example.com', 'Challenging interview questions.'),
    ('applicant5@example.com', 'Timely response from the HR department.');

-- Insert into FEEDBACK_REVIEWS
INSERT INTO FEEDBACK_REVIEWS (APEMAIL, ADEMAIL, REPLY)
VALUES
    ('applicant1@example.com', 'admin1@example.com', 'Thank you for your feedback.'),
    ('applicant2@example.com', 'admin2@example.com', 'We appreciate your positive comments.'),
    ('applicant3@example.com', 'admin3@example.com', 'We will address your concerns.'),
    ('applicant4@example.com', 'admin4@example.com', 'Your insights are valuable.'),
    ('applicant5@example.com', 'admin5@example.com', 'Glad to hear about your positive experience.');

-- Insert into OFFERS
INSERT INTO OFFERS (REMAIL, JLOCATION, JDESCRIPTION, is_remote, SALARY)
VALUES
    ('recruiter1@example.com', 'LocationX', 'Software Engineer Position', 0, 80000),
    ('recruiter2@example.com', 'LocationY', 'Data Analyst Role', 1, 70000),
    ('recruiter3@example.com', 'LocationZ', 'Marketing Specialist Job', 0, 75000),
    ('recruiter4@example.com', 'LocationW', 'UX/UI Designer Opening', 1, 90000),
    ('recruiter5@example.com', 'LocationV', 'Financial Analyst Position', 0, 85000);

-- Insert into APPLICATION
INSERT INTO APPLICATION (APEMAIL, JID, REMAIL)
VALUES
    ('applicant1@example.com', 1, 'recruiter1@example.com'),
    ('applicant2@example.com', 2, 'recruiter2@example.com'),
    ('applicant3@example.com', 3, 'recruiter3@example.com'),
    ('applicant4@example.com', 4, 'recruiter4@example.com'),
    ('applicant5@example.com', 5, 'recruiter5@example.com');