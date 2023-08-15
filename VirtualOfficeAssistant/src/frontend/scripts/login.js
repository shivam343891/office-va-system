function authenticateUser(event) {
    event.preventDefault(); // Prevent the default form submission behavior

    const username = document.getElementById("username").value;
    const password = document.getElementById("password").value;

    // Perform authentication logic here (e.g., check credentials against a database)
    if (username === "employee" && password === "password123") {
        // If it's an employee, redirect to index.html
        window.location.replace("index.html");
    } else if (username === "admin" && password === "adminpass") {
        // If it's an admin, redirect to the database_controls.html
        window.location.replace("database_controls.html");
    } else {
        // If not validated, show an error message or deny access
        alert("Invalid username or password. Please try again.");
    }
}

// Add event listener to the form submission
const loginForm = document.getElementById("login-form");
loginForm.addEventListener("submit", authenticateUser);