# Airbnb Database Management System

## Project Overview

This project is a comprehensive database management system (DBMS) designed for an Airbnb-like rental platform. It enables users to list properties, make bookings, leave reviews, and manage transactions. This database is optimized for efficient data retrieval and supports key functionalities such as user management, booking processes, reviews, payment handling, and maintenance scheduling. 

The database is built to maintain data integrity, support streamlined operations, and provide a reliable foundation for further platform development.

## Key Functionalities

- **User Management**  
  - **Admin**: Manages roles, listings, bookings, payments, and disputes. Can generate activity reports and perform maintenance tasks.
  - **Host**: Can list and manage properties, set prices and availability, and communicate with guests. Hosts can also manage guest reviews and profile information.
  - **Guest**: Can browse listings, make bookings, communicate with hosts, and leave reviews and ratings.
  - **Messaging**: Hosts and guests can communicate through a messaging system to coordinate booking details and resolve questions.

- **Listings and Bookings**  
  - Hosts can create and update property listings with titles, descriptions, prices, availability, and amenities.
  - Guests can view available properties, book listings, and make payments. The system automatically updates property availability.

- **Review and Rating System**  
  - Guests can leave reviews and ratings for hosts and properties, enhancing platform credibility.

- **Payment and Transaction Management**  
  - Secure transactions support bookings, refunds, and status tracking. Discount codes (via the `Coupon` table) are available for certain bookings.

- **Admin Controls**  
  - Admins oversee listings, handle disputes, monitor platform activity, and generate reports.

- **Maintenance Management**  
  - Hosts and admins can schedule maintenance for listings, update status, and notify guests.

## Database Structure

- **Tables**: The database includes 21 tables, including key tables like `User`, `Listing`, `Booking`, `Payment`, `Message`, `Review`, and `Coupon`. Each table is defined with specific data types, constraints, and primary/foreign key relationships to ensure data accuracy.
- **Relationships**: Foreign keys establish relationships across the tables. Example relationships:
  - **User Roles**: Links between users and their specific roles (Admin, Host, Guest).
  - **Bookings and Listings**: Each booking is associated with a listing and includes guest, host, and payment details.
  - **Reviews**: Guests leave reviews for properties they have stayed at.
- **ER Diagram**: The Entity-Relationship Diagram (ERD) visualizes the entities and relationships, making it easier to understand data flow and interactions.

## Database Content

- **Sample Data**: Each table is populated with at least 20 records to enable thorough testing.
- **Volume**: The database is structured for efficient querying and indexing, supporting large-scale data operations.

## SQL Documentation and Sample Queries

- **Table Definitions**: SQL commands define each table with appropriate data types, constraints, and relationships.
- **Sample Queries**:
  - Retrieve user roles and details
  - Show listings by city
  - Display booking and payment statuses
  - View review histories
- **Test Cases**: Each functionality has associated test cases that validate successful operation, such as booking and review linkage verification.

## Project Files

- **ER Diagram**: The Entity-Relationship Model (ERM) diagram provides a visual representation of the database structure, showing entities and their relationships to aid in understanding data flow.
- **SQL File**: Contains all SQL scripts for creating tables, defining relationships, and inserting initial data for testing.
- **Phase 2 - PPT**: A presentation outlining the database structure, core functionalities, ER diagram, and testing processes, showcasing the system’s capabilities.
- **Abstract**: A concise overview of the project goals, key functionalities, and technical details.
- **Phase 1 - PDF**: Detailed documentation covering the initial design phase, including a breakdown of the core functionalities and structure that laid the foundation for further development.
- **Screenshots**: Visuals from key phases, including the ER diagram and query results, are provided for reference.

## Getting Started

1. **Setup**: Clone this repository and import the SQL files into your database.
2. **Database Creation**: Run the provided SQL scripts to create tables, insert sample data, and establish relationships.
3. **Testing**: Run sample queries and test cases to validate the setup and ensure the functionality of the database.

## Conclusion

This DBMS provides a robust and efficient foundation for an Airbnb-like platform. Through comprehensive user management, booking, review, and transaction handling, the system supports a seamless experience for both hosts and guests. Its scalable design ensures that it can handle significant data volumes, enabling real-time communication, secure transactions, and robust data retrieval. 
