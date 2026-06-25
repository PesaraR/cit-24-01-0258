# CCS3308 - Virtualization and Containers

## Assignment 1

### Student Details

**Name:** Pesara

**Registration Number:** CIT-24-01-0258

---

## Deployment Requirements

* Docker
* Ubuntu Linux
* Git
* GitHub

---

## Application Description

This application is a simple Notes Web Application developed using Flask and MongoDB.

Users can add notes through a web browser. The notes are stored in a MongoDB database and remain available even after the containers are stopped and restarted because a persistent Docker volume is used.

---

## Network and Volume Details

### Docker Network

* notes-network

This network allows communication between the Flask web application container and the MongoDB container.

### Docker Volume

* mongo-data

This volume stores MongoDB data permanently and preserves notes even when containers are restarted.

---

## Container Configuration

### Web Container

* Image: Custom Flask Application
* Container Name: web
* Port Mapping: 5000:5000
* Network: notes-network
* Restart Policy: unless-stopped

### Database Container

* Image: MongoDB
* Container Name: mongo
* Port: 27017
* Network: notes-network
* Volume: mongo-data:/data/db
* Restart Policy: unless-stopped

---

## Container List

| Container | Role                  |
| --------- | --------------------- |
| web       | Flask Web Application |
| mongo     | MongoDB Database      |

---

## Instructions

### Prepare the Application

```bash
./prepare-app.sh
```

### Start the Application

```bash
./start-app.sh
```

### Stop the Application

```bash
./stop-app.sh
```

### Remove the Application

```bash
./remove-app.sh
```

---

## Accessing the Application

Open a web browser and visit:

http://localhost:5000

---

## Example Workflow

### Create application resources

```bash
./prepare-app.sh
```

Output:

```text
Preparing app...
Preparation complete.
```

### Start the application

```bash
./start-app.sh
```

Output:

```text
Starting application...
The app is available at:
http://localhost:5000
```

### Open a browser and use the Notes Application

### Stop the application

```bash
./stop-app.sh
```

Output:

```text
Stopping app...
Application stopped.
```

### Remove all application resources

```bash
./remove-app.sh
```

Output:

```text
Removed app.
```
