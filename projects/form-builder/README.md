# Form Builder

This is a software allowing everyone to build forms.  
The software is composed by a backend and a frontend.  
The backend is a REST API, the frontend is a web-based application.  

You have to implement a form builder, that allows to create and edit forms, allowing to add and remove fields from them.  
Every field has a type, and every type has its own properties (Ex. a text field has a `maxLength` property, a select has an `options` property, and so on).  
Also, every field can have a set of validations, that are applied to the field value when the form is submitted (Ex. `required`, `regex` and so on).  
The back-end is based on a single page, showing a table with the list of forms, and a button to create a new form.  
The form builder is a modal, showing the form fields on the left, and the form preview on the right.
When the form is completed and saved, an API erndpoint should validate the form, and return the validation errors, if any.  
As per the front-end, we need a page showing the list of forms.  
Clicking on a form should show the form and allow the user to submit a new entry, applying the validations specified in the back-office.  
The form should be validated on the front-end, and the errors should be shown to the user.  
The form should be submitted via AJAX, and the response should be shown to the user.  

There should be some API endpoints for the back-end:
- `GET /forms` to get the list of forms
- `GET /forms/:id` to get a specific form
- `POST /forms` to create a new form
- `PUT /forms/:id` to update a form
- `DELETE /forms/:id` to delete a form

The same goes for the front-end:
- `GET /forms` to get the list of forms
- `GET /forms/:id` to get a specific form
- `PUT /forms/:id` to add a new submission to a form



# Requirements

1. MySQL / MariaDB should be available on the system (you can use Docker to simplify the setup)
2. A back-end language of choice (PHP, NodeJS, Python, Java, Go, Ruby, etc.)
3. A front-end framework of choice (VueJS, React, Angular, etc., or even plain JS)
4. Nothing should be hardcoded (Ex. the database credentials should be in a config file, not in the code)
5. PLUS: The REST Api should be documented using OpenAPI (Swagger)

# Instructions

An example schema can be found in the `database` folder.  
You can use it as a starting point, or you can create your own if you want to take a different approach (Ex. using a NoSQL database or going for JSON instead of a TEXT for the `data` field).  
The choice of using `TEXT` is purely based on compatibility, since not every database (Or version) supports `JSON` fields.  

# Documentation

This project is based on publicly available and widely known technologies and standards.  
Here is a list of useful links to get started with the project in case you miss knowledge on some of them:
- [OpenAPI](https://swagger.io/specification/) - The OpenAPI Specification (OAS) defines a standard, language-agnostic interface to RESTful APIs which allows both humans and computers to discover and understand the capabilities of the service without access to source code, documentation, or through network traffic inspection.  
- [MariaDB](https://mariadb.org/) - MariaDB is an open source relational database management system (DBMS) that is a compatible drop-in replacement for the widely used MySQL database technology.  
- [MySQL](https://www.mysql.com/) - MySQL is an open-source relational database management system (RDBMS). Its name is a combination of "My", the name of co-founder Michael Widenius's daughter, and "SQL", the abbreviation for Structured Query Language.  
- [Docker](https://www.docker.com/) - Docker is a set of platform as a service (PaaS) products that use OS-level virtualization to deliver software in packages called containers.  

# CREDITS

Michael Di Prisco [https://github.com/Cadienvan]