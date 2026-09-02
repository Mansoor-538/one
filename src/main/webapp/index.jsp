<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NEST — Things Worth Keeping</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@400;500;600;700&family=DM+Sans:wght@400;500;600&display=swap"
          rel="stylesheet">

    <style>

        /* =========================================================
           ROOT
        ========================================================= */

        :root {
            --ink: #2d241d;
            --dark-brown: #3a281d;
            --brown: #5b3d29;
            --brown-light: #79583d;

            --cream: #f5eddf;
            --paper: #fbf6eb;
            --paper-dark: #eadcc6;

            --gold: #b68b42;
            --gold-light: #d5b46a;

            --olive: #687052;
            --muted: #817467;

            --red: #8e4438;

            --shadow:
                0 15px 40px rgba(53, 36, 22, 0.13);

            --container: 1180px;
        }


        /* =========================================================
           RESET
        ========================================================= */

        * {
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            margin: 0;

            color: var(--ink);

            font-family:
                "DM Sans",
                Arial,
                sans-serif;

            background:
                radial-gradient(
                    circle at 20% 20%,
                    rgba(255,255,255,.35),
                    transparent 25%
                ),
                radial-gradient(
                    circle at 80% 70%,
                    rgba(120,80,40,.08),
                    transparent 30%
                ),
                #e8dcc8;

            min-height: 100vh;
        }

        /* Vintage paper texture */
        body::before {
            content: "";
            position: fixed;
            inset: 0;

            pointer-events: none;

            opacity: .25;

            background-image:
                radial-gradient(
                    rgba(80,50,30,.12) 1px,
                    transparent 1px
                );

            background-size: 5px 5px;

            z-index: -1;
        }

        img {
            display: block;
            max-width: 100%;
        }

        button,
        input {
            font-family: inherit;
        }

        button {
            cursor: pointer;
        }

        a {
            text-decoration: none;
            color: inherit;
        }


        /* =========================================================
           GLOBAL
        ========================================================= */

        .container {
            width: min(
                calc(100% - 40px),
                var(--container)
            );

            margin: auto;
        }

        .serif {
            font-family:
                "Cormorant Garamond",
                Georgia,
                serif;
        }


        /* =========================================================
           TOP STRIP
        ========================================================= */

        .top-strip {
            background: var(--dark-brown);
            color: #eadcc6;

            text-align: center;

            padding: 8px 15px;

            font-size: 12px;
            letter-spacing: .14em;

            text-transform: uppercase;
        }


        /* =========================================================
           HEADER
        ========================================================= */

        header {
            position: sticky;
            top: 0;
            z-index: 100;

            background:
                rgba(245,237,223,.96);

            border-bottom:
                1px solid rgba(91,61,41,.18);

            box-shadow:
                0 5px 20px rgba(50,30,15,.08);

            backdrop-filter: blur(8px);
        }

        .header-inner {
            min-height: 82px;

            display: flex;
            align-items: center;
            justify-content: space-between;

            gap: 30px;
        }

        /* Logo */

        .logo {
            display: flex;
            align-items: center;
            gap: 12px;

            min-width: 180px;
        }

        .logo-mark {
            width: 43px;
            height: 43px;

            border-radius: 50%;

            background:
                var(--brown);

            color:
                var(--gold-light);

            display: grid;
            place-items: center;

            font-size: 23px;

            border:
                1px solid var(--gold);

            box-shadow:
                inset 0 0 0 4px rgba(255,255,255,.06);
        }

        .logo-text {
            font-family:
                "Cormorant Garamond",
                Georgia,
                serif;

            font-size: 29px;
            font-weight: 700;

            letter-spacing: .1em;
        }

        .logo-sub {
            display: block;

            font-family: "DM Sans";

            font-size: 8px;

            letter-spacing: .25em;

            color: var(--brown-light);

            margin-top: -5px;
        }


        /* =========================================================
           NAVIGATION
        ========================================================= */

        nav {
            display: flex;
            align-items: center;
            justify-content: center;

            gap: 5px;
        }

        nav a {
            padding: 10px 13px;

            font-family:
                "Cormorant Garamond",
                Georgia,
                serif;

            font-size: 17px;
            font-weight: 600;

            position: relative;

            color: var(--dark-brown);
        }

        nav a::after {
            content: "";

            position: absolute;

            left: 50%;
            bottom: 3px;

            width: 0;
            height: 1px;

            background: var(--gold);

            transition: .25s;
        }

        nav a:hover::after {
            left: 10%;
            width: 80%;
        }


        /* =========================================================
           HEADER ACTIONS
        ========================================================= */

        .header-actions {
            display: flex;
            align-items: center;

            gap: 8px;
        }

        .action {
            width: 39px;
            height: 39px;

            border:
                1px solid rgba(91,61,41,.2);

            background: transparent;

            border-radius: 50%;

            color: var(--brown);

            display: grid;
            place-items: center;

            font-size: 16px;
        }

        .action:hover {
            background: var(--brown);
            color: var(--cream);
        }

        .cart-action {
            position: relative;
        }

        .cart-count {
            position: absolute;

            top: -5px;
            right: -5px;

            width: 18px;
            height: 18px;

            border-radius: 50%;

            background: var(--red);
            color: white;

            font-size: 10px;

            display: grid;
            place-items: center;

            font-weight: bold;
        }


        /* =========================================================
           MOBILE MENU
        ========================================================= */

        .mobile-btn {
            display: none;

            border: 0;
            background: transparent;

            font-size: 23px;

            color: var(--brown);
        }

        .mobile-menu {
            display: none;

            background: var(--paper);

            border-top:
                1px solid var(--paper-dark);

            padding: 15px 20px;
        }

        .mobile-menu a {
            display: block;

            padding: 12px 0;

            border-bottom:
                1px solid rgba(91,61,41,.1);

            font-family:
                "Cormorant Garamond",
                Georgia,
                serif;

            font-size: 19px;
        }


        /* =========================================================
           HERO
        ========================================================= */

        .hero {
            position: relative;

            min-height: 590px;

            display: flex;
            align-items: center;

            overflow: hidden;

            background:
                linear-gradient(
                    90deg,
                    rgba(38,25,17,.90) 0%,
                    rgba(55,36,24,.72) 45%,
                    rgba(55,36,24,.25) 100%
                ),
                url("https://images.unsplash.com/photo-1519710164239-da123dc03ef4?auto=format&fit=crop&w=1800&q=85")
                center/cover no-repeat;
        }

        .hero::after {
            content: "";

            position: absolute;
            inset: 0;

            border-bottom:
                5px solid rgba(182,139,66,.55);

            pointer-events: none;
        }

        .hero-content {
            position: relative;
            z-index: 2;

            max-width: 680px;

            color: var(--cream);
        }

        .eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 12px;

            font-size: 11px;

            letter-spacing: .28em;

            text-transform: uppercase;

            color: var(--gold-light);

            margin-bottom: 20px;
        }

        .eyebrow::before,
        .eyebrow::after {
            content: "";

            width: 38px;
            height: 1px;

            background: var(--gold);
        }

        .hero h1 {
            margin: 0;

            font-family:
                "Cormorant Garamond",
                Georgia,
                serif;

            font-size:
                clamp(55px, 8vw, 92px);

            line-height: .86;

            font-weight: 600;

            letter-spacing: -.025em;
        }

        .hero h1 span {
            color: var(--gold-light);
        }

        .hero p {
            max-width: 560px;

            margin:
                25px 0 30px;

            color: #e7dac5;

            line-height: 1.8;

            font-size: 15px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;

            flex-wrap: wrap;
        }


        /* =========================================================
           BUTTONS
        ========================================================= */

        .btn {
            border: 0;

            padding: 13px 24px;

            font-size: 13px;

            font-weight: 600;

            letter-spacing: .04em;

            transition: .25s;
        }

        .btn-primary {
            background: var(--gold);
            color: #fff;

            box-shadow:
                0 8px 20px rgba(100,65,25,.2);
        }

        .btn-primary:hover {
            background: #9e7432;

            transform:
                translateY(-2px);
        }

        .btn-outline {
            background: transparent;

            border:
                1px solid rgba(234,220,198,.55);

            color: var(--cream);
        }

        .btn-outline:hover {
            background: rgba(255,255,255,.08);
        }


        /* =========================================================
           INTRO
        ========================================================= */

        .intro {
            padding: 75px 0 35px;

            text-align: center;
        }

        .ornament {
            color: var(--gold);

            font-size: 22px;

            letter-spacing: .4em;
        }

        .intro h2 {
            margin:
                10px 0;

            font-family:
                "Cormorant Garamond",
                Georgia,
                serif;

            font-size: 48px;

            font-weight: 600;
        }

        .intro p {
            max-width: 650px;

            margin: auto;

            color: var(--muted);

            line-height: 1.8;
        }


        /* =========================================================
           CATEGORIES
        ========================================================= */

        .categories {
            padding: 30px 0 80px;
        }

        .category-grid {
            display: grid;

            grid-template-columns:
                repeat(6, 1fr);

            gap: 14px;
        }

        .category {
            padding: 25px 12px;

            text-align: center;

            background:
                rgba(251,246,235,.7);

            border:
                1px solid rgba(91,61,41,.13);

            transition: .3s;

            position: relative;
        }

        .category::before {
            content: "";

            position: absolute;

            inset: 6px;

            border:
                1px solid rgba(182,139,66,.14);

            pointer-events: none;
        }

        .category:hover {
            transform:
                translateY(-6px);

            background:
                var(--paper);

            box-shadow:
                var(--shadow);
        }

        .category-icon {
            font-size: 28px;

            margin-bottom: 12px;

            color: var(--brown);
        }

        .category h3 {
            margin: 0;

            font-family:
                "Cormorant Garamond",
                Georgia,
                serif;

            font-size: 20px;
        }

        .category p {
            font-size: 11px;

            color: var(--muted);

            margin:
                5px 0 0;
        }


        /* =========================================================
           SECTION HEAD
        ========================================================= */

        .section-head {
            display: flex;

            justify-content: space-between;
            align-items: end;

            margin-bottom: 25px;
        }

        .section-head h2 {
            margin: 0;

            font-family:
                "Cormorant Garamond",
                Georgia,
                serif;

            font-size: 45px;

            font-weight: 600;
        }

        .section-head p {
            color: var(--muted);

            margin: 5px 0 0;

            font-size: 13px;
        }

        .view-all {
            color: var(--brown);

            font-size: 12px;

            border-bottom:
                1px solid var(--gold);

            padding-bottom: 4px;
        }


        /* =========================================================
           PRODUCTS
        ========================================================= */

        .products-section {
            padding: 20px 0 90px;
        }

        .products {
            display: grid;

            grid-template-columns:
                repeat(4, 1fr);

            gap: 20px;
        }

        .product {
            background:
                var(--paper);

            border:
                1px solid rgba(91,61,41,.13);

            position: relative;

            overflow: hidden;

            transition: .3s;
        }

        .product:hover {
            transform:
                translateY(-5px);

            box-shadow:
                var(--shadow);
        }

        .product-image {
            height: 265px;

            overflow: hidden;

            background: #ddd;
        }

        .product-image img {
            width: 100%;
            height: 100%;

            object-fit: cover;

            transition: .5s;
        }

        .product:hover .product-image img {
            transform: scale(1.045);
        }

        .badge {
            position: absolute;

            top: 13px;
            left: 13px;

            z-index: 2;

            background: var(--brown);

            color: var(--cream);

            padding: 6px 9px;

            font-size: 9px;

            text-transform: uppercase;

            letter-spacing: .12em;
        }

        .wishlist {
            position: absolute;

            top: 12px;
            right: 12px;

            z-index: 3;

            width: 35px;
            height: 35px;

            border: 0;

            background:
                rgba(251,246,235,.9);

            color: var(--brown);

            border-radius: 50%;
        }

        .wishlist.active {
            color: var(--red);
        }

        .product-info {
            padding: 18px;
        }

        .product-category {
            font-size: 9px;

            text-transform: uppercase;

            letter-spacing: .16em;

            color: var(--gold);

            margin-bottom: 7px;
        }

        .product h3 {
            margin: 0;

            font-family:
                "Cormorant Garamond",
                Georgia,
                serif;

            font-size: 23px;

            font-weight: 600;
        }

        .product-description {
            margin:
                7px 0 15px;

            font-size: 12px;

            line-height: 1.6;

            color: var(--muted);
        }

        .product-bottom {
            display: flex;

            align-items: center;

            justify-content: space-between;

            gap: 10px;
        }

        .price {
            font-family:
                "Cormorant Garamond",
                Georgia,
                serif;

            font-size: 24px;

            font-weight: 700;
        }

        .old-price {
            color: #9a8b7b;

            text-decoration: line-through;

            font-size: 13px;

            margin-left: 5px;
        }

        .add-btn {
            border: 0;

            background: var(--brown);

            color: white;

            padding: 10px 14px;

            font-size: 11px;

            transition: .25s;
        }

        .add-btn:hover {
            background: var(--gold);
        }


        /* =========================================================
           FEATURE / DEAL
        ========================================================= */

        .deal-section {
            padding: 0 0 90px;
        }

        .deal {
            display: grid;

            grid-template-columns:
                1fr 1fr;

            background:
                var(--dark-brown);

            color: var(--cream);

            overflow: hidden;

            box-shadow:
                var(--shadow);
        }

        .deal-image {
            min-height: 460px;

            background:
                url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85")
                center/cover;
        }

        .deal-content {
            padding: 55px;

            display: flex;

            flex-direction: column;

            justify-content: center;
        }

        .deal-label {
            color: var(--gold-light);

            font-size: 10px;

            text-transform: uppercase;

            letter-spacing: .2em;
        }

        .deal h2 {
            font-family:
                "Cormorant Garamond",
                Georgia,
                serif;

            font-size: 55px;

            line-height: .95;

            margin:
                12px 0 15px;
        }

        .deal p {
            color: #d9cbb8;

            line-height: 1.7;

            font-size: 13px;
        }

        .timer {
            display: flex;

            gap: 8px;

            margin:
                22px 0;
        }

        .time {
            width: 62px;

            padding: 10px 5px;

            border:
                1px solid rgba(213,180,106,.35);

            text-align: center;
        }

        .time strong {
            display: block;

            font-family:
                "Cormorant Garamond",
                Georgia,
                serif;

            font-size: 25px;

            color: var(--gold-light);
        }

        .time span {
            font-size: 8px;

            text-transform: uppercase;

            letter-spacing: .1em;

            color: #b9aa96;
        }

        .deal-price {
            font-family:
                "Cormorant Garamond",
                Georgia,
                serif;

            font-size: 32px;

            margin-bottom: 18px;
        }


        /* =========================================================
           STORY
        ========================================================= */

        .story {
            padding: 20px 0 90px;
        }

        .story-box {
            display: grid;

            grid-template-columns:
                1fr 1fr;

            background:
                var(--paper);

            border:
                1px solid rgba(91,61,41,.14);
        }

        .story-image {
            min-height: 400px;

            background:
                url("https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?auto=format&fit=crop&w=1200&q=85")
                center/cover;
        }

        .story-content {
            padding: 55px;

            display: flex;
            flex-direction: column;

            justify-content: center;
        }

        .story-content h2 {
            font-family:
                "Cormorant Garamond",
                Georgia,
                serif;

            font-size: 50px;

            line-height: .95;

            margin:
                10px 0 20px;
        }

        .story-content p {
            color: var(--muted);

            line-height: 1.8;

            font-size: 13px;

            max-width: 470px;
        }


        /* =========================================================
           NEWSLETTER
        ========================================================= */

        .newsletter {
            margin-bottom: 80px;

            padding:
                60px 20px;

            text-align: center;

            background:
                var(--brown);

            color: var(--cream);

            position: relative;

            overflow: hidden;
        }

        .newsletter::before {
            content: "NEST";

            position: absolute;

            font-family:
                "Cormorant Garamond",
                Georgia,
                serif;

            font-size: 180px;

            opacity: .04;

            right: -20px;
            bottom: -55px;
        }

        .newsletter h2 {
            margin: 8px 0;

            font-family:
                "Cormorant Garamond",
                Georgia,
                serif;

            font-size: 45px;
        }

        .newsletter p {
            color: #d8c9b4;

            font-size: 13px;
        }

        .newsletter-form {
            margin:
                25px auto 0;

            max-width: 520px;

            display: flex;
        }

        .newsletter-form input {
            flex: 1;

            min-width: 0;

            padding:
                14px 17px;

            border: 0;

            background: var(--paper);

            color: var(--ink);

            outline: none;
        }

        .newsletter-form button {
            border: 0;

            background: var(--gold);

            color: white;

            padding:
                0 22px;
        }


        /* =========================================================
           FOOTER
        ========================================================= */

        footer {
            background:
                #2b2119;

            color:
                #cdbda7;

            padding:
                55px 0 25px;
        }

        .footer-grid {
            display: grid;

            grid-template-columns:
                2fr 1fr 1fr 1fr;

            gap: 40px;
        }

        .footer-logo {
            font-family:
                "Cormorant Garamond",
                Georgia,
                serif;

            font-size: 35px;

            color: var(--cream);

            letter-spacing: .08em;
        }

        .footer-description {
            max-width: 350px;

            line-height: 1.7;

            font-size: 12px;
        }

        footer h3 {
            color: var(--cream);

            font-family:
                "Cormorant Garamond",
                Georgia,
                serif;

            font-size: 21px;

            margin:
                0 0 15px;
        }

        footer a {
            display: block;

            font-size: 12px;

            margin-bottom: 10px;

            color: #b9a995;
        }

        footer a:hover {
            color: var(--gold-light);
        }

        .copyright {
            text-align: center;

            border-top:
                1px solid rgba(255,255,255,.08);

            margin-top: 40px;

            padding-top: 20px;

            font-size: 10px;

            color: #827465;
        }


        /* =========================================================
           TOAST
        ========================================================= */

        .toast {
            position: fixed;

            bottom: 25px;
            right: 25px;

            z-index: 999;

            background:
                var(--dark-brown);

            color: var(--cream);

            padding:
                14px 20px;

            box-shadow:
                0 10px 30px rgba(0,0,0,.25);

            transform:
                translateY(100px);

            opacity: 0;

            transition: .3s;

            font-size: 12px;
        }

        .toast.show {
            transform:
                translateY(0);

            opacity: 1;
        }


        /* =========================================================
           SEARCH
        ========================================================= */

        .search-box {
            display: none;

            position: absolute;

            top: 100%;

            left: 0;
            right: 0;

            background:
                var(--paper);

            padding: 15px;

            border-bottom:
                1px solid var(--paper-dark);

            box-shadow:
                0 10px 20px rgba(0,0,0,.08);
        }

        .search-inner {
            max-width: 600px;

            margin: auto;

            display: flex;
        }

        .search-inner input {
            flex: 1;

            padding: 13px;

            border:
                1px solid var(--paper-dark);

            outline: none;

            background: white;
        }

        .search-inner button {
            border: 0;

            background:
                var(--brown);

            color: white;

            width: 50px;
        }


        /* =========================================================
           RESPONSIVE
        ========================================================= */

        @media (max-width: 1050px) {

            nav {
                display: none;
            }

            .mobile-btn {
                display: block;
            }

            .header-inner {
                min-height: 70px;
            }

            .category-grid {
                grid-template-columns:
                    repeat(3, 1fr);
            }

            .products {
                grid-template-columns:
                    repeat(2, 1fr);
            }

            .footer-grid {
                grid-template-columns:
                    1fr 1fr;
            }
        }


        @media (max-width: 700px) {

            .container {
                width:
                    min(
                        calc(100% - 28px),
                        var(--container)
                    );
            }

            .logo-text {
                font-size: 25px;
            }

            .logo {
                min-width: auto;
            }

            .hero {
                min-height: 560px;

                background-position:
                    60% center;
            }

            .hero h1 {
                font-size: 58px;
            }

            .hero p {
                font-size: 13px;
            }

            .intro {
                padding-top: 55px;
            }

            .intro h2,
            .section-head h2 {
                font-size: 38px;
            }

            .category-grid {
                grid-template-columns:
                    repeat(2, 1fr);
            }

            .products {
                grid-template-columns:
                    1fr;
            }

            .section-head {
                display: block;
            }

            .view-all {
                display: inline-block;

                margin-top: 12px;
            }

            .deal {
                grid-template-columns:
                    1fr;
            }

            .deal-image {
                min-height: 280px;
            }

            .deal-content {
                padding: 35px 25px;
            }

            .deal h2 {
                font-size: 45px;
            }

            .story-box {
                grid-template-columns:
                    1fr;
            }

            .story-image {
                min-height: 280px;
            }

            .story-content {
                padding: 35px 25px;
            }

            .story-content h2 {
                font-size: 42px;
            }

            .newsletter-form {
                flex-direction: column;
            }

            .newsletter-form input {
                min-height: 48px;
            }

            .newsletter-form button {
                min-height: 48px;
            }

            .footer-grid {
                grid-template-columns:
                    1fr 1fr;
            }

            .footer-grid > div:first-child {
                grid-column:
                    1 / -1;
            }
        }


        @media (max-width: 430px) {

            .header-actions .action:not(.cart-action) {
                display: none;
            }

            .hero h1 {
                font-size: 50px;
            }

            .category-grid {
                grid-template-columns:
                    1fr 1fr;
            }

            .footer-grid {
                grid-template-columns:
                    1fr;
            }

            .footer-grid > div:first-child {
                grid-column: auto;
            }
        }

    </style>
