// Function to handle the logout process
function logoutUser() {
    // Clear any saved user session (e.g., tokens, local storage)
    // For this example, we'll use localStorage to store a user token
    localStorage.removeItem("userToken");

    // Redirect the user back to the login page
    window.location.href = "login.html";
}

// Call the logoutUser function when the page loads
document.addEventListener("DOMContentLoaded", logoutUser);
