# README

# Shopify Internship Challenge
## Introduction
This repository is for the project submission for the Shopify Backend Intern Challenge. This project is built in Ruby on Rails and is designed to be an image repository that allows users to upload new images, edit previous uploads, and search images.

## Running the Project Running

This Project is hosted on heroku and can be tested at https://rocky-harbor-68416.herokuapp.com/

To setup and run the project locally, clone the repository using either of the following commands:

SSH: 

        > git clone git@github.com:KevJSDevelopment/Image-repo.gitrun 

HTTPS:

        > git clone https://github.com/KevJSDevelopment/Image-repo.git

Once you have cloned the repository, run the following commands: 

        > bundle

        > rails db:setup

        > rails db:migrate
        
        > rails s

## How to navigate the app
Once you land on the app you can start by uploading a new image. You can either drag and drop an image or click on the file field to select a file to upload. 

    *Note*
    - You must give your image a title to describe what you are uploading
    - You will only be able to upload image files(jpg, jpeg, png, gif)
    - File size limit of 4mb
    - You can upload 1 file at a time

As soon as you upload your image and return to the home page, go ahead and try to search images by their title. Type what you want to search then hit the search button to start your search. 

If you want to see all photos again, either click the "all photos" button or clear the search and hit the search button again.