</head>


<body>


<!-- =========================================================
     TOP STRIP
========================================================= -->

<div class="top-strip">
    Curated slowly · Chosen carefully · Made for your nest
</div>


<!-- =========================================================
     HEADER
========================================================= -->

<header>

    <div class="container header-inner">

        <button
                class="mobile-btn"
                id="mobileBtn"
                aria-label="Open menu">
            ☰
        </button>


        <a href="#" class="logo">

            <div class="logo-mark">
                ♡
            </div>

            <div>
                <div class="logo-text">
                    NEST
                </div>

                <span class="logo-sub">
                    OBJECTS WORTH KEEPING
                </span>
            </div>

        </a>


        <nav>

            <a href="#home">Home</a>

            <a href="#collections">
                Collections
            </a>

            <a href="#products">
                Shop
            </a>

            <a href="#story">
                Our Story
            </a>

            <a href="#deals">
                Offers
            </a>

        </nav>


        <div class="header-actions">

            <button
                    class="action"
                    id="searchBtn"
                    title="Search">
                ⌕
            </button>

            <button
                    class="action"
                    title="Account">
                ♙
            </button>

            <button
                    class="action"
                    title="Wishlist">
                ♡
            </button>

            <button
                    class="action cart-action"
                    title="Cart">

                🛒

                <span
                        class="cart-count"
                        id="cartCount">
                    0
                </span>

            </button>

        </div>

    </div>


    <!-- Search -->

    <div
            class="search-box"
            id="searchBox">

        <div class="search-inner">

            <input
                    type="text"
                    id="searchInput"
                    placeholder="Search your nest...">

            <button id="performSearch">
                ⌕
            </button>

        </div>

    </div>


    <!-- Mobile Menu -->

    <div
            class="mobile-menu"
            id="mobileMenu">

        <a href="#home">Home</a>

        <a href="#collections">
            Collections
        </a>

        <a href="#products">
            Shop
        </a>

        <a href="#story">
            Our Story
        </a>

        <a href="#deals">
            Offers
        </a>

    </div>

