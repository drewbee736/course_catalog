So a little bit about this application.

First off, every user is displayed on the user page instead of just the user that is signed in.
Second off, a person can create a new user but it won't allow them to sign in. Only users created in the seeds.rb can sign in. However, when a person does create a new user it will add that user to the database.

If you would like to sign to see the application use the following information:
Name: Bob
Password: drew

Third, authentication does work. If you are not logged in and try to access /users, /subjects, /courses, or /instructors it will redirect you to the log in page.
