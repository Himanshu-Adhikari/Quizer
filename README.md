
# Quizer 

Quizer is a great way to assess one's aptitude skills. This project provides a platform where users can choose from three different genres to test their aptitude skills.


## Features

 - Three genres to choose from to test your aptitude skills.
 - Dynamic questions fetched from a local database.
 - Real-time results displayed after the test is submitted.


## TechStack
- Frontend: React , Vite
- Backend: Local server using XAMPP
- Database: MySQL (hosted on XAMPP)
The questions are fetched from a local database and displayed on the frontend, allowing for a smooth and interactive experience.
## Screenshots

- Landing Page
The landing page where users can choose the genre and activity for their aptitude test.

<img src="https://github.com/user-attachments/assets/9eea7e9d-5001-4110-a354-3fbd8faaf0f4" alt="Landing Page" width="300"/>

- Questions Page
Questions displayed after choosing the genre and activity.

<img src="https://github.com/user-attachments/assets/59b7456d-027e-4722-bdb0-be56a574b4fd" alt="Questions Page" width="300"/>

- Results Page
Image of how the results are shown after the test is submitted.

<img src="https://github.com/user-attachments/assets/16f27a18-d922-4a3d-8699-3a4a89ba891f" alt="Results Page" width="300"/>

- Local Database
Image of the local database where questions and user data are stored.

<img src="https://github.com/user-attachments/assets/9c55ad30-2bfd-4769-b008-551c04f7929b" alt="Local Database" width="300"/>


# How It Works

1. Choose Genre: Users start by choosing a genre and activity on the landing page.
2. Take the Test: Based on the selection, questions are fetched from the MySQL database and displayed.
3. Submit and View Results: Users submit their answers and immediately see their results.


## Steps to try by yourself

#### Get all items
1. Clone the repository
```
  git clone https://github.com/Himanshu-Adhikari/Quizer.git
  cd quizer
```

2. Set up the local server:

- Install XAMPP.
- Start Apache and MySQL services.

3. Set up the database
- Import the provided SQL file into your local MySQL database using phpMyAdmin or any MySQL client.
- Update the database configuration in the api folder where you will get fetchquestions.php code.

4. install fronend dependencies
```
npm create vite@latest
```

5. Run the Vite app and start XAMPP server and database
```
npm run dev
```
Now, you should be able to access the app in your browser and start testing your aptitude skills!