</header>



<!-- =========================================================
     HERO
========================================================= -->

<main id="home">

    <section class="hero">

        <div class="container">

            <div class="hero-content">

                <div class="eyebrow">
                    The quiet collection
                </div>

                <h1 class="serif">

                    Things that
                    <span>belong</span>
                    in your story.

                </h1>

                <p>

                    A collection of beautiful objects,
                    thoughtful essentials and timeless pieces
                    selected to make your everyday surroundings
                    feel a little more like home.

                </p>


                <div class="hero-buttons">

                    <a
                            href="#products"
                            class="btn btn-primary">

                        Explore the collection →

                    </a>

                    <a
                            href="#story"
                            class="btn btn-outline">

                        Discover NEST

                    </a>

                </div>

            </div>

        </div>

    </section>



    <!-- =====================================================
         INTRO
    ====================================================== -->

    <section
            class="intro"
            id="collections">

        <div class="container">

            <div class="ornament">
                ✦ ❦ ✦
            </div>

            <h2>
                Gathered for your home
            </h2>

            <p>

                We believe the things around us should have
                character. NEST brings together pieces inspired
                by natural materials, old craftsmanship and
                modern everyday living.

            </p>

        </div>

    </section>



    <!-- =====================================================
         CATEGORIES
    ====================================================== -->

    <section class="categories">

        <div class="container">

            <div class="category-grid">

                <div class="category">

                    <div class="category-icon">
                        ♧
                    </div>

                    <h3>
                        Home
                    </h3>

                    <p>
                        Quiet comforts
                    </p>

                </div>


                <div class="category">

                    <div class="category-icon">
                        ◈
                    </div>

                    <h3>
                        Technology
                    </h3>

                    <p>
                        Useful things
                    </p>

                </div>


                <div class="category">

                    <div class="category-icon">
                        ♧
                    </div>

                    <h3>
                        Fashion
                    </h3>

                    <p>
                        Made to last
                    </p>

                </div>


                <div class="category">

                    <div class="category-icon">
                        ◇
                    </div>

                    <h3>
                        Accessories
                    </h3>

                    <p>
                        Little details
                    </p>

                </div>


                <div class="category">

                    <div class="category-icon">
                        ♡
                    </div>

                    <h3>
                        Wellness
                    </h3>

                    <p>
                        Slow moments
                    </p>

                </div>


                <div class="category">

                    <div class="category-icon">
                        ✦
                    </div>

                    <h3>
                        Gifts
                    </h3>

                    <p>
                        Thoughtfully chosen
                    </p>

                </div>

            </div>

        </div>

    </section>



    <!-- =====================================================
         PRODUCTS
    ====================================================== -->

    <section
            class="products-section"
            id="products">

        <div class="container">

            <div class="section-head">

                <div>

                    <h2>
                        From the shelf
                    </h2>

                    <p>
                        A few of our current favourites.
                    </p>

                </div>

                <a
                        href="#products"
                        class="view-all">

                    View everything →

                </a>

            </div>


            <div
                    class="products"
                    id="productsGrid">


                <!-- PRODUCT 1 -->

                <article class="product">

                    <span class="badge">
                        New
                    </span>

                    <button
                            class="wishlist"
                            onclick="toggleWishlist(this)">

                        ♡

                    </button>

                    <div class="product-image">

                        <img
                                src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=85"
                                alt="Classic sneakers">

                    </div>

                    <div class="product-info">

                        <div class="product-category">
                            Footwear
                        </div>

                        <h3>
                            Old Soul Sneakers
                        </h3>

                        <p class="product-description">
                            Everyday shoes with a quiet,
                            timeless character.
                        </p>

                        <div class="product-bottom">

                            <div class="price">
                                $129
                            </div>

                            <button
                                    class="add-btn"
                                    onclick="addToCart('Old Soul Sneakers')">

                                Add to nest

                            </button>

                        </div>

                    </div>

                </article>



                <!-- PRODUCT 2 -->

                <article class="product">

                    <button
                            class="wishlist"
                            onclick="toggleWishlist(this)">

                        ♡

                    </button>

                    <div class="product-image">

                        <img
                                src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=800&q=85"
                                alt="Laptop">

                    </div>

                    <div class="product-info">

                        <div class="product-category">
                            Technology
                        </div>

                        <h3>
                            The Traveller
                        </h3>

                        <p class="product-description">
                            A sleek companion for work,
                            journeys and quiet mornings.
                        </p>

                        <div class="product-bottom">

                            <div class="price">
                                $899
                            </div>

                            <button
                                    class="add-btn"
                                    onclick="addToCart('The Traveller')">

                                Add to nest

                            </button>

                        </div>

                    </div>

                </article>



                <!-- PRODUCT 3 -->

                <article class="product">

                    <span class="badge">
                        Favourite
                    </span>

                    <button
                            class="wishlist"
                            onclick="toggleWishlist(this)">

                        ♡

                    </button>

                    <div class="product-image">

                        <img
                                src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=800&q=85"
                                alt="Classic watch">

                    </div>

                    <div class="product-info">

                        <div class="product-category">
                            Accessories
                        </div>

                        <h3>
                            Heritage Watch
                        </h3>

                        <p class="product-description">
                            Understated design inspired by
                            watches from another era.
                        </p>

                        <div class="product-bottom">

                            <div class="price">
                                $249
                            </div>

                            <button
                                    class="add-btn"
                                    onclick="addToCart('Heritage Watch')">

                                Add to nest

                            </button>

                        </div>

                    </div>

                </article>



                <!-- PRODUCT 4 -->

                <article class="product">

                    <button
                            class="wishlist"
                            onclick="toggleWishlist(this)">

                        ♡

                    </button>

                    <div class="product-image">

                        <img
                                src="https://images.unsplash.com/photo-1547949003-9792a18a2601?auto=format&fit=crop&w=800&q=85"
                                alt="Leather bag">

                    </div>

                    <div class="product-info">

                        <div class="product-category">
                            Bags
                        </div>

                        <h3>
                            Wanderer Leather Bag
                        </h3>

                        <p class="product-description">
                            Soft leather, generous space and
                            a patina that gets better with time.
                        </p>

                        <div class="product-bottom">

                            <div class="price">

                                $179

                                <span class="old-price">
                                    $219
                                </span>

                            </div>

                            <button
                                    class="add-btn"
                                    onclick="addToCart('Wanderer Leather Bag')">

                                Add to nest

                            </button>

                        </div>

                    </div>

                </article>



                <!-- PRODUCT 5 -->

                <article class="product">

                    <button
                            class="wishlist"
                            onclick="toggleWishlist(this)">

                        ♡

                    </button>

                    <div class="product-image">

                        <img
                                src="https://images.unsplash.com/photo-1547887538-e3a2f32cb1cc?auto=format&fit=crop&w=800&q=85"
                                alt="Perfume">

                    </div>

                    <div class="product-info">

                        <div class="product-category">
                            Fragrance
                        </div>

                        <h3>
                            Cedar & Amber
                        </h3>

                        <p class="product-description">
                            Warm woods, soft amber and
                            a hint of something mysterious.
                        </p>

                        <div class="product-bottom">

                            <div class="price">
                                $89
                            </div>

                            <button
                                    class="add-btn"
                                    onclick="addToCart('Cedar & Amber')">

                                Add to nest

                            </button>

                        </div>

                    </div>

                </article>



                <!-- PRODUCT 6 -->

                <article class="product">

                    <span class="badge">
                        Handmade
                    </span>

                    <button
                            class="wishlist"
                            onclick="toggleWishlist(this)">

                        ♡

                    </button>

                    <div class="product-image">

                        <img
                                src="https://images.unsplash.com/photo-1513506003901-1e6a229e2d15?auto=format&fit=crop&w=800&q=85"
                                alt="Table lamp">

                    </div>

                    <div class="product-info">

                        <div class="product-category">
                            Home
                        </div>

                        <h3>
                            Evening Lamp
                        </h3>

                        <p class="product-description">
                            Soft evening light for reading,
                            resting and staying a little longer.
                        </p>

                        <div class="product-bottom">

                            <div class="price">
                                $119
                            </div>

                            <button
                                    class="add-btn"
                                    onclick="addToCart('Evening Lamp')">

                                Add to nest

                            </button>

                        </div>

                    </div>

                </article>



                <!-- PRODUCT 7 -->

                <article class="product">

                    <button
                            class="wishlist"
                            onclick="toggleWishlist(this)">

                        ♡

                    </button>

                    <div class="product-image">

                        <img
                                src="https://images.unsplash.com/photo-1515562141207-7a88fb7ce338?auto=format&fit=crop&w=800&q=85"
                                alt="Jewelry">

                    </div>

                    <div class="product-info">

                        <div class="product-category">
                            Jewellery
                        </div>

                        <h3>
                            Quiet Gold Pendant
                        </h3>

                        <p class="product-description">
                            Simple enough for every day,
                            special enough to keep forever.
                        </p>

                        <div class="product-bottom">

                            <div class="price">
                                $75
                            </div>

                            <button
                                    class="add-btn"
                                    onclick="addToCart('Quiet Gold Pendant')">

                                Add to nest

                            </button>

                        </div>

                    </div>

                </article>



                <!-- PRODUCT 8 -->

                <article class="product">

                    <button
                            class="wishlist"
                            onclick="toggleWishlist(this)">

                        ♡

                    </button>

                    <div class="product-image">

                        <img
                                src="https://images.unsplash.com/photo-1503602642458-232111445657?auto=format&fit=crop&w=800&q=85"
                                alt="Wooden chair">

                    </div>

                    <div class="product-info">

                        <div class="product-category">
                            Furniture
                        </div>

                        <h3>
                            Oak Reading Chair
                        </h3>

                        <p class="product-description">
                            A comfortable corner for books,
                            coffee and slow afternoons.
                        </p>

                        <div class="product-bottom">

                            <div class="price">
                                $349
                            </div>

                            <button
                                    class="add-btn"
                                    onclick="addToCart('Oak Reading Chair')">

                                Add to nest

                            </button>

                        </div>

                    </div>

                </article>

            </div>

        </div>

    </section>



    <!-- =====================================================
         DEAL
    ====================================================== -->

    <section
            class="deal-section"
            id="deals">

        <div class="container">

            <div class="deal">

                <div class="deal-image"></div>

                <div class="deal-content">

                    <div class="deal-label">
                        This week's treasure
                    </div>

                    <h2>
                        A little luxury,
                        for less.
                    </h2>

                    <p>

                        Our favourite workspace companion
                        is currently part of the NEST weekly
                        collection.

                    </p>


                    <div class="timer">

                        <div class="time">

                            <strong id="days">
                                00
                            </strong>

                            <span>
                                Days
                            </span>

                        </div>


                        <div class="time">

                            <strong id="hours">
                                00
                            </strong>

                            <span>
                                Hours
                            </span>

                        </div>


                        <div class="time">

                            <strong id="minutes">
                                00
                            </strong>

                            <span>
                                Minutes
                            </span>

                        </div>


                        <div class="time">

                            <strong id="seconds">
                                00
                            </strong>

                            <span>
                                Seconds
                            </span>

                        </div>

                    </div>


                    <div class="deal-price">
                        $799
                    </div>


                    <button
                            class="btn btn-primary"
                            onclick="addToCart('Weekly Treasure')">

                        Bring it home →

                    </button>

                </div>

            </div>

        </div>

    </section>



    <!-- =====================================================
         STORY
    ====================================================== -->

    <section
            class="story"
            id="story">

        <div class="container">

            <div class="story-box">

                <div class="story-image"></div>

                <div class="story-content">

                    <div class="eyebrow"
                         style="color:#a67b36">

                        Our philosophy

                    </div>

                    <h2>
                        Buy less.
                        <br>
                        Love more.
                    </h2>

                    <p>

                        NEST started with a simple idea:
                        beautiful things don't need to shout.

                    </p>

                    <p>

                        We search for objects that feel good
                        in the hand, age beautifully and have
                        a place in everyday life.

                    </p>

                    <p>

                        From technology to furniture, from
                        clothing to small treasures, every
                        item is selected with the belief that
                        the things we keep should tell a story.

                    </p>

                    <a
                            href="#products"
                            class="btn btn-primary"
                            style="align-self:flex-start;margin-top:10px">

                        Explore NEST

                    </a>

                </div>

            </div>

        </div>

    </section>



    <!-- =====================================================
         NEWSLETTER
    ====================================================== -->

    <section>

        <div class="container">

            <div class="newsletter">

                <div class="ornament">
                    ✦ ❦ ✦
                </div>

                <h2>
                    Leave the door open.
                </h2>

                <p>
                    Receive occasional notes from the nest.
                    New pieces, quiet offers and things we love.
                </p>

                <form
                        class="newsletter-form"
                        id="newsletterForm">

                    <input
                            type="email"
                            id="email"
                            placeholder="Your email address"
                            required>

                    <button type="submit">
                        Join us
                    </button>

                </form>

            </div>

        </div>

    </section>

