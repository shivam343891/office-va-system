function signUpUser() {
    const username = document.getElementById("username").value;
    const email = document.getElementById("email").value;
    const password = document.getElementById("password").value;
    const confirmPassword = document.getElementById("confirm-password").value;

    // Perform user registration logic here (e.g., store user data in a database)
    // For this example, we'll just check if the passwords match
    if (password !== confirmPassword) {
        alert("Passwords do not match. Please try again.");
        return false; // Prevent form submission
    }

    // Perform other validation checks, such as username availability, email format, etc.

    // If the user registration is successful, redirect to the login page (or any desired page)
    alert("Registration successful! You can now log in with your new account.");
    window.location.href = "login.html";
}