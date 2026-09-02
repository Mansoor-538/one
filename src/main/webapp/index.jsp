<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NEXUS — Curated Objects for Modern Living</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:ital,wght@400;500;600;700&display=swap" rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <style>

        /* =========================================================
           RESET
        ========================================================= */

        :root {
            --black: #0b0b0b;
            --dark: #111111;
            --dark-2: #171717;
            --cream: #f4f0e8;
            --white: #ffffff;
            --gold: #d5b06a;
            --gold-light: #ead19a;
            --gray: #9c9c9c;
            --gray-light: #d0d0d0;
            --border: rgba(255,255,255,.10);

            --serif: "Playfair Display", Georgia, serif;
            --sans: "DM Sans", Arial, sans-serif;

            --radius: 18px;
            --max-width: 1380px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            background: var(--black);
            color: var(--white);
            font-family: var(--sans);
            overflow-x: hidden;
        }

        body::selection {
            background: var(--gold);
            color: var(--black);
        }

        img {
            max-width: 100%;
            display: block;
        }

        button,
        input {
            font-family: inherit;
        }

        button {
            cursor: pointer;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        .container {
            width: min(100% - 48px, var(--max-width));
            margin: auto;
        }


        /* =========================================================
           ANNOUNCEMENT
        ========================================================= */

        .announcement {
            background: var(--gold);
            color: var(--black);
            text-align: center;
            padding: 9px 15px;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: .16em;
            text-transform: uppercase;
        }


        /* =========================================================
           NAVBAR
        ========================================================= */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;

            background: rgba(11,11,11,.88);
            backdrop-filter: blur(18px);
            border-bottom: 1px solid var(--border);
        }

        .navbar {
            height: 78px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 30px;
        }

        .logo {
            font-size: 24px;
            font-weight: 700;
            letter-spacing: .12em;
        }

        .logo span {
            color: var(--gold);
        }

        .nav-links {
            display: flex;
            gap: 34px;
            list-style: none;
        }

        .nav-links a {
            font-size: 13px;
            color: #bdbdbd;
            transition: .25s;
        }

        .nav-links a:hover {
            color: var(--white);
        }

        .nav-actions {
            display: flex;
            align-items: center;
            gap: 16px;
        }

        .nav-icon {
            width: 38px;
            height: 38px;
            border: 1px solid var(--border);
            background: transparent;
            color: white;
            border-radius: 50%;
            display: grid;
            place-items: center;
            transition: .25s;
        }

        .nav-icon:hover {
            border-color: var(--gold);
            color: var(--gold);
        }

        .cart-button {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -5px;
            right: -5px;

            width: 17px;
            height: 17px;

            border-radius: 50%;
            background: var(--gold);
            color: var(--black);

            font-size: 9px;
            font-weight: 700;

            display: grid;
            place-items: center;
        }

        .menu-button {
            display: none;
        }


        /* =========================================================
           HERO
        ========================================================= */

        .hero {
            min-height: 730px;
            position: relative;
            display: flex;
            align-items: center;
            overflow: hidden;

            background:
                linear-gradient(
                    90deg,
                    rgba(5,5,5,.95) 0%,
                    rgba(5,5,5,.70) 43%,
                    rgba(5,5,5,.12) 100%
                ),
                url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=2000&q=90")
                center/cover;
        }

        .hero::after {
            content: "";
            position: absolute;
            inset: 0;

            background:
                radial-gradient(
                    circle at 70% 50%,
                    transparent 0,
                    rgba(0,0,0,.45) 70%
                );

            pointer-events: none;
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 700px;
        }

        .eyebrow {
            display: flex;
            align-items: center;
            gap: 12px;

            color: var(--gold);
            font-size: 11px;
            font-weight: 700;
            letter-spacing: .25em;
            text-transform: uppercase;

            margin-bottom: 24px;
        }

        .eyebrow::before {
            content: "";
            width: 40px;
            height: 1px;
            background: var(--gold);
        }

        .hero h1 {
            font-family: var(--serif);
            font-size: clamp(58px, 7vw, 104px);
            font-weight: 500;
            line-height: .92;
            letter-spacing: -.045em;
        }

        .hero h1 em {
            color: var(--gold-light);
            font-weight: 400;
        }

        .hero-description {
            max-width: 500px;
            margin-top: 28px;

            color: #c3c3c3;
            line-height: 1.8;
            font-size: 15px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
            margin-top: 35px;
        }

        .btn {
            border: 0;
            padding: 15px 24px;

            font-size: 12px;
            font-weight: 700;
            letter-spacing: .08em;
            text-transform: uppercase;

            transition: .25s;
        }

        .btn-gold {
            background: var(--gold);
            color: var(--black);
        }

        .btn-gold:hover {
            background: var(--gold-light);
            transform: translateY(-2px);
        }

        .btn-outline {
            border: 1px solid rgba(255,255,255,.3);
            background: rgba(255,255,255,.03);
            color: white;
        }

        .btn-outline:hover {
            border-color: white;
        }

        .hero-number {
            position: absolute;
            right: 50px;
            bottom: 40px;

            z-index: 2;

            color: rgba(255,255,255,.45);
            font-family: var(--serif);
            font-size: 13px;
            letter-spacing: .1em;
        }


        /* =========================================================
           SECTION HEADER
        ========================================================= */

        section {
            padding: 110px 0;
        }

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: end;
            gap: 20px;
            margin-bottom: 45px;
        }

        .section-kicker {
            color: var(--gold);
            font-size: 10px;
            font-weight: 700;
            letter-spacing: .25em;
            text-transform: uppercase;
            margin-bottom: 10px;
        }

        .section-title {
            font-family: var(--serif);
            font-size: clamp(38px, 4vw, 58px);
            font-weight: 500;
            line-height: 1;
        }

        .section-subtitle {
            max-width: 370px;
            color: var(--gray);
            font-size: 13px;
            line-height: 1.7;
        }


        /* =========================================================
           CATEGORIES
        ========================================================= */

        .category-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 12px;
        }

        .category {
            min-height: 190px;
            padding: 25px 18px;

            border: 1px solid var(--border);
            background: linear-gradient(145deg,#151515,#0e0e0e);

            display: flex;
            flex-direction: column;
            justify-content: space-between;

            transition: .35s;
        }

        .category:hover {
            transform: translateY(-7px);
            border-color: rgba(213,176,106,.6);
        }

        .category-icon {
            width: 44