</main>



<!-- =========================================================
     FOOTER
========================================================= -->

<footer>

    <div class="container">

        <div class="footer-grid">

            <div>

                <div class="footer-logo">
                    NEST
                </div>

                <p class="footer-description">

                    Thoughtfully chosen objects for people
                    who believe their surroundings should
                    feel personal, warm and lived in.

                </p>

            </div>


            <div>

                <h3>
                    Explore
                </h3>

                <a href="#products">
                    Shop
                </a>

                <a href="#collections">
                    Collections
                </a>

                <a href="#deals">
                    Weekly Offers
                </a>

                <a href="#story">
                    Our Story
                </a>

            </div>


            <div>

                <h3>
                    Help
                </h3>

                <a href="#">
                    Shipping
                </a>

                <a href="#">
                    Returns
                </a>

                <a href="#">
                    Contact
                </a>

                <a href="#">
                    FAQ
                </a>

            </div>


            <div>

                <h3>
                    Follow
                </h3>

                <a href="#">
                    Instagram
                </a>

                <a href="#">
                    Pinterest
                </a>

                <a href="#">
                    Facebook
                </a>

                <a href="#">
                    Journal
                </a>

            </div>

        </div>


        <div class="copyright">

            © <span id="year"></span>
            NEST — Objects Worth Keeping.
            All rights reserved.

        </div>

    </div>

