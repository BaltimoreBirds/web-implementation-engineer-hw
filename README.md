# Web Implementation Engineering Homework

## Instructions

Please clone this repository and deliver your solutions in an archive format of your choice (e.g. zip or tarball), including the entire contents of this repo along with your answers.
 _Do not submit your solution via pull request to this repository._


## Questions

1. Download http://www.google-analytics.com/ga.js to a file named ga_local.js on your machine.
   1. How did you accomplish this?
   1. This file is full of a lot of gibberish. Are there more instances of the character a or g? How many of each? How did you determine this?
   1. Google has sensibly chosen size over readability for this file. Suppose that for your local copy, however, you wanted to rename the variables a, b, c, and g to apple, banana, carrot, and grapefruit. How would you do this?


1. Use the HTML and CSS files in the src folder for the following tasks. Make changes to the HTML and CSS files as needed. Attach your modified versions of the code with your answer sheet when returning it to Opower.
   1. The HTML file doesn’t have any styling right now. Add a snippet of code to navigation.html to load the style.css file.
   1. The navigation is boring. Add one or two subnavigation tabs below the active tab which appear only when you hover over the main tab. Change the HTML or CSS files as needed.
   1. There are some bits of CSS that are currently unused between these two files. How would you find this unused code? And can you identify the who made the commit?
   1. Opower likes to use SCSS to organize our styling. Optimize the CSS by converting it to SCSS and taking advantage of some of the SCSS features. Note: Since SCSS needs to be compiled before being used in HTML, don’t worry about the link you added to load style.css not working anymore.


1. APIs are awesome for exchanging data, but when things go wrong, we need to dig into where the communication broke down. Most of the time, our first alert of an error is an HTTP status code.
   1. Imagine you receive an email from the client saying they hit our API and received a 401 Unauthorized. What would be your approach or recommendations to the client to debug their issue?
   1. How does your approach change if the error they received was a 500 Internal Error?
   1. Assume the root cause for one of these was that the client sent parameters in a GET request instead of a POST. Explain how these are different and why this would cause issues.


4. Write standard SQL syntax that will create a ‘users’ table, including indexes, with the following structure:

   ```
   id (integer, primary key)
   username (string)
   email (string)
   signup_date (date)
   ```

   1. Imagine that this table does not enforce uniqueness on username. An application that uses this table has allowed the table to be “corrupted” by allowing multiple users to sign up with the same username. Write SQL that would generate a list of the usernames and the most recent signup_date for that username, for all usernames that have multiple instances in the table.
   1. Write SQL that will generate a list of unique email addresses for all the usernames returned in (i)
   1. Imagine your schema includes a second table ‘user_actions’ that contains a ‘user_id’ column that is a foreign key to the ‘users.id’ column. Write SQL that will return the usernames and emails for all users in the ‘users’ tables that have no rows in the ‘user_actions’ table.
   1. Imagine your “corrupted” table has magically been cleaned such that no username exists on multiple rows in the table. Write SQL that will modify the structure of the table that will enforce that the multiple username scenario cannot reoccur.


1. For the two endpoints https://api.github.com/users/opower/repo and https://api.github.com/users/opower/repos
   1. What are the returned status codes for both? And which is the valid one?
   1. Github's API by default is limited to 30 items being returned. Using the github API docs (found here https://developer.github.com/v3/) how would you increase the number of items returned by the valid endpoint?
   1. Using this parameter is it possible to get 200 repos returned in one API call? What can you do to have all repos returned
   1. Create an algorithm to parse out the names returned for all repos
