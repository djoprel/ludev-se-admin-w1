Description: the backEnd contains all the files that are necessary to set up
the back end which is used to handle communication between the front end and 
the database. 

requirements before running the backEnd:
- make sure you have installed both npm and yarn. 
- set up a database which can be used by the backEnd.
	To set up the database, a file named DatabaseDesign.sql has been
	added to the backEnd folder. This file can be run as a query to
	properly set up all the tables of the database. The design is intended
	to be used with a MySQL server but might work with other relational 
	databases as well. When setting up the database, keep some security 
	measures in mind. It is only necessary for the back end to be able
	to make requests to the database, so restrict access to the database
	to the ip-adress of the back-end server. Furthermore, it is highly 
	recommended to create a account for the database with restricted access 
	to the SoftwareEngineering table. 
- Set up the link between the database and the back end server.
	In the backEnd folder, there is a file called config.mjs. 
	Within this file are all the settings that should be set up
	to be able to make a connection between the database and 
	the back end. Be sure to set up this configuration with the
	right values for the database. Furthermore, the config.mjs file needs
	envoirmental variables to work. These environmental variables should be
	put in a file called config.env in key-value pair format. This file should
	be at the same directory level as config.mjs. Within the directory there is
	a file called config.env.example which can be used as a template for
	this file. Note that it might not be desirable to use this method
	for storing sensitive configuration settings when going in production.

to run the back end, please follow the next steps:
1. open the backEnd directory in the terminal
2. Type "yarn"
3. type "yarn dev" in your terminal 

You are all set now, the front-end will automatically make the right calls to
The back end. If necessary the back end will make calls to the database and the
Back end will return the requested data to the front end. 
