// Simulated user database (in a real app, this would be on the server)
const users = [
    {
        username: "admin",
        password: "password123"
    }
];

// Handle form submission
document.getElementById("loginForm").addEventListener("submit", function(event) {
    event.preventDefault(); // Prevent form from submitting

    // Get input values
    const username = document.getElementById("username").value;
    const password = document.getElementById("password").value;
    const errorMessage = document.getElementById("error-message");

    // Reset error message
    errorMessage.textContent = "";

    // Check credentials
    const user = users.find(u => u.username === username && u.password === password);

    if (user) {
        // Successful login
        alert("Login successful! Welcome, " + username);
        // Redirect or perform other actions (e.g., redirect to dashboard)
        // window.location.href = "/dashboard.html"; // Example redirect
    } else {
        // Failed login
        errorMessage.textContent = "Invalid username or password.";
    }
});
