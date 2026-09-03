<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NEXUS | Deployed by Mansoor</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;800&family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">
    
    <!-- Canvas Confetti Library for Firecracker Effect -->
    <script src="https://cdn.jsdelivr.net/npm/canvas-confetti@1.6.0/dist/confetti.browser.min.js"></script>

    <style>
        :root {
            --bg-color: #050505;
            --surface-color: #121212;
            --primary: #3b82f6;
            --secondary: #8b5cf6;
            --accent: #06b6d4;
            --text-main: #ffffff;
            --text-muted: #9ca3af;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background-color: var(--bg-color);
            color: var(--text-main);
            overflow-x: hidden;
            background-image: 
                radial-gradient(circle at 15% 50%, rgba(59, 130, 246, 0.15), transparent 25%),
                radial-gradient(circle at 85% 30%, rgba(139, 92, 246, 0.15), transparent 25%);
            background-attachment: fixed;
        }

        /* --- Custom Grid Background --- */
        body::before {
            content: '';
            position: fixed;
            top: 0; left: 0; right: 0; bottom: 0;
            background-image: linear-gradient(rgba(255, 255, 255, 0.03) 1px, transparent 1px),
                              linear-gradient(90deg, rgba(255, 255, 255, 0.03) 1px, transparent 1px);
            background-size: 40px 40px;
            z-index: -1;
            pointer-events: none;
        }

        /* --- Navigation --- */
        header {
            padding: 24px 5%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid rgba(255,255,255,0.05);
            backdrop-filter: blur(10px);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .logo {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 28px;
            font-weight: 700;
            letter-spacing: -1px;
            background: linear-gradient(to right, var(--primary), var(--accent));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        nav a {
            color: var(--text-muted);
            text-decoration: none;
            margin-left: 32px;
            font-weight: 600;
            font-size: 14px;
            transition: color 0.3s;
        }

        nav a:hover {
            color: var(--text-main);
        }

        /* --- Hero Section --- */
        .hero {
            text-align: center;
            padding: 120px 20px;
            max-width: 900px;
            margin: 0 auto;
        }

        .hero h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: clamp(3rem, 8vw, 5.5rem);
            line-height: 1.1;
            margin-bottom: 24px;
            font-weight: 700;
        }

        .text-gradient {
            background: linear-gradient(135deg, var(--primary), var(--secondary), var(--accent));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-size: 200% auto;
            animation: shine 5s linear infinite;
        }

        @keyframes shine {
            to { background-position: 200% center; }
        }

        .hero p {
            font-size: 1.2rem;
            color: var(--text-muted);
            margin-bottom: 40px;
            line-height: 1.6;
        }

        .btn {
            padding: 16px 36px;
            font-size: 16px;
            font-weight: 600;
            border-radius: 50px;
            border: none;
            cursor: pointer;
            transition: transform 0.3s, box-shadow 0.3s;
            font-family: 'Inter', sans-serif;
        }

        .btn-primary {
            background: linear-gradient(45deg, var(--primary), var(--secondary));
            color: white;
            box-shadow: 0 10px 30px -10px rgba(139, 92, 246, 0.5);
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 40px -10px rgba(139, 92, 246, 0.7);
        }

        /* --- Cards Section --- */
        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 24px;
            padding: 40px 5%;
            max-width: 1200px;
            margin: 0 auto 100px auto;
        }

        .card {
            background: rgba(255, 255, 255, 0.03);
            border: 1px solid rgba(255, 255, 255, 0.05);
            padding: 40px;
            border-radius: 24px;
            transition: background 0.3s, transform 0.3s;
        }

        .card:hover {
            background: rgba(255, 255, 255, 0.05);
            transform: translateY(-5px);
            border-color: rgba(255, 255, 255, 0.1);
        }

        .card h3 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 24px;
            margin-bottom: 16px;
        }

        .card p {
            color: var(--text-muted);
            line-height: 1.6;
        }

        /* --- POPUP STYLES --- */
        .popup-overlay {
            position: fixed;
            top: 0; left: 0; right: 0; bottom: 0;
            background: rgba(0, 0, 0, 0.8);
            backdrop-filter: blur(8px);
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 9999;
            opacity: 0;
            visibility: hidden;
            transition: opacity 0.4s ease, visibility 0.4s ease;
        }

        .popup-overlay.active {
            opacity: 1;
            visibility: visible;
        }

        .popup-content {
            background: #111;
            border: 1px solid rgba(255,255,255,0.1);
            padding: 50px 40px;
            border-radius: 24px;
            text-align: center;
            max-width: 450px;
            width: 90%;
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5), 0 0 40px rgba(59, 130, 246, 0.2);
            transform: scale(0.9);
            transition: transform 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            position: relative;
            overflow: hidden;
        }

        .popup-overlay.active .popup-content {
            transform: scale(1);
        }

        .popup-content::before {
            content: '';
            position: absolute;
            top: 0; left: 0; right: 0; height: 4px;
            background: linear-gradient(90deg, var(--primary), var(--secondary), var(--accent));
        }

        .popup-icon {
            font-size: 48px;
            margin-bottom: 20px;
        }

        .popup-content h2 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 28px;
            margin-bottom: 12px;
        }

        .popup-content p {
            color: var(--text-muted);
            font-size: 18px;
            margin-bottom: 30px;
            line-height: 1.5;
        }

        .popup-content strong {
            color: #fff;
            font-weight: 800;
            background: linear-gradient(90deg, #38bdf8, #818cf8);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            font-size: 22px;
        }

        .popup-btn {
            background: #fff;
            color: #000;
            padding: 14px 30px;
            border-radius: 12px;
            font-weight: 700;
            border: none;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            transition: transform 0.2s, background 0.2s;
        }

        .popup-btn:hover {
            background: #e2e8f0;
            transform: scale(1.02);
        }
    </style>
</head>
<body>

    <!-- Header -->
    <header>
        <div class="logo">NEXUS</div>
        <nav>
            <a href="#">Platform</a>
            <a href="#">Solutions</a>
            <a href="#">Documentation</a>
        </nav>
    </header>

    <!-- Main Hero -->
    <main class="hero">
        <h1>Building the <span class="text-gradient">Next Generation</span> of Web Infrastructure</h1>
        <p>Deploy faster, scale effortlessly, and manage your entire ecosystem from a single, blazing-fast command center engineered for the future.</p>
        <button class="btn btn-primary" onclick="showPopupAndFireworks()">Initialize System</button>
    </main>

    <!-- Features -->
    <section class="features">
        <div class="card">
            <h3>⚡ Lightning Fast</h3>
            <p>Optimized at the edge to deliver your content to users in milliseconds, no matter where they are located.</p>
        </div>
        <div class="card">
            <h3>🔒 Secure Core</h3>
            <p>Enterprise-grade security built directly into the fabric of your infrastructure with zero-trust architecture.</p>
        </div>
        <div class="card">
            <h3>📈 Infinite Scale</h3>
            <p>Serverless computing that automatically scales from zero to millions of requests without manual intervention.</p>
        </div>
    </section>

    <!-- The Popup Modal -->
    <div class="popup-overlay" id="deployPopup">
        <div class="popup-content">
            <div class="popup-icon">🚀</div>
            <h2>Deployment Successful!</h2>
            <p>This environment is deployed by <br><strong>MANSOOR</strong></p>
            <button class="popup-btn" onclick="closePopup()">Acknowledge</button>
        </div>
    </div>

    <!-- Script for Logic and Fireworks -->
    <script>
        const popup = document.getElementById('deployPopup');
        let fireworksInterval;

        // Show popup automatically on load
        window.onload = () => {
            setTimeout(showPopupAndFireworks, 500);
        };

        function showPopupAndFireworks() {
            // Show the popup
            popup.classList.add('active');
            
            // Start the firecrackers/fireworks effect
            startFireworks();
        }

        function closePopup() {
            // Hide the popup
            popup.classList.remove('active');
            
            // Stop the fireworks after a brief delay
            setTimeout(() => {
                clearInterval(fireworksInterval);
            }, 1000);
        }

        function startFireworks() {
            const duration = 15 * 1000; // 15 seconds of fireworks
            const animationEnd = Date.now() + duration;
            const defaults = { startVelocity: 30, spread: 360, ticks: 60, zIndex: 10000 };

            function randomInRange(min, max) {
                return Math.random() * (max - min) + min;
            }

            // Clear any existing interval to prevent overlapping
            if(fireworksInterval) clearInterval(fireworksInterval);

            fireworksInterval = setInterval(function() {
                const timeLeft = animationEnd - Date.now();

                if (timeLeft <= 0) {
                    return clearInterval(fireworksInterval);
                }

                const particleCount = 50 * (timeLeft / duration);
                
                // Fire from two random sources to simulate firecrackers
                confetti(Object.assign({}, defaults, { 
                    particleCount,
                    origin: { x: randomInRange(0.1, 0.3), y: Math.random() - 0.2 }
                }));
                confetti(Object.assign({}, defaults, { 
                    particleCount,
                    origin: { x: randomInRange(0.7, 0.9), y: Math.random() - 0.2 }
                }));
            }, 250); // Fires every 250ms
        }
    </script>
</body>
</html>
