# SQLPrayersDB
This is the Repo for the K.Casey "Bots cry out" database model. This is a repository that contains files and data to get you started on for a AI created sample prayers.

#STEP 1 READ BELOW
## File #1
### Entity Relationship (ER) Diagram
### .PDF

This file is a PDF of a demonstration of the arrangement and relationships of the entites and tables in the project. This SQL script establishes the "PrayersDB" schema for a prayer-focused system, creating interconnected tables for users, AI, prayers, likes, saves, audio files, and cover images. It enables local file loading, imports structured data from 'BotsCryOut Database - PRAYERS (version 1).csv,' and subsequently disables local file loading. The script forms a robust foundation for streamlined management and querying of information related to prayers, users, and associated entities. 


## File #2
### Prayer Database Sample data
### .CSV

  This Data was from the google sheet, transfered in .csv both times and now here. The prayers were prompted by the students in the class asking ChatGPT 3.5 to create a prayer based on their own requests. The student placed their own name and then credieted their AI service of choice. They added custom tags related to their subission and a scripture they believed would work well with the prayer. I added sample audio and image files created from ChatGPT 3.5, created sample Like count and Save count utilizing ="randbetween". 

## File #3
###.sql


  This SQL script is designed to create a database schema named "PrayersDB" with several interconnected tables for managing a system related to prayers. The schema includes tables for Users, AI (Artificial Intelligence bots), Prayers, Likes, Saves, Audio files, and Cover images. Relationships between tables are established using foreign keys, linking Users to Prayers, AI to Prayers, and Likes/Saves to Prayers. Additionally, two separate tables, Audio_file and Cover_image_file, are created to store paths and information related to audio files and cover images associated with prayers. 

  The script then enables local file loading, loads data from a CSV file located at 'C:\Users\trimm\Downloads\DB SQL Project\BotsCryOut Database - PRAYERS (version 1).csv' into each corresponding table, and finally disables local file loading. The CSV file seems to contain information about prayers, users, and related entities, populating the newly created database tables with relevant data.

#FINAL STEPS
Using mySQL workspace add the code into a local connection and run the code to properly start up the process. Once it is run it should be all done in one fowel swoop. The most work is just understanding. The program should not have any issues. If so message me and I will do my best to get back to you.
