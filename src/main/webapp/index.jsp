<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NEXUS — Modern Store</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@500;600;700&display=swap"
          rel="stylesheet">

    <style>

        /* =========================
           RESET
        ========================= */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: "DM Sans", sans-serif;
            background: #f5f3ee;
            color: #171717;
            line-height: 1.6;
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
            text-decoration: none;
            color: inherit;
        }

        /* =========================
           VARIABLES
        ========================= */

        :root {
            --black: #111111;
            --dark: #1b1b1b;
            --cream: #f5f3ee;
            --white: #ffffff;
            --gold: #c9a227;
            --gold-light: #e4ca70;
            --gray: #777777;
            --border: #dedbd2;
            --green: #315c45;
        }

        /* =========================
           HEADER
        ========================= */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;
            background: rgba(245, 243, 238, 0.96);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid var(--border);
        }

        .header {
            max-width: 1300px;
            margin: auto;
            min-height: 76px;
            padding: 0 28px;

            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 30px;
        }

        .logo {
            font-family: "Playfair Display", serif;
            font-size: 30px;
            font-weight: 700;
            letter-spacing: 4px;
        }

        .logo span {
            color: var(--gold);
        }

        .nav {
            display: flex;
            gap: 30px;
            align-items: center;
        }

        .nav a {
            font-size: 14px;
            font-weight: 600;
            color: #333;
            position: relative;
        }

        .nav a::after {
            content: "";
            position: absolute;
            bottom: -7px;
            left: 0;
            width: 0;
            height: 2px;
            background: var(--gold);
            transition: .25s;
        }

        .nav a:hover::after {
            width: 100%;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .circle-btn {
            width: 42px;
            height: 42px;
            border: 1px solid var(--border);
            background: transparent;
            border-radius: 50%;

            display: flex;
            align-items: center;
            justify-content: center;

            font-size: 17px;
            transition: .2s;
        }

        .circle-btn:hover {
            background: var(--black);
            color: white;
            border-color: var(--black);
        }

        .cart {
            position: relative;
        }

        .cart-count {
            position: absolute;
            right: -3px;
            top: -4px;

            width: 18px;
            height: 18px;

            background: var(--gold);
            color: white;

            font-size: 10px;
            font-weight: 700;

            border-radius: 50%;

            display: flex;
            align-items: center;
            justify-content: center;
        }

        .menu-btn {
            display: none;
            border: 0;
            background: none;
            font-size: 24px;
        }

        /* =========================
           HERO
        ========================= */

        .hero {
            min-height: 650px;
            max-width: 1400px;
            margin: auto;

            background:
                linear-gradient(
                    90deg,
                    rgba(15,15,15,.90) 0%,
                    rgba(15,15,15,.65) 42%,
                    rgba(15,15,15,.15) 100%
                ),
                url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1800&q=85")
                center/cover;

            display: flex;
            align-items: center;

            border-radius: 0 0 30px 30px;
        }

        .hero-content {
            max-width: 1300px;
            width: 100%;
            margin: auto;
            padding: 70px 50px;
            color: white;
        }

        .eyebrow {
            text-transform: uppercase;
            letter-spacing: 4px;
            font-size: 12px;
            font-weight: 700;
            color: var(--gold-light);
            margin-bottom: 20px;
        }

        .hero h1 {
            font-family: "Playfair Display", serif;
            font-size: clamp(48px, 7vw, 88px);
            line-height: 1.02;
            max-width: 720px;
            margin-bottom: 24px;
        }

        .hero h1 span {
            color: var(--gold-light);
        }

        .hero p {
            max-width: 580px;
            color: #eeeeee;
            font-size: 17px;
            margin-bottom: 35px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            padding: 14px 25px;
            border-radius: 3px;
            border: 1px solid transparent;
            font-weight: 700;
            font-size: 14px;
            transition: .25s;
        }

        .btn-primary {
            background: var(--gold);
            color: white;
        }

        .btn-primary:hover {
            background: #a98516;
            transform: translateY(-2px);
        }

        .btn-light {
            background: transparent;
            border-color: rgba(255,255,255,.5);
            color: white;
        }

        .btn-light:hover {
            background: white;
            color: black;
        }

        /* =========================
           GENERAL
        ========================= */

        .container {
            max-width: 1300px;
            margin: auto;
            padding: 0 28px;
        }

        section {
            padding: 90px 0;
        }

        .section-heading {
            display: flex;
            justify-content: space-between;
            align-items: end;
            gap: 20px;
            margin-bottom: 40px;
        }

        .section-heading h2 {
            font-family: "Playfair Display", serif;
            font-size: 42px;
        }

        .section-heading p {
            color: var(--gray);
            max-width: 450px;
        }

        .gold-line {
            width: 55px;
            height: 3px;
            background: var(--gold);
            margin: 12px 0 0;
        }

        /* =========================
           CATEGORIES
        ========================= */

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 15px;
        }

        .category {
            background: white;
            border: 1px solid var(--border);
            padding: 30px 15px;
            text-align: center;
            transition: .25s;
        }

        .category:hover {
            transform: translateY(-7px);
            border-color: var(--gold);
            box-shadow: 0 15px 35px rgba(0,0,0,.08);
        }

        .category-icon {
            font-size: 30px;
            margin-bottom: 15px;
        }

        .category h3 {
            font-size: 14px;
            margin-bottom: 5px;
        }

        .category p {
            font-size: 12px;
            color: var(--gray);
        }

        /* =========================
           PRODUCTS
        ========================= */

        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 22px;
        }

        .product {
            background: white;
            border: 1px solid var(--border);
            position: relative;
            overflow: hidden;
            transition: .3s;
        }

        .product:hover {
            transform: translateY(-6px);
            box-shadow: 0 20px 45px rgba(0,0,0,.10);
        }

        .product-image {
            height: 290px;
            overflow: hidden;
            background: #eee;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: .5s;
        }

        .product:hover .product-image img {
            transform: scale(1.06);
        }

        .badge {
            position: absolute;
            top: 14px;
            left: 14px;

            background: var(--black);
            color: white;

            padding: 6px 10px;
            font-size: 10px;
            font-weight: 700;
            letter-spacing: 1px;
            text-transform: uppercase;
        }

        .product-info {
            padding: 20px;
        }

        .product-category {
            font-size: 11px;
            color: var(--gold);
            text-transform: uppercase;
            letter-spacing: 1px;
            font-weight: 700;
        }

        .product-title {
            font-family: "Playfair Display", serif;
            font-size: 20px;
            margin: 7px 0;
        }

        .product-description {
            font-size: 13px;
            color: var(--gray);
            margin-bottom: 15px;
        }

        .product-bottom {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 10px;
        }

        .price {
            font-size: 18px;
            font-weight: 700;
        }

        .old-price {
            color: #999;
            text-decoration: line-through;
            font-size: 12px;
            margin-left: 5px;
        }

        .add-cart {
            border: 1px solid var(--black);
            background: var(--black);
            color: white;
            padding: 9px 14px;
            font-size: 12px;
            font-weight: 700;
            transition: .2s;
        }

        .add-cart:hover {
            background: var(--gold);
            border-color: var(--gold);
        }

        /* =========================
           FEATURE
        ========================= */

        .feature {
            background: var(--dark);
            color: white;
            max-width: 1300px;
            margin: auto;

            display: grid;
            grid-template-columns: 1fr 1fr;

            min-height: 480px;
        }

        .feature-image {
            background:
                url("https://images.unsplash.com/photo-1525507119028-ed4c629a60a3?auto=format&fit=crop&w=1000&q=85")
                center/cover;
        }

        .feature-content {
            padding: 70px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .feature-content h2 {
            font-family: "Playfair Display", serif;
            font-size: 48px;
            line-height: 1.1;
            margin: 12px 0 20px;
        }

        .feature-content p {
            color: #bdbdbd;
            margin-bottom: 25px;
            max-width: 450px;
        }

        .feature-list {
            list-style: none;
            margin-bottom: 30px;
        }

        .feature-list li {
            margin: 10px 0;
            color: #ddd;
        }

        .feature-list li::before {
            content: "✓";
            color: var(--gold);
            font-weight: bold;
            margin-right: 10px;
        }

        /* =========================
           DEAL
        ========================= */

        .deal {
            background: #e9e1ce;
            padding: 70px;

            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 50px;
            align-items: center;
        }

        .deal-image {
            height: 420px;
            overflow: hidden;
        }

        .deal-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .deal-content h2 {
            font-family: "Playfair Display", serif;
            font-size: 48px;
            line-height: 1.1;
            margin: 12px 0 20px;
        }

        .deal-content p {
            color: #5f5b51;
            margin-bottom: 25px;
        }

        .timer {
            display: flex;
            gap: 10px;
            margin: 25px 0;
        }

        .timer-box {
            width: 75px;
            height: 75px;
            background: var(--black);
            color: white;

            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .timer-number {
            font-size: 22px;
            font-weight: 700;
        }

        .timer-label {
            font-size: 9px;
            text-transform: uppercase;
            color: #aaa;
        }

        .deal-price {
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 20px;
        }

        /* =========================
           TESTIMONIALS
        ========================= */

        .testimonials {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .testimonial {
            background: white;
            padding: 30px;
            border: 1px solid var(--border);
        }

        .stars {
            color: var(--gold);
            letter-spacing: 3px;
            margin-bottom: 15px;
        }

        .testimonial p {
            color: #555;
            font-size: 14px;
            margin-bottom: 20px;
        }

        .customer {
            font-weight: 700;
        }

        .customer span {
            display: block;
            color: var(--gray);
            font-size: 11px;
            font-weight: 400;
        }

        /* =========================
           NEWSLETTER
        ========================= */

        .newsletter {
            background: var(--black);
            color: white;
            padding: 70px 30px;
            text-align: center;
        }

        .newsletter h2 {
            font-family: "Playfair Display", serif;
            font-size: 44px;
            margin-bottom: 10px;
        }

        .newsletter p {
            color: #aaa;
            margin-bottom: 25px;
        }

        .newsletter-form {
            max-width: 500px;
            margin: auto;
            display: flex;
        }

        .newsletter-form input {
            flex: 1;
            border: 0;
            padding: 15px;
            outline: none;
        }

        .newsletter-form button {
            border: 0;
            background: var(--gold);
            color: white;
            padding: 0 25px;
            font-weight: 700;
        }

        #message {
            margin-top: 15px;
            color: var(--gold-light);
            display: none;
        }

        /* =========================
           FOOTER
        ========================= */

        footer {
            background: #0d0d0d;
            color: white;
            padding: 60px 0 25px;
        }

        .footer-grid {
            max-width: 1300px;
            margin: auto;
            padding: 0 28px;

            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
        }

        .footer-logo {
            font-family: "Playfair Display", serif;
            font-size: 28px;
            letter-spacing: 3px;
            margin-bottom: 15px;
        }

        footer p {
            color: #888;
            max-width: 350px;
            font-size: 13px;
        }

        .footer-title {
            font-weight: 700;
            margin-bottom: 15px;
        }

        .footer-links {
            list-style: none;
        }

        .footer-links li {
            color: #888;
            font-size: 13px;
            margin: 9px 0;
        }

        .footer-links li:hover {
            color: var(--gold);
        }

        .copyright {
            max-width: 1300px;
            margin: 50px auto 0;
            padding: 20px 28px 0;

            border-top: 1px solid #252525;

            color: #666;
            font-size: 12px;
            text-align: center;
        }

        /* =========================
           MOBILE
        ========================= */

        @media(max-width: 1000px) {

            .nav {
                display: none;
            }

            .menu-btn {
                display: block;
            }

            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .testimonials {
                grid-template-columns: 1fr;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media(max-width: 700px) {

            .header {
                padding: 0 18px;
            }

            .logo {
                font-size: 24px;
            }

            .header-actions .circle-btn:nth-child(1),
            .header-actions .circle-btn:nth-child(2) {
                display: none;
            }

            .hero {
                min-height: 600px;
                border-radius: 0;
            }

            .hero-content {
                padding: 40px 25px;
            }

            .hero h1 {
                font-size: 50px;
            }

            section {
                padding: 60px 0;
            }

            .container {
                padding: 0 18px;
            }

            .section-heading {
                display: block;
            }

            .section-heading h2 {
                font-size: 34px;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .products {
                grid-template-columns: 1fr;
            }

            .feature,
            .deal {
                grid-template-columns: 1fr;
            }

            .feature-content {
                padding: 45px 25px;
            }

            .feature-content h2,
            .deal-content h2 {
                font-size: 38px;
            }

            .deal {
                padding: 25px;
            }

            .deal-image {
                height: 300px;
            }

            .newsletter-form {
                flex-direction: column;
                gap: 10px;
            }

            .newsletter-form input,
            .newsletter-form button {
                height: 50px;
            }

            .footer-grid {
                grid-template-columns: 1fr;
            }
        }

    </style>
</head>

<body>

<!-- =========================
     HEADER
========================= -->

<header>

    <div class="header">

        <button class="menu-btn" onclick="toggleMenu()">
            ☰
        </button>

        <a href="#" class="logo">
            NEX<span>US</span>
        </a>

        <nav class="nav" id="navigation">
            <a href="#">Home</a>
            <a href="#categories">Collections</a>
            <a href="#products">Shop</a>
            <a href="#deal">Offers</a>
            <a href="#about">About</a>
        </nav>

        <div class="header-actions">

            <button class="circle-btn">
                ⌕
            </button>

            <button class="circle-btn">
                ♡
            </button>

            <button class="circle-btn cart">
                🛒
                <span class="cart-count" id="cartCount">0</span>
            </button>

        </div>

    </div>

</header>


<!-- =========================
     HERO
========================= -->

<section class="hero">

    <div class="hero-content">

        <div class="eyebrow">
            New Collection 2026
        </div>

        <h1>
            Objects with
            <span>character.</span>
        </h1>

        <p>
            Discover carefully selected fashion, technology and
            lifestyle pieces designed for people who appreciate
            quality, simplicity and timeless design.
        </p>

        <div class="hero-buttons">

            <button class="btn btn-primary"
                    onclick="document.getElementById('products').scrollIntoView()">
                Explore Collection →
            </button>

            <button class="btn btn-light"
                    onclick="document.getElementById('deal').scrollIntoView()">
                View Offers
            </button>

        </div>

    </div>

</section>


<!-- =========================
     CATEGORIES
========================= -->

<section id="categories">

    <div class="container">

        <div class="section-heading">

            <div>
                <div class="eyebrow" style="color:#c9a227;">
                    Explore
                </div>

                <h2>Shop by category</h2>

                <div class="gold-line"></div>
            </div>

            <p>
                A carefully curated selection of products
                across the things you use, wear and love.
            </p>

        </div>


        <div class="categories">

            <div class="category">
                <div class="category-icon">⌚</div>
                <h3>Watches</h3>
                <p>42 Products</p>
            </div>

            <div class="category">
                <div class="category-icon">◈</div>
                <h3>Technology</h3>
                <p>86 Products</p>
            </div>

            <div class="category">
                <div class="category-icon">◉</div>
                <h3>Fashion</h3>
                <p>124 Products</p>
            </div>

            <div class="category">
                <div class="category-icon">◇</div>
                <h3>Accessories</h3>
                <p>73 Products</p>
            </div>

            <div class="category">
                <div class="category-icon">◫</div>
                <h3>Travel</h3>
                <p>39 Products</p>
            </div>

            <div class="category">
                <div class="category-icon">✦</div>
                <h3>Living</h3>
                <p>91 Products</p>
            </div>

        </div>

    </div>

</section>


<!-- =========================
     PRODUCTS
========================= -->

<section id="products">

    <div class="container">

        <div class="section-heading">

            <div>

                <div class="eyebrow" style="color:#c9a227;">
                    Curated for you
                </div>

                <h2>Trending pieces</h2>

                <div class="gold-line"></div>

            </div>

            <p>
                Modern essentials selected for their design,
                craftsmanship and everyday usefulness.
            </p>

        </div>


        <div class="products">


            <!-- PRODUCT 1 -->

            <article class="product">

                <div class="badge">
                    Bestseller
                </div>

                <div class="product-image">

                    <img src="https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=800&q=85"
                         alt="Classic watch">

                </div>

                <div class="product-info">

                    <div class="product-category">
                        Watches
                    </div>

                    <h3 class="product-title">
                        Meridian Classic
                    </h3>

                    <p class="product-description">
                        Minimal automatic timepiece with a
                        refined stainless steel case.
                    </p>

                    <div class="product-bottom">

                        <div class="price">
                            $289
                            <span class="old-price">$349</span>
                        </div>

                        <button class="add-cart"
                                onclick="addToCart(this)">
                            Add to cart
                        </button>

                    </div>

                </div>

            </article>


            <!-- PRODUCT 2 -->

            <article class="product">

                <div class="badge">
                    New
                </div>

                <div class="product-image">

                    <img src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=800&q=85"
                         alt="Premium laptop">

                </div>

                <div class="product-info">

                    <div class="product-category">
                        Technology
                    </div>

                    <h3 class="product-title">
                        Studio Laptop
                    </h3>

                    <p class="product-description">
                        Powerful performance wrapped in an
                        ultra-thin aluminium body.
                    </p>

                    <div class="product-bottom">

                        <div class="price">
                            $1,499
                        </div>

                        <button class="add-cart"
                                onclick="addToCart(this)">
                            Add to cart
                        </button>

                    </div>

                </div>

            </article>


            <!-- PRODUCT 3 -->

            <article class="product">

                <div class="product-image">

                    <img src="https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=800&q=85"
                         alt="Premium shirt">

                </div>

                <div class="product-info">

                    <div class="product-category">
                        Fashion
                    </div>

                    <h3 class="product-title">
                        Essential Cotton
                    </h3>

                    <p class="product-description">
                        Heavyweight organic cotton with
                        a relaxed modern silhouette.
                    </p>

                    <div class="product-bottom">

                        <div class="price">
                            $79
                        </div>

                        <button class="add-cart"
                                onclick="addToCart(this)">
                            Add to cart
                        </button>

                    </div>

                </div>

            </article>


            <!-- PRODUCT 4 -->

            <article class="product">

                <div class="badge">
                    -20%
                </div>

                <div class="product-image">

                    <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=85"
                         alt="Sneakers">

                </div>

                <div class="product-info">

                    <div class="product-category">
                        Footwear
                    </div>

                    <h3 class="product-title">
                        Urban Runner
                    </h3>

                    <p class="product-description">
                        Lightweight everyday sneakers built
                        for city exploration.
                    </p>

                    <div class="product-bottom">

                        <div class="price">
                            $119
                            <span class="old-price">$149</span>
                        </div>

                        <button class="add-cart"
                                onclick="addToCart(this)">
                            Add to cart
                        </button>

                    </div>

                </div>

            </article>


            <!-- PRODUCT 5 -->

            <article class="product">

                <div class="product-image">

                    <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=85"
                         alt="Headphones">

                </div>

                <div class="product-info">

                    <div class="product-category">
                        Audio
                    </div>

                    <h3 class="product-title">
                        Studio Headphones
                    </h3>

                    <p class="product-description">
                        Immersive sound with premium
                        noise isolation.
                    </p>

                    <div class="product-bottom">

                        <div class="price">
                            $249
                        </div>

                        <button class="add-cart"
                                onclick="addToCart(this)">
                            Add to cart
                        </button>

                    </div>

                </div>

            </article>


            <!-- PRODUCT 6 -->

            <article class="product">

                <div class="badge">
                    Popular
                </div>

                <div class="product-image">

                    <img src="https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=800&q=85"
                         alt="Backpack">

                </div>

                <div class="product-info">

                    <div class="product-category">
                        Travel
                    </div>

                    <h3 class="product-title">
                        Explorer Pack
                    </h3>

                    <p class="product-description">
                        Functional everyday backpack with
                        premium water-resistant fabric.
                    </p>

                    <div class="product-bottom">

                        <div class="price">
                            $129
                        </div>

                        <button class="add-cart"
                                onclick="addToCart(this)">
                            Add to cart
                        </button>

                    </div>

                </div>

            </article>


            <!-- PRODUCT 7 -->

            <article class="product">

                <div class="product-image">

                    <img src="https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=800&q=85"
                         alt="Sunglasses">

                </div>

                <div class="product-info">

                    <div class="product-category">
                        Accessories
                    </div>

                    <h3 class="product-title">
                        Atelier Shades
                    </h3>

                    <p class="product-description">
                        Contemporary acetate sunglasses
                        with UV protection.
                    </p>

                    <div class="product-bottom">

                        <div class="price">
                            $149
                        </div>

                        <button class="add-cart"
                                onclick="addToCart(this)">
                            Add to cart
                        </button>

                    </div>

                </div>

            </article>


            <!-- PRODUCT 8 -->

            <article class="product">

                <div class="badge">
                    Limited
                </div>

                <div class="product-image">

                    <img src="https://images.unsplash.com/photo-1548036328-c9fa89d128fa?auto=format&fit=crop&w=800&q=85"
                         alt="Leather bag">

                </div>

                <div class="product-info">

                    <div class="product-category">
                        Leather
                    </div>

                    <h3 class="product-title">
                        Heritage Bag
                    </h3>

                    <p class="product-description">
                        Full-grain leather bag designed
                        to age beautifully.
                    </p>

                    <div class="product-bottom">

                        <div class="price">
                            $299
                        </div>

                        <button class="add-cart"
                                onclick="addToCart(this)">
                            Add to cart
                        </button>

                    </div>

                </div>

            </article>

        </div>

    </div>

</section>


<!-- =========================
     FEATURE
========================= -->

<section id="about">

    <div class="container">

        <div class="feature">

            <div class="feature-image"></div>

            <div class="feature-content">

                <div class="eyebrow">
                    The Nexus philosophy
                </div>

                <h2>
                    Less noise.
                    More character.
                </h2>

                <p>
                    We believe great products don't need to
                    shout. Every item in our collection is
                    selected for quality, functionality and
                    timeless design.
                </p>

                <ul class="feature-list">

                    <li>Curated premium products</li>
                    <li>Quality-first selection</li>
                    <li>Fast worldwide shipping</li>
                    <li>Simple returns</li>

                </ul>

                <div>
                    <button class="btn btn-primary">
                        Discover Nexus
                    </button>
                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================
     DEAL
========================= -->

<section id="deal">

    <div class="container">

        <div class="deal">

            <div class="deal-image">

                <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=1000&q=85"
                     alt="Luxury watch">

            </div>

            <div class="deal-content">

                <div class="eyebrow">
                    Limited offer
                </div>

                <h2>
                    The Signature
                    Timepiece
                </h2>

                <p>
                    A refined mechanical watch created for
                    those who appreciate the details.
                </p>

                <div class="timer">

                    <div class="timer-box">
                        <div class="timer-number" id="days">02</div>
                        <div class="timer-label">Days</div>
                    </div>

                    <div class="timer-box">
                        <div class="timer-number" id="hours">12</div>
                        <div class="timer-label">Hours</div>
                    </div>

                    <div class="timer-box">
                        <div class="timer-number" id="minutes">45</div>
                        <div class="timer-label">Minutes</div>
                    </div>

                    <div class="timer-box">
                        <div class="timer-number" id="seconds">30</div>
                        <div class="timer-label">Seconds</div>
                    </div>

                </div>

                <div class="deal-price">
                    $399
                </div>

                <button class="btn btn-primary"
                        onclick="addDeal()">
                    Add to cart →
                </button>

            </div>

        </div>

    </div>

</section>


<!-- =========================
     TESTIMONIALS
========================= -->

<section>

    <div class="container">

        <div class="section-heading">

            <div>

                <div class="eyebrow" style="color:#c9a227;">
                    Community
                </div>

                <h2>Loved by our customers</h2>

                <div class="gold-line"></div>

            </div>

        </div>


        <div class="testimonials">

            <div class="testimonial">

                <div class="stars">
                    ★★★★★
                </div>

                <p>
                    "The quality was much better than I expected.
                    The packaging was beautiful and delivery was
                    incredibly fast."
                </p>

                <div class="customer">
                    Olivia Carter
                    <span>Verified customer</span>
                </div>

            </div>


            <div class="testimonial">

                <div class="stars">
                    ★★★★★
                </div>

                <p>
                    "Finally an online store that doesn't feel
                    like every other online store. The products
                    are genuinely interesting."
                </p>

                <div class="customer">
                    Ethan Morgan
                    <span>Verified customer</span>
                </div>

            </div>


            <div class="testimonial">

                <div class="stars">
                    ★★★★★
                </div>

                <p>
                    "I bought the Heritage Bag and it has become
                    my everyday bag. Beautiful craftsmanship."
                </p>

                <div class="customer">
                    Sophia Williams
                    <span>Verified customer</span>
                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================
     NEWSLETTER
========================= -->

<section>

    <div class="container">

        <div class="newsletter">

            <div class="eyebrow">
                Stay connected
            </div>

            <h2>
                Join the inner circle.
            </h2>

            <p>
                New collections, private offers and
                inspiration. No spam.
            </p>

            <form class="newsletter-form"
                  onsubmit="subscribe(event)">

                <input
                    type="email"
                    id="email"
                    placeholder="Your email address"
                    required>

                <button type="submit">
                    Subscribe
                </button>

            </form>

            <div id="message">
                Thanks for joining Nexus.
            </div>

        </div>

    </div>

</section>


<!-- =========================
     FOOTER
========================= -->

<footer>

    <div class="footer-grid">

        <div>

            <div class="footer-logo">
                NEX<span style="color:#c9a227;">US</span>
            </div>

            <p>
                A modern collection of thoughtfully designed
                products for modern living.
            </p>

        </div>


        <div>

            <div class="footer-title">
                Shop
            </div>

            <ul class="footer-links">

                <li>New Arrivals</li>
                <li>Best Sellers</li>
                <li>Collections</li>
                <li>Offers</li>

            </ul>

        </div>


        <div>

            <div class="footer-title">
                Company
            </div>

            <ul class="footer-links">

                <li>About Us</li>
                <li>Our Story</li>
                <li>Careers</li>
                <li>Contact</li>

            </ul>

        </div>


        <div>

            <div class="footer-title">
                Support
            </div>

            <ul class="footer-links">

                <li>Help Center</li>
                <li>Shipping</li>
                <li>Returns</li>
                <li>Privacy</li>

            </ul>

        </div>

    </div>


    <div class="copyright">

        © <span id="year"></span> NEXUS. All rights reserved.

    </div>

</footer>


<!-- =========================
     JAVASCRIPT
========================= -->

<script>

    /* =========================
       CART
    ========================= */

    let cart = 0;

    function addToCart(button) {

        cart++;

        document.getElementById("cartCount").textContent = cart;

        const original = button.textContent;

        button.textContent = "Added ✓";

        button.style.background = "#315c45";
        button.style.borderColor = "#315c45";

        setTimeout(function () {

            button.textContent = original;

            button.style.background = "";
            button.style.borderColor = "";

        }, 1200);
    }


    function addDeal() {

        cart++;

        document.getElementById("cartCount").textContent = cart;

        alert("Signature Timepiece added to your cart.");

    }


    /* =========================
       NEWSLETTER
    ========================= */

    function subscribe(event) {

        event.preventDefault();

        const email = document.getElementById("email");

        if (email.value.trim() !== "") {

            document.getElementById("message").style.display = "block";

            email.value = "";

        }

    }


    /* =========================
       MOBILE MENU
    ========================= */

    function toggleMenu() {

        const nav = document.getElementById("navigation");

        if (nav.style.display === "flex") {

            nav.style.display = "none";

        } else {

            nav.style.display = "flex";
            nav.style.position = "absolute";
            nav.style.top = "76px";
            nav.style.left = "0";
            nav.style.right = "0";
            nav.style.padding = "25px";
            nav.style.background = "#f5f3ee";
            nav.style.flexDirection = "column";
            nav.style.borderBottom = "1px solid #dedbd2";

        }

    }


    /* =========================
       COUNTDOWN
    ========================= */

    const targetDate =
        new Date().getTime() + (2 * 24 * 60 * 60 * 1000);


    function updateTimer() {

        const now = new Date().getTime();

        const difference = targetDate - now;

        if (difference <= 0) {

            document.getElementById("days").textContent = "00";
            document.getElementById("hours").textContent = "00";
            document.getElementById("minutes").textContent = "00";
            document.getElementById("seconds").textContent = "00";

            return;

        }

        const days = Math.floor(
            difference / (1000 * 60 * 60 * 24)
        );

        const hours = Math.floor(
            (difference / (1000 * 60 * 60)) % 24
        );

        const minutes = Math.floor(
            (difference / (1000 * 60)) % 60
        );

        const seconds = Math.floor(
            (difference / 1000) % 60
        );

        document.getElementById("days").textContent =
            String(days).padStart(2, "0");

        document.getElementById("hours").textContent =
            String(hours).padStart(2, "0");

        document.getElementById("minutes").textContent =
            String(minutes).padStart(2, "0");

        document.getElementById("seconds").textContent =
            String(seconds).padStart(2, "0");

    }

    updateTimer();

    setInterval(updateTimer, 1000);


    /* =========================
       YEAR
    ========================= */

    document.getElementById("year").textContent =
        new Date().getFullYear();

</script>

</body>
</html>
