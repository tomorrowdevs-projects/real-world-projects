# Form Builder - BACKEND SIDE

The back-end side of this project is a simple page talking with a REST API.  
The page shows a table with the list of forms, and a button to create a new form.  
The table should allow the user to edit and delete existing forms.  
The form builder is a modal, showing the form fields on the left, and the form preview on the right.  
When the form is completed and saved, an API endpoint should validate the form, and return the validation errors, if any.

# Requirements

1. Look at the `database` folder for the database schema example.
2. A back-end language of choice (PHP, NodeJS, Python, Java, Go, Ruby, etc.)
3. Nothing should be hardcoded (Ex. the API endpoints should be in a config file, not in the code)
4. A templating library for the back-end language of choice (Ex. Twig or Blade for PHP, etc.). This isn't strictly required, but it's a good practice to separate the logic from the presentation.
5. PLUS: The table should allow the user to have a look at the form submissions, and to download them as CSV. The CSV should contain the form fields as columns, and the submissions as rows. You should prevent the form edit if there are submissions for that form to not break the CSV export.