</footer>



<!-- TOAST -->

<div
        class="toast"
        id="toast">

    Added to your nest ✓

</div>



<!-- =========================================================
     JAVASCRIPT
========================================================= -->

<script>

    /* =========================================================
       CART
    ========================================================= */

    let cartCount = 0;

    const cartElement =
        document.getElementById("cartCount");

    const toast =
        document.getElementById("toast");


    function addToCart(productName) {

        cartCount++;

        cartElement.textContent =
            cartCount;

        showToast(
            productName + " added to your nest ✓"
        );
    }


    function showToast(message) {

        toast.textContent =
            message;

        toast.classList.add("show");

        setTimeout(function () {

            toast.classList.remove("show");

        }, 2200);
    }


    /* =========================================================
       WISHLIST
    ========================================================= */

    function toggleWishlist(button) {

        button.classList.toggle("active");

        if (button.classList.contains("active")) {

            button.textContent = "♥";

            showToast(
                "Saved to your favourites ♥"
            );

        } else {

            button.textContent = "♡";

        }
    }


    /* =========================================================
       MOBILE MENU
    ========================================================= */

    const mobileBtn =
        document.getElementById("mobileBtn");

    const mobileMenu =
        document.getElementById("mobileMenu");


    mobileBtn.addEventListener(
        "click",
        function () {

            if (
                mobileMenu.style.display ===
                "block"
            ) {

                mobileMenu.style.display =
                    "none";

            } else {

                mobileMenu.style.display =
                    "block";

            }

        }
    );


    /* Close mobile menu after click */

    document
        .querySelectorAll(".mobile-menu a")
        .forEach(function(link) {

            link.addEventListener(
                "click",
                function() {

                    mobileMenu.style.display =
                        "none";

                }
            );

        });


    /* =========================================================
       SEARCH
    ========================================================= */

    const searchBtn =
        document.getElementById("searchBtn");

    const searchBox =
        document.getElementById("searchBox");

    const searchInput =
        document.getElementById("searchInput");


    searchBtn.addEventListener(
        "click",
        function() {

            if (
                searchBox.style.display ===
                "block"
            ) {

                searchBox.style.display =
                    "none";

            } else {

                searchBox.style.display =
                    "block";

                searchInput.focus();

            }

        }
    );


    document
        .getElementById("performSearch")
        .addEventListener(
            "click",
            performSearch
        );


    searchInput.addEventListener(
        "keydown",
        function(event) {

            if (event.key === "Enter") {

                performSearch();

            }

        }
    );


    function performSearch() {

        const query =
            searchInput.value
                .trim()
                .toLowerCase();

        const products =
            document.querySelectorAll(
                ".product"
            );

        if (!query) {

            products.forEach(function(product) {

                product.style.display =
                    "";

            });

            return;
        }


        let found = false;


        products.forEach(function(product) {

            const text =
                product.textContent
                    .toLowerCase();

            if (
                text.includes(query)
            ) {

                product.style.display =
                    "";

                found = true;

            } else {

                product.style.display =
                    "none";

            }

        });


        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });


        if (!found) {

            showToast(
                "No treasures found for \"" +
                query +
                "\""
            );

        }

    }


    /* =========================================================
       NEWSLETTER
    ========================================================= */

    document
        .getElementById("newsletterForm")
        .addEventListener(
            "submit",
            function(event) {

                event.preventDefault();

                const email =
                    document
                        .getElementById("email")
                        .value
                        .trim();

                if (!email) {

                    return;

                }

                showToast(
                    "Welcome to the nest ✦"
                );

                document
                    .getElementById("email")
                    .value = "";

            }
        );


    /* =========================================================
       COUNTDOWN
    ========================================================= */

    const saleEnd =
        new Date().getTime()
        +
        (
            2 * 24 * 60 * 60 * 1000
        )
        +
        (
            7 * 60 * 60 * 1000
        );


    function updateTimer() {

        const now =
            new Date().getTime();

        const distance =
            saleEnd - now;


        if (distance <= 0) {

            document
                .getElementById("days")
                .textContent = "00";

            document
                .getElementById("hours")
                .textContent = "00";

            document
                .getElementById("minutes")
                .textContent = "00";

            document
                .getElementById("seconds")
                .textContent = "00";

            return;

        }


        const days =
            Math.floor(
                distance /
                (1000 * 60 * 60 * 24)
            );


        const hours =
            Math.floor(
                (
                    distance %
                    (1000 * 60 * 60 * 24)
                )
                /
                (1000 * 60 * 60)
            );


        const minutes =
            Math.floor(
                (
                    distance %
                    (1000 * 60 * 60)
                )
                /
                (1000 * 60)
            );


        const seconds =
            Math.floor(
                (
                    distance %
                    (1000 * 60)
                )
                /
                1000
            );


        document
            .getElementById("days")
            .textContent =
            String(days)
                .padStart(2, "0");


        document
            .getElementById("hours")
            .textContent =
            String(hours)
                .padStart(2, "0");


        document
            .getElementById("minutes")
            .textContent =
            String(minutes)
                .padStart(2, "0");


        document
            .getElementById("seconds")
            .textContent =
            String(seconds)
                .padStart(2, "0");

    }


    updateTimer();

    setInterval(
        updateTimer,
        1000
    );


    /* =========================================================
       YEAR
    ========================================================= */

    document
        .getElementById("year")
        .textContent =
        new Date()
            .getFullYear();


</script>

</body>
</html>
