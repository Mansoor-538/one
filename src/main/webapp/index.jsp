<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NEXUS | Deployed by Mansoor</title>
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">
    
    <!-- Canvas Confetti Library -->
    <script src="https://cdn.jsdelivr.net/npm/canvas-confetti@1.6.0/dist/confetti.browser.min.js"></script>

    <style>
        :root {
            --bg-color: #030014;
            --primary: #818cf8;
            --secondary: #c084fc;
            --accent: #2dd4bf;
            --text-main: #f8fafc;
            --text-muted: #94a3b8;
            --glass-bg: rgba(255, 255, 255, 0.03);
            --glass-border: rgba(255, 255, 255, 0.08);
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
            min-height: 100vh;
        }

        /* --- Aesthetic Aurora Background --- */
        .aurora-container {
            position: fixed;
            top: 0; left: 0; width: 100vw; height: 100vh;
            z-index: -2;
            overflow: hidden;
            background: var(--bg-color);
        }

        .aurora {
            position: absolute;
            border-radius: 50%;
            filter: blur(120px);
            opacity: 0.4;
            animation: float 20s infinite alternate ease-in-out;
        }

        .aurora-1 {
            background: var(--primary);
            width: 50vw; height: 50vw;
            top: -10%; left: -10%;
        }

        .aurora-2 {
            background: var(--secondary);
            width: 40vw; height: 40vw;
            bottom: -10%; right: -5%;
            animation-delay: -5s;
        }

        .aurora-3 {
            background: var(--accent);
            width: 30vw; height: 30vw;
            top: 40%; left: 40%;
            opacity: 0.2;
            animation-delay: -10s;
        }

        @keyframes float {
            0% { transform: translate(0, 0) scale(1); }
            100% { transform: translate(5%, 10%) scale(1.2); }
        }

        /* --- Noise/Grid Overlay --- */
        .grid-overlay {
            position: fixed;
            top: 0; left: 0; width: 100%; height: 100%;
            background-image: linear-gradient(rgba(255, 255, 255, 0.02) 1px, transparent 1px),
                              linear-gradient(90deg, rgba(255, 255, 255, 0.02) 1px, transparent 1px);
            background-size: 50px 50px;
            z-index: -1;
            pointer-events: none;
            mask-image: radial-gradient(circle at center, black 40%, transparent 100%);
            -webkit-mask-image: radial-gradient(circle at center, black 40%, transparent 100%);
        }

        /* --- Navigation (Glassmorphism) --- */
        header {
            padding: 20px 5%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: rgba(3, 0, 20, 0.5);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border-bottom: 1px solid var(--glass-border);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .logo {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 24px;
            font-weight: 700;
            letter-spacing: -0.5px;
            color: white;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        
        .logo span {
            color: var(--accent);
        }

        nav a {
            color: var(--text-muted);
            text-decoration: none;
            margin-left: 40px;
            font-weight: 500;
            font-size: 14px;
            transition: color 0.3s, text-shadow 0.3s;
        }

        nav a:hover {
            color: var(--text-main);
            text-shadow: 0 0 10px rgba(255,255,255,0.3);
        }

        /* --- Entrance Animations --- */
        .fade-in-up {
            opacity: 0;
            transform: translateY(30px);
            animation: fadeInUp 1s cubic-bezier(0.2, 0.8, 0.2, 1) forwards;
        }

        .delay-1 { animation-delay: 0.2s; }
        .delay-2 { animation-delay: 0.4s; }
        .delay-3 { animation-delay: 0.6s; }

        @keyframes fadeInUp {
            to { opacity: 1; transform: translateY(0); }
        }

        /* --- Hero Section --- */
        .hero {
            text-align: center;
            padding: 140px 20px 100px;
            max-width: 900px;
            margin: 0 auto;
            position: relative;
        }

        .deploy-badge {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            background: rgba(129, 140, 248, 0.1);
            border: 1px solid rgba(129, 140, 248, 0.2);
            padding: 8px 16px;
            border-radius: 50px;
            font-size: 13px;
            font-weight: 500;
            color: #e0e7ff;
            margin-bottom: 30px;
            backdrop-filter: blur(10px);
            box-shadow: 0 0 20px rgba(129, 140, 248, 0.15);
        }

        .deploy-badge strong {
            color: #fff;
            letter-spacing: 1px;
        }

        .pulse {
            width: 6px;
            height: 6px;
            background: var(--accent);
            border-radius: 50%;
            box-shadow: 0 0 10px var(--accent);
            animation: pulse-anim 2s infinite;
        }

        @keyframes pulse-anim {
            0% { transform: scale(1); opacity: 1; }
            50% { transform: scale(1.5); opacity: 0.5; }
            100% { transform: scale(1); opacity: 1; }
        }

        .hero h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: clamp(3.5rem, 8vw, 6rem);
            line-height: 1.05;
            margin-bottom: 24px;
            font-weight: 700;
            letter-spacing: -2px;
        }

        .text-gradient {
            background: linear-gradient(135deg, #fff 0%, var(--text-muted) 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        
        .text-accent {
            background: linear-gradient(135deg, var(--primary), var(--secondary));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero p {
            font-size: 1.15rem;
            color: var(--text-muted);
            margin-bottom: 48px;
            line-height: 1.7;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        /* --- Aesthetic Button --- */
        .btn-glow {
            position: relative;
            padding: 16px 40px;
            font-size: 15px;
            font-weight: 500;
            color: white;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 50px;
            cursor: pointer;
            transition: all 0.4s ease;
            backdrop-filter: blur(10px);
            overflow: hidden;
            font-family: 'Inter', sans-serif;
        }

        .btn-glow::before {
            content: '';
            position: absolute;
            top: 0; left: -100%; width: 100%; height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255,255,255,0.1), transparent);
            transition: left 0.5s ease;
        }

        .btn-glow:hover {
            background: rgba(255, 255, 255, 0.1);
            border-color: rgba(255, 255, 255, 0.3);
            box-shadow: 0 0 30px rgba(129, 140, 248, 0.3);
            transform: translateY(-2px);
        }

        .btn-glow:hover::before {
            left: 100%;
        }

        /* --- Aesthetic Features Grid --- */
        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 24px;
            padding: 0 5%;
            max-width: 1200px;
            margin: 0 auto 100px auto;
        }

        .card {
            background: var(--glass-bg);
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            border: 1px solid var(--glass-border);
            border-top: 1px solid rgba(255, 255, 255, 0.15); /* Top reflection */
            padding: 40px;
            border-radius: 24px;
            transition: transform 0.4s cubic-bezier(0.2, 0.8, 0.2, 1), background 0.4s;
            position: relative;
            overflow: hidden;
        }

        .card:hover {
            transform: translateY(-8px);
            background: rgba(255, 255, 255, 0.05);
            border-color: rgba(255, 255, 255, 0.15);
        }

        .card-icon {
            font-size: 32px;
            margin-bottom: 20px;
            display: inline-block;
            background: rgba(255,255,255,0.05);
            width: 60px; height: 60px;
            line-height: 60px;
            text-align: center;
            border-radius: 16px;
            border: 1px solid rgba(255,255,255,0.05);
        }

        .card h3 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 22px;
            margin-bottom: 12px;
            font-weight: 600;
        }

        .card p {
            color: var(--text-muted);
            line-height: 1.7;
            font-size: 15px;
        }

        /* --- Minimal Popup --- */
        .popup-overlay {
            position: fixed;
            top: 0; left: 0; right: 0; bottom: 0;
            background: rgba(0, 0, 0, 0.6);
            backdrop-filter: blur(12px);
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 9999;
            opacity: 0;
            visibility: hidden;
            transition: all 0.4s ease;
        }

        .popup-overlay.active {
            opacity: 1;
            visibility: visible;
        }

        .popup-content {
            background: rgba(15, 15, 25, 0.8);
            backdrop-filter: blur(24px);
            border: 1px solid rgba(255,255,255,0.1);
            padding: 50px 40px;
            border-radius: 32px;
            text-align: center;
            max-width: 420px;
            width: 90%;
            box-shadow: 0 30px 60px rgba(0, 0, 0, 0.4), inset 0 1px 0 rgba(255,255,255,0.1);
            transform: scale(0.9) translateY(20px);
            transition: transform 0.5s cubic-bezier(0.2, 0.8, 0.2, 1);
        }

        .popup-overlay.active .popup-content {
            transform: scale(1) translateY(0);
        }

        .popup-icon {
            font-size: 54px;
            margin-bottom: 24px;
            text-shadow: 0 0 20px rgba(255,255,255,0.3);
        }

        .popup-content h2 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 26px;
            margin-bottom: 12px;
            font-weight: 600;
        }

        .popup-content p {
            color: var(--text-muted);
            font-size: 16px;
            margin-bottom: 32px;
            line-height: 1.6;
        }

        .popup-btn {
            background: #fff;
            color: #000;
            padding: 16px 32px;
            border-radius: 50px;
            font-weight: 600;
            border: none;
            cursor: pointer;
            width: 100%;
            font-size: 15px;
            transition: all 0.3s;
        }

        .popup-btn:hover {
            background: #e2e8f0;
            transform: translateY(-2px);
            box-shadow: 0 10px 20px rgba(255,255,255,0.1);
        }
    </style>
