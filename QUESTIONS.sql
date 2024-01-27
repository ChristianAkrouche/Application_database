-- Q1: Retrieve the email addresses of applicants who have not received any feedback.
SELECT A.APEMAIL
FROM APPLICANT A
LEFT JOIN FEEDBACK F ON A.APEMAIL = F.APEMAIL
WHERE F.APEMAIL IS NULL;



--Q2: Find the recruiters who have made job offers with salaries greater than the average salary offered by all recruiters.
SELECT R.REMAIL, R.RNAME
FROM RECRUITER R
JOIN OFFERS O ON R.REMAIL = O.REMAIL
WHERE O.SALARY > (SELECT AVG(SALARY) FROM OFFERS);

--Q3: Count the number of applications for each job offer.
SELECT JID, COUNT(*) AS NumberOfApplications FROM APPLICATION GROUP BY JID;


--Q4: Find the top 3 locations with the highest number of applications.
SELECT TOP 3 J.JLOCATION, COUNT(A.JID) AS NumApplications
FROM APPLICATION A
JOIN OFFERS J ON A.JID = J.JID
GROUP BY J.JLOCATION
ORDER BY NumApplications DESC

--Q5: Retrieve the applicants who have applied for positions in locations different from their current location.
SELECT A.APEMAIL, A.APLOCATION, O.JLOCATION
FROM APPLICANT A
JOIN APPLICATION AP ON A.APEMAIL = AP.APEMAIL
JOIN OFFERS O ON AP.JID = O.JID
WHERE A.APLOCATION <> O.JLOCATION;

--Q6:  Retrieve the top 4 most common job locations.
SELECT TOP 4 JLOCATION, COUNT(JID) AS LocationCount
FROM OFFERS
GROUP BY JLOCATION
ORDER BY LocationCount DESC

--Q7: List the job offers along with their descriptions and salaries, ordered by salary in descending order.
SELECT JID, JDESCRIPTION, SALARY
FROM OFFERS
ORDER BY SALARY DESC;

--Q8: Find the administrators who have reviewed feedback for the same applicant more than once.
SELECT FR.ADEMAIL, COUNT(*) AS ReviewCount
FROM FEEDBACK_REVIEWS FR
GROUP BY FR.ADEMAIL, FR.APEMAIL
HAVING COUNT(*) > 1;

--Q9: Retrieve recruiters along with the total number of job offers they have made and the average salary of those offers.
--Display only recruiters who have made more than 3 job offers.
SELECT R.REMAIL, R.RNAME, COUNT(O.JID) AS TotalJobOffers, AVG(O.SALARY) AS AvgSalary
FROM RECRUITER R
LEFT JOIN OFFERS O ON R.REMAIL = O.REMAIL
GROUP BY R.REMAIL, R.RNAME
HAVING COUNT(O.JID) > 3;

--Q10:Retrieve the email addresses and names of administrators in alphabetical order.
SELECT ADEMAIL, ADFNAME, ADLNAME
FROM ADMINISTRATOR
ORDER BY ADFNAME, ADLNAME;

