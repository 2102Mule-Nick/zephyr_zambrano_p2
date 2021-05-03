# zephyr_zambrano_p2

## Project Description

Project 2 for Revature training. Flights API built with Anypoint Platform and MuleSoft.

## Technologies Used

* Anypoint Studio - Version 7.9
* Anypoint Platform
* Advanced REST Client (ARC)
* Local PostgreSQL Database
* DBeaver - Version 21.0.0
* PostgreSQL Driver - Version 42.2.20
* pgAdmin - Version 4

## Features

List of features ready
* RAML specification (published on Anypoint Exchange, but also included in the `flights-api-1.0.0-raml` folder)
* Create a new flight
* Get all flights
* Get flight by ID
* Update a flight by ID
* Delete a flight by ID
* `config.yaml` in `src/main/resources` in project `flights` to parameterize global variables
* Error handling

To-do list:
* Flight destionation as a query parameter (Example: http://localhost:8081/flights?destionation=CLE)
* Access to API managed by proxy with SLA Tiers (access API with Client ID and Client Secret)
* Deploying and running the application on CloudHub
* More error handling
* Testing
* Best practices (global variables and error handling in their own Mule Configuration files; global variables following correct naming convention)

## Getting Started

### Git Clone Command

`$ git clone https://github.com/2102Mule-Nick/zephyr_zambrano_p2.git`

### Database Setup

Create a new database project in DBeaver with a connection to a PostgreSQL database named `flights-database`. Sign in with your local PostgreSQL username and password that you created when installing PostgreSQL. You will have to create a database named `flights-database` in pgAdmin in order for the connection to work.

Create a new schema named `flights`.

Add `flights-database-script.sql` to the "Scripts" folder in your database project. Run `flights-database-script.sql` to create and populate the table.

### Anypoint Studio

Import project `flights` into Anypoint Studio (the folder containing the project has the same name).

Open the `config.yaml` file, located in `src/main/resources`. Change the values inside the quotes on lines 26 and 27 to reflect your local PostgreSQL username and password that you created when installing PostgreSQL.

## Usage

In order to test the program, you will be using Advanced REST Client (ARC).

Run project "flights" in Anypoint Studio, and then switch to ARC to submit the below requests

### http://localhost:8081/flights (GET)
Returns an array of all the flights in the database.

### http://localhost:8081/flights (POST)
Adds a new flight to the database.

Body content type: application/json

Body (feel free to change the values)
{
    "code": "ER38sd",
    "price": 400,
    "departureDate": "2017/07/26",
    "origin": "CLE",
    "destination": "SFO",
    "emptySeats": 0,
    "plane": {
        "type": "Boeing 737",
        "totalSeats": 150
    }
}

Success
{
    "message": "Flight added"
}

### http://localhost:8081/flights/{ID} (GET)
Retrieves the flight with that specific ID from the database if it exists.

### http://localhost:8081/flights/{ID} (PUT)
Updates the flight with the specified ID in the database if it exists.

Body content type: application/json

Body (feel free to change the values)
{
    "code": "ER38sd",
    "price": 400,
    "departureDate": "2017/07/26",
    "origin": "CLE",
    "destination": "SFO",
    "emptySeats": 0,
    "plane": {
        "type": "Boeing 737",
        "totalSeats": 150
    }
}

Success
{
    "message": "Flight updated"
}

### http://localhost:8081/flights/{ID} (DELETE)
Deletes the flight with the specified ID in the database if it exists.

Success
{
    "message": "Flight deleted"
}