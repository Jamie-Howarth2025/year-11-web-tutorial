<!DOCTYPE html>
<html>
<head>
    <title>suprise</title>
    <link rel="stylesheet" href="/static/style.css">
    <!-- Load the confetti library -->
    <script src="https://cdn.jsdelivr.net/npm/canvas-confetti@1.9.3/dist/confetti.browser.min.js"></script>
    
    <style>
        /* Center the GIF perfectly on the screen */
        .gif-container {
            display: none; /* Hidden by default */
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 9999; /* Ensures it sits on top of everything */
            pointer-events: none; /* Prevents the GIF from blocking clicks */
        }
        .gif-container img {
            max-width: 300px; /* Adjust size as needed */
            height: auto;
        }
    </style>
</head>
<body>
    <nav>
        <a href="/suprise">suprise</a>
        <a href="/suprise">suprise</a>
        <a href="/suprise">suprise</a>
    </nav>

    <h1>suprise</h1>
    <p>suprise</p>

    <!-- Fixed the space in triggerConfetti() -->
    <button onclick="triggerConfetti()" style="padding: 12px 24px; font-size: 16px; background-color: #4CAF50; color: white; border: none; border-radius: 5px; cursor: pointer;">
        Celebrate! 🎉
    </button>

    <!-- Container for your GIF -->
    <div id="gifContainer" class="gif-container">
        <!-- REPLACE the src URL below with your actual GIF link -->
        <img id="supriseGif" src="static/tripple T.jpg" alt="Surprise GIF">
    </div>

    <!-- Confetti Trigger Script -->
    <script>
        function triggerConfetti() {
            // 1. Trigger the confetti (Fixed internal spacing typos)
            confetti({
                particleCount: 8000, // Reduced from 15720 to prevent browser crash
                spread: 800,         // Normal spread range
                origin: { y: 0.6 }
            });

            // 2. Show the GIF container
            const gifContainer = document.getElementById('gifContainer');
            const gifImage = document.getElementById('supriseGif');
            
            // Reload the GIF so its animation starts from the beginning
            const currentSrc = gifImage.src;
            gifImage.src = '';
            gifImage.src = currentSrc;
            
            gifContainer.style.display = 'block';

            // 3. Optional: Hide the GIF again after 4 seconds
            setTimeout(() => {
                gifContainer.style.display = 'none';
            }, 4000); 
        }
    </script>
</body>
</html>