</head>
<body>

    <!-- Ambient Background -->
    <div class="aurora-container">
        <div class="aurora aurora-1"></div>
        <div class="aurora aurora-2"></div>
        <div class="aurora aurora-3"></div>
    </div>
    <div class="grid-overlay"></div>

    <!-- Header -->
    <header class="fade-in-up">
        <div class="logo">NEXUS<span>.</span></div>
        <nav>
            <a href="#">Platform</a>
            <a href="#">Solutions</a>
            <a href="#">Docs</a>
        </nav>
    </header>

    <!-- Main Hero -->
    <main class="hero">
        <!-- New Aesthetic Mansoor Badge -->
        <div class="deploy-badge fade-in-up delay-1">
            <div class="pulse"></div>
            Architected & Deployed by <strong>MANSOOR</strong>
        </div>

        <h1 class="fade-in-up delay-1">Building the <span class="text-accent">Next Gen</span><br>of Infrastructure</h1>
        <p class="fade-in-up delay-2">Deploy faster, scale effortlessly, and manage your entire ecosystem from a single, beautifully engineered command center.</p>
        <button class="btn-glow fade-in-up delay-3" onclick="showPopupAndFireworks()">Initialize Environment</button>
    </main>

    <!-- Features -->
    <section class="features">
        <div class="card fade-in-up delay-1">
            <div class="card-icon">⚡</div>
            <h3>Edge Optimized</h3>
            <p>Delivering your content to users in milliseconds, distributed across a global, low-latency network.</p>
        </div>
        <div class="card fade-in-up delay-2">
            <div class="card-icon">🛡️</div>
            <h3>Zero Trust Core</h3>
            <p>Enterprise-grade security woven directly into the fabric of your infrastructure layer.</p>
        </div>
        <div class="card fade-in-up delay-3">
            <div class="card-icon">♾️</div>
            <h3>Infinite Scale</h3>
            <p>Serverless computing that dynamically scales from zero to millions of requests seamlessly.</p>
        </div>
    </section>

    <!-- The Popup Modal -->
    <div class="popup-overlay" id="deployPopup">
        <div class="popup-content">
            <div class="popup-icon">✨</div>
            <h2>System Online</h2>
            <p>Welcome to your new infrastructure. All nodes are reporting nominal status under <strong>Mansoor's</strong> deployment.</p>
            <button class="popup-btn" onclick="closePopup()">Enter Dashboard</button>
        </div>
    </div>

    <!-- Script for Logic and Fireworks -->
    <script>
        const popup = document.getElementById('deployPopup');
        let fireworksInterval;

        function showPopupAndFireworks() {
            popup.classList.add('active');
            startFireworks();
        }

        function closePopup() {
            popup.classList.remove('active');
            setTimeout(() => {
                clearInterval(fireworksInterval);
            }, 500);
        }

        function startFireworks() {
            const duration = 10 * 1000;
            const animationEnd = Date.now() + duration;
            // Updated confetti colors to match the new aesthetic
            const defaults = { startVelocity: 25, spread: 360, ticks: 60, zIndex: 10000, colors: ['#818cf8', '#c084fc', '#2dd4bf', '#ffffff'] };

            function randomInRange(min, max) {
                return Math.random() * (max - min) + min;
            }

            if(fireworksInterval) clearInterval(fireworksInterval);

            fireworksInterval = setInterval(function() {
                const timeLeft = animationEnd - Date.now();

                if (timeLeft <= 0) {
                    return clearInterval(fireworksInterval);
                }

                const particleCount = 40 * (timeLeft / duration);
                
                confetti(Object.assign({}, defaults, { 
                    particleCount,
                    origin: { x: randomInRange(0.1, 0.3), y: Math.random() - 0.2 }
                }));
                confetti(Object.assign({}, defaults, { 
                    particleCount,
                    origin: { x: randomInRange(0.7, 0.9), y: Math.random() - 0.2 }
                }));
            }, 250);
        }
    </script>
</body>
</html>
