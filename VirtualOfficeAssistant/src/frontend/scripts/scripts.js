function processUserInput() {
    const userInput = document.getElementById("userQuery").value;
    // Here, you can use JavaScript to send the user input to the backend for processing
    // and display the assistant's response in the "assistantResponse" div.
    // For this basic example, we are not implementing the backend interaction.
    document.getElementById("assistantResponse").innerText = "Assistant: " + userInput;
}
