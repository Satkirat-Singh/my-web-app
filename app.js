document.addEventListener('DOMContentLoaded', function() {
    console.log('Web App loaded successfully');
    
    // Example dynamic content
    const welcomeMessage = document.createElement('p');
    welcomeMessage.textContent = 'Have a great day browsing through our application!';
    document.querySelector('main').appendChild(welcomeMessage);
});
