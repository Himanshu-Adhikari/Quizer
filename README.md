Quizer
Quizer is a great way to assess one's aptitude skills. This project provides a platform where users can choose from three different genres to test their aptitude skills.

Features
Three genres to choose from to test your aptitude skills.
Dynamic questions fetched from a local database.
Real-time results displayed after the test is submitted.
Tech Stack
Frontend: React
Backend: Local server using XAMPP
Database: MySQL (hosted on XAMPP)
The questions are fetched from a local database and displayed on the frontend, allowing for a smooth and interactive experience.

Screenshots
Landing Page
The landing page where users can choose the genre and activity for their aptitude test.

<img src="https://github.com/user-attachments/assets/9eea7e9d-5001-4110-a354-3fbd8faaf0f4" alt="Landing Page" width="300"/>
Questions Page
Questions displayed after choosing the genre and activity.



Results Page
Image of how the results are shown after the test is submitted.



Local Database
Image of the local database where questions and user data are stored.



How It Works
Choose Genre: Users start by choosing a genre and activity on the landing page.
Take the Test: Based on the selection, questions are fetched from the MySQL database and displayed.
Submit and View Results: Users submit their answers and immediately see their results.
Getting Started
To run this project locally, follow these steps:

Clone the repository:

sh
Copy code
git clone https://github.com/your-repo/quizer.git
cd quizer
Set up the local server:

Install XAMPP.
Start Apache and MySQL services.
Set up the database:

Import the provided SQL file into your local MySQL database using phpMyAdmin or any MySQL client.
Update the database configuration in the backend code.
Install frontend dependencies:

sh
Copy code
cd frontend
npm install
Run the React app:

sh
Copy code
npm start
Now, you should be able to access the app in your browser and start testing your aptitude skills!

Feel free to replace any placeholder URLs or text with the actual content specific to your project.
