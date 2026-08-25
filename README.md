# README

## Gallery App
![Landing page](/app/assets/landing%20page.png)

## Summary

A basic Rails CRUD app for uploading, viewing, deleting and viewing picture files. Mobile-first designed.
Think Instagram, but relatively VERY basic with one database for multiple users.

## Tech Stack 

Ruby 3.4.2<br>
Rails 8<br>
Bootstrap 5<br>
Docker 29<br>
SQlite as default DB<br>
Deployed with Kamal to basic Hetzner server

## Description and Use

Site address: http://77.42.22.206

Landing page has a header, randomly generated photo, and username/password login. 
Below the login are additional links for new user and forgotten password. 

Logging in displays an array of images. Each image has a name, date of upload, and View, Replace, and Delete buttons. 
Clicking on the View goes to a page displaying a larger view of the image. 
Clicking on Replace allows replacement of the image, and Delete removes image from the database.

At the bottom of the image array are links to logout or upload a new image. 

For testing, use the following credentials to login:

Username: User1@example.com <br>
Password: User1


