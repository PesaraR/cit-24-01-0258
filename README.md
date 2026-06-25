Name: Pesara
Registration Number: CIT-24-01-0258
Module: CCS3308 - Virtualization and Containers
Assignment 1

reqirements -
Docker
Ubuntu Linux
Git
GitHub

description- 
This application is a simple Notes Web Application.
Users can add notes through a web browser.
Notes are stored in MongoDB and remain available after containers are restarted.

Docker Network:
notes-network

Docker Volume:
mongo-data

containers - 
web     - Flask web application
mongo   - MongoDB database

instructions - 
./prepare-app.sh
./start-app.sh
./stop-app.sh
./remove-app.sh

Access - 
http://localhost:5000

