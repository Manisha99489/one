<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="Viewport" content="width=device-width, initial-scale=1" />
  <title>NexusShop · friendly e‑commerce</title>
  <!-- Google Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600&family=Plus+Jakarta+Sans:wght@600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #fafcff;
      --surface: #ffffff;
      --primary: #0b1e33;
      --accent: #3b82f6;
      --accent-soft: #eef4ff;
      --muted: #5e6f8d;
      --border: #e9edf4;
      --radius-xl: 24px;
      --radius-md: 14px;
      --radius-sm: 10px;
      --shadow: 0 12px 30px rgba(0, 20, 40, 0.04);
      --shadow-hover: 0 24px 48px rgba(0, 20, 40, 0.08);
      --transition: 0.2s cubic-bezier(0.2, 0, 0, 1);
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ---------- header ---------- */
    .header {
      background: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(8px);
      -webkit-backdrop-filter: blur(8px);
      border-bottom: 1px solid var(--border);
      position: sticky;
      top: 0;
      z-index: 50;
      padding: 10px 0;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      flex-wrap: wrap;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 6px;
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-weight: 800;
      font-size: 22px;
      letter-spacing: -0.3px;
      color: var(--primary);
    }
    .brand i {
      color: var(--accent);
      font-size: 24px;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border: 1px solid var(--border);
      border-radius: 60px;
      padding: 6px 6px 6px 18px;
      flex: 1 1 260px;
      min-width: 160px;
      transition: var(--transition);
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.15);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      width: 100%;
      padding: 8px 0;
      font-size: 14px;
      outline: none;
      color: var(--primary);
    }
    .search-wrap input::placeholder {
      color: var(--muted);
      font-weight: 400;
    }
    .search-wrap button {
      background: var(--accent);
      border: none;
      color: white;
      width: 38px;
      height: 38px;
      border-radius: 40px;
      cursor: pointer;
      font-size: 15px;
      transition: var(--transition);
    }
    .search-wrap button:hover {
      background: #2563eb;
      transform: scale(0.96);
    }

    .nav-links {
      display: flex;
      align-items: center;
      gap: 6px;
      list-style: none;
    }
    .nav-links a {
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 14px;
      color: var(--primary);
      transition: var(--transition);
      text-decoration: none;
      display: inline-flex;
      align-items: center;
      gap: 6px;
    }
    .nav-links a i {
      font-size: 14px;
      color: var(--muted);
    }
    .nav-links a:hover {
      background: var(--accent-soft);
      color: var(--accent);
    }
    .nav-links a:hover i {
      color: var(--accent);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .icon-btn {
      background: transparent;
      border: none;
      width: 42px;
      height: 42px;
      border-radius: 40px;
      font-size: 18px;
      color: var(--primary);
      transition: var(--transition);
      cursor: pointer;
      display: inline-flex;
      align-items: center;
      justify-content: center;
    }
    .icon-btn:hover {
      background: var(--accent-soft);
      color: var(--accent);
    }
    .cart-btn {
      position: relative;
      background: var(--surface);
      border: 1px solid var(--border);
    }
    .cart-count {
      position: absolute;
      top: -4px;
      right: -4px;
      background: var(--accent);
      color: white;
      font-size: 11px;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: 0 4px 8px rgba(59, 130, 246, 0.25);
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 22px;
      color: var(--primary);
      cursor: pointer;
    }

    .mobile-menu {
      display: none;
      background: var(--surface);
      border-top: 1px solid var(--border);
      padding: 16px 0;
    }
    .mobile-menu a {
      display: block;
      padding: 10px 0;
      font-weight: 500;
      color: var(--primary);
      text-decoration: none;
      border-bottom: 1px solid var(--border);
    }

    /* ---------- hero ---------- */
    .hero {
      background: linear-gradient(145deg, #0b1e33 0%, #1a324a 100%);
      border-radius: var(--radius-xl);
      margin: 32px 0 40px;
      padding: 64px 48px;
      color: white;
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
    }
    .hero-content {
      max-width: 540px;
    }
    .hero-content h1 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-size: clamp(32px, 5vw, 48px);
      font-weight: 800;
      letter-spacing: -0.02em;
      line-height: 1.1;
      margin-bottom: 14px;
    }
    .hero-content p {
      opacity: 0.8;
      font-size: 16px;
      margin-bottom: 28px;
      max-width: 420px;
    }
    .hero-actions {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }
    .btn {
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      font-size: 15px;
      transition: var(--transition);
      display: inline-flex;
      align-items: center;
      gap: 8px;
      text-decoration: none;
    }
    .btn-primary {
      background: white;
      color: #0b1e33;
    }
    .btn-primary:hover {
      background: #f0f4fe;
      transform: translateY(-2px);
      box-shadow: 0 12px 24px rgba(0,0,0,0.15);
    }
    .btn-outline {
      background: rgba(255,255,255,0.08);
      color: white;
      border: 1px solid rgba(255,255,255,0.15);
    }
    .btn-outline:hover {
      background: rgba(255,255,255,0.15);
    }
    .hero-stats {
      display: flex;
      gap: 32px;
      margin-top: 20px;
    }
    .hero-stats span {
      font-weight: 600;
      font-size: 18px;
    }
    .hero-stats small {
      opacity: 0.6;
      font-weight: 400;
      font-size: 14px;
      display: block;
    }

    /* ---------- section ---------- */
    .section {
      margin: 48px 0;
    }
    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      flex-wrap: wrap;
      margin-bottom: 20px;
    }
    .section-header h2 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-weight: 700;
      font-size: 26px;
    }
    .section-header .muted {
      color: var(--muted);
      font-weight: 400;
    }
    .view-all {
      color: var(--accent);
      font-weight: 600;
      text-decoration: none;
      font-size: 14px;
      display: inline-flex;
      align-items: center;
      gap: 6px;
    }

    /* categories grid */
    .cat-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(140px, 1fr));
      gap: 16px;
    }
    .cat-card {
      background: var(--surface);
      border-radius: var(--radius-md);
      padding: 20px 12px;
      text-align: center;
      border: 1px solid var(--border);
      transition: var(--transition);
      cursor: pointer;
      box-shadow: var(--shadow);
    }
    .cat-card:hover {
      transform: translateY(-6px);
      border-color: var(--accent);
      box-shadow: var(--shadow-hover);
    }
    .cat-card i {
      font-size: 30px;
      color: var(--accent);
      margin-bottom: 6px;
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 15px;
    }

    /* products grid */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(210px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: var(--surface);
      border-radius: var(--radius-md);
      overflow: hidden;
      border: 1px solid var(--border);
      transition: var(--transition);
      box-shadow: var(--shadow);
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: #dbe7ff;
    }
    .product-card img {
      width: 100%;
      height: 190px;
      object-fit: cover;
      background: #f2f6fd;
    }
    .product-body {
      padding: 16px 14px 10px;
      flex: 1;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 15px;
      margin-bottom: 4px;
    }
    .product-body .category-tag {
      font-size: 12px;
      color: var(--muted);
      text-transform: uppercase;
      letter-spacing: 0.3px;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 8px;
    }
    .price {
      font-weight: 700;
      font-size: 18px;
    }
    .old-price {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 14px;
    }
    .rating {
      color: #f59e0b;
      font-size: 13px;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .rating span {
      color: var(--muted);
      font-size: 12px;
    }
    .product-footer {
      padding: 8px 14px 14px;
      display: flex;
      gap: 10px;
      border-top: 1px solid var(--border);
      margin-top: 6px;
    }
    .add-btn {
      flex: 1;
      background: var(--accent);
      color: white;
      border: none;
      padding: 10px 0;
      border-radius: 60px;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
      font-size: 13px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .add-btn:hover {
      background: #2563eb;
    }
    .wish-btn {
      background: transparent;
      border: 1px solid var(--border);
      border-radius: 40px;
      width: 40px;
      cursor: pointer;
      transition: var(--transition);
      color: var(--muted);
    }
    .wish-btn:hover {
      background: #fee9e9;
      color: #e11d48;
      border-color: #fecaca;
    }

    /* flash deal */
    .deal-card {
      background: var(--surface);
      border-radius: var(--radius-xl);
      border: 1px solid var(--border);
      display: flex;
      flex-wrap: wrap;
      overflow: hidden;
      box-shadow: var(--shadow);
      margin-top: 16px;
    }
    .deal-card img {
      width: 100%;
      max-width: 380px;
      height: 260px;
      object-fit: cover;
      background: #eef4ff;
    }
    .deal-content {
      padding: 32px 28px;
      flex: 1;
    }
    .deal-content h3 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-size: 26px;
    }
    .timer {
      display: flex;
      gap: 12px;
      margin: 18px 0;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 10px 14px;
      border-radius: var(--radius-sm);
      min-width: 64px;
      text-align: center;
    }
    .time-box div:first-child {
      font-weight: 700;
      font-size: 22px;
    }
    .time-box small {
      font-size: 11px;
      opacity: 0.7;
    }
    .deal-price {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .deal-price .price {
      font-size: 28px;
    }
    .discount-badge {
      background: #dc2626;
      color: white;
      padding: 4px 12px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 14px;
    }

    /* testimonials */
    .testimonial-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 2px 18px;
      scrollbar-width: thin;
    }
    .testimonial-card {
      min-width: 280px;
      background: var(--surface);
      border-radius: var(--radius-md);
      padding: 20px;
      border: 1px solid var(--border);
      box-shadow: var(--shadow);
    }
    .testimonial-card .stars {
      color: #f59e0b;
      font-size: 16px;
      margin-bottom: 6px;
    }
    .testimonial-card p {
      font-size: 14px;
      color: var(--primary);
      margin: 8px 0;
    }
    .testimonial-card .user {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 12px;
    }
    .testimonial-card .user img {
      width: 40px;
      height: 40px;
      border-radius: 40px;
      object-fit: cover;
      background: #e5eefb;
    }

    /* newsletter */
    .newsletter-box {
      background: var(--primary);
      border-radius: var(--radius-xl);
      padding: 40px 32px;
      color: white;
      text-align: center;
    }
    .newsletter-box h3 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-size: 26px;
      font-weight: 700;
    }
    .newsletter-box p {
      opacity: 0.7;
      margin: 4px 0 20px;
    }
    .newsletter-form {
      display: flex;
      justify-content: center;
      gap: 10px;
      flex-wrap: wrap;
    }
    .newsletter-form input {
      padding: 12px 22px;
      border-radius: 60px;
      border: none;
      min-width: 240px;
      font-size: 15px;
      outline: none;
    }
    .newsletter-form .btn {
      background: var(--accent);
      color: white;
    }
    .newsletter-form .btn:hover {
      background: #2563eb;
    }

    /* footer */
    .footer {
      border-top: 1px solid var(--border);
      padding: 36px 0 20px;
      margin-top: 40px;
      color: var(--muted);
      font-size: 14px;
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 30px;
    }
    .footer-brand {
      max-width: 300px;
    }
    .footer-brand .brand {
      font-size: 20px;
      margin-bottom: 6px;
    }
    .footer-links {
      display: flex;
      gap: 40px;
      flex-wrap: wrap;
    }
    .footer-links div {
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .footer-links strong {
      color: var(--primary);
      font-weight: 600;
    }
    .footer-links a {
      color: var(--muted);
      text-decoration: none;
    }
    .footer-links a:hover {
      color: var(--accent);
    }
    .footer-copy {
      text-align: center;
      margin-top: 28px;
      font-size: 13px;
      border-top: 1px solid var(--border);
      padding-top: 20px;
    }

    /* responsive */
    @media (max-width: 820px) {
      .nav-links { display: none; }
      .mobile-toggle { display: inline-block; }
      .hero { padding: 40px 24px; }
      .deal-card img { max-width: 100%; height: 200px; }
      .product-grid { grid-template-columns: repeat(auto-fill, minmax(170px, 1fr)); }
    }
    @media (max-width: 520px) {
      .hero { border-radius: 20px; padding: 32px 18px; }
      .hero-stats { gap: 16px; flex-wrap: wrap; }
      .search-wrap { flex: 1 1 100%; }
      .header-inner { gap: 12px; }
    }
    .badge {
      background: #dc2626;
      color: white;
      font-size: 11px;
      font-weight: 700;
      padding: 2px 12px;
      border-radius: 30px;
      display: inline-block;
    }
  </style>
</head>
<body>
  <!-- header -->
  <header class="header">
    <div class="container header-inner">
      <div style="display:flex; align-items:center; gap:10px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
        <a href="#" class="brand"><i class="fas fa-store-alt"></i> Nexus<span style="color:var(--accent);">Shop</span></a>
      </div>

      <div class="search-wrap">
        <input type="text" id="searchInput" placeholder="Search for products..." aria-label="Search">
        <button id="searchBtn"><i class="fas fa-arrow-right"></i></button>
      </div>

      <ul class="nav-links">
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#" id="catMenuBtn"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#deals"><i class="fas fa-bolt"></i> Deals</a></li>
        <li><a href="#"><i class="fas fa-heart"></i> Wishlist</a></li>
      </ul>

      <div class="header-actions">
        <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn cart-btn" id="cartBtn">
          <i class="fas fa-shopping-bag"></i>
          <span class="cart-count" id="cartCount">0</span>
        </button>
      </div>
    </div>
    <!-- mobile menu -->
    <div class="mobile-menu" id="mobileMenu">
      <div class="container" style="display:flex; flex-direction:column; gap:6px;">
        <a href="#">Home</a>
        <a href="#">Categories</a>
        <a href="#deals">Deals</a>
        <a href="#">Wishlist</a>
      </div>
    </div>
  </header>

  <main class="container">
    <!-- hero -->
    <section class="hero">
      <div class="hero-content">
        <h1>New arrivals ·<br>winter vibes</h1>
        <p>Curated tech, fashion & lifestyle — with free delivery on your first order.</p>
        <div class="hero-actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-bag-shopping"></i> Shop now</button>
          <button class="btn btn-outline" id="exploreDeals"><i class="fas fa-clock"></i> Flash deals</button>
        </div>
        <div class="hero-stats">
          <span>12k+ <small>products</small></span>
          <span>4.8 ★ <small>avg. rating</small></span>
        </div>
      </div>
      <div style="background: rgba(255,255,255,0.03); border-radius: 60px; padding: 20px; backdrop-filter: blur(6px);">
        <i class="fas fa-gift" style="font-size: 64px; opacity: 0.2; color: white;"></i>
      </div>
    </section>

    <!-- categories -->
    <section class="section">
      <div class="section-header">
        <h2>Shop by category</h2>
        <a href="#" class="view-all">All categories <i class="fas fa-chevron-right"></i></a>
      </div>
      <div class="cat-grid" id="categoriesGrid"></div>
    </section>

    <!-- products -->
    <section class="section" id="productsSection">
      <div class="section-header">
        <h2>Trending now</h2>
        <span class="muted">popular picks</span>
      </div>
      <div class="product-grid" id="productsGrid"></div>
    </section>

    <!-- flash deal -->
    <section class="section" id="deals">
      <div class="section-header">
        <h2><i class="fas fa-bolt" style="color: var(--accent);"></i> Flash sale</h2>
        <span class="muted">limited time</span>
      </div>
      <div class="deal-card">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook Air">
        <div class="deal-content">
          <h3>MacBook Air M2</h3>
          <p class="muted" style="margin-bottom: 6px;">Supercharged by the M2 chip — ultraportable.</p>
          <div class="timer" id="dealTimer">
            <div class="time-box"><div id="dealDays">0</div><small>days</small></div>
            <div class="time-box"><div id="dealHours">00</div><small>hrs</small></div>
            <div class="time-box"><div id="dealMinutes">00</div><small>min</small></div>
            <div class="time-box"><div id="dealSeconds">00</div><small>sec</small></div>
          </div>
          <div class="deal-price">
            <span class="price">$999</span>
            <span class="old-price">$1,199</span>
            <span class="discount-badge">-17%</span>
          </div>
          <div style="margin: 12px 0 6px;"><span class="badge">only 12 left</span></div>
          <button class="btn btn-primary" id="buyDeal" style="background: var(--accent); color: white;"><i class="fas fa-cart-plus"></i> Add to cart</button>
        </div>
      </div>
    </section>

    <!-- testimonials -->
    <section class="section">
      <div class="section-header">
        <h2>What customers say</h2>
        <span class="muted">real reviews</span>
      </div>
      <div class="testimonial-scroll" id="testimonials">
        <div class="testimonial-card">
          <div class="stars">★★★★★</div>
          <p>“Super fast shipping and the quality is amazing. Will order again.”</p>
          <div class="user"><img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="avatar"><div><strong>Ava M.</strong><div style="font-size:13px; color:var(--muted);">verified</div></div></div>
        </div>
        <div class="testimonial-card">
          <div class="stars">★★★★☆</div>
          <p>“Great selection, smooth checkout. The packaging was beautiful.”</p>
          <div class="user"><img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="avatar"><div><strong>Michael L.</strong><div style="font-size:13px; color:var(--muted);">frequent buyer</div></div></div>
        </div>
        <div class="testimonial-card">
          <div class="stars">★★★★★</div>
          <p>“Customer support helped me within minutes. Highly recommend!”</p>
          <div class="user"><img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80" alt="avatar"><div><strong>James R.</strong><div style="font-size:13px; color:var(--muted);">top reviewer</div></div></div>
        </div>
      </div>
    </section>

    <!-- newsletter -->
    <section class="section">
      <div class="newsletter-box">
        <h3>Stay in the loop</h3>
        <p>Get exclusive offers and first access to new drops</p>
        <form class="newsletter-form" id="newsletterForm" onsubmit="return false;">
          <input type="email" id="newsletterEmail" placeholder="your@email.com" required>
          <button class="btn" id="subscribeBtn" style="background: var(--accent); color: white;"><i class="fas fa-paper-plane"></i> Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:14px; font-size:14px; display:none;"></div>
      </div>
    </section>
  </main>

  <!-- footer -->
  <footer class="footer">
    <div class="container">
      <div class="footer-grid">
        <div class="footer-brand">
          <div class="brand"><i class="fas fa-store-alt"></i> Nexus<span style="color:var(--accent);">Shop</span></div>
          <p style="margin-top:6px; max-width:280px;">Modern e‑commerce demo built with care. All rights reserved.</p>
          <div style="display:flex; gap:12px; margin-top:12px;">
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-youtube"></i></a>
          </div>
        </div>
        <div class="footer-links">
          <div><strong>Company</strong><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
          <div><strong>Support</strong><a href="#">Help center</a><a href="#">Returns</a><a href="#">Contact</a></div>
          <div><strong>Legal</strong><a href="#">Privacy</a><a href="#">Terms</a></div>
        </div>
      </div>
      <div class="footer-copy">© <span id="year"></span> NexusShop — demo store</div>
    </div>
  </footer>

  <script>
    // ----- data -----
    const CATEGORIES = [
      { id: 'phones', name: 'Phones', icon: 'fa-mobile-screen' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-shirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
      { id:1, title:'iPhone 14 Pro', price:1099, oldPrice:1199, rating:5, reviews:128, img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category:'phones' },
      { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category:'laptops' },
      { id:3, title:'Apple Watch S8', price:349, oldPrice:399, rating:5, reviews:214, img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
      { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category:'footwear' },
      { id:5, title:'Sony A7 IV', price:2499, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category:'gadgets' },
      { id:6, title:'Chanel No.5', price:120, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category:'accessories' },
      { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
      { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category:'gadgets' }
    ];

    let cartCount = 0;
    const cartCountEl = document.getElementById('cartCount');
    const productsGrid = document.getElementById('productsGrid');
    const categoriesGrid = document.getElementById('categoriesGrid');
    const searchInput = document.getElementById('searchInput');

    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(c => {
        const el = document.createElement('div');
        el.className = 'cat-card';
        el.innerHTML = `<i class="fas ${c.icon}"></i><h4>${c.name}</h4>`;
        el.addEventListener('click', () => {
          searchInput.value = c.name;
          filterProducts(c.name);
        });
        categoriesGrid.appendChild(el);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      list.forEach(p => {
        const card = document.createElement('div');
        card.className = 'product-card';
        card.innerHTML = `
          <img src="${p.img}" alt="${p.title}" loading="lazy">
          <div class="product-body">
            <h5>${p.title}</h5>
            <div class="category-tag">${p.category}</div>
            <div class="price-row">
              <span class="price">$${p.price.toLocaleString()}</span>
              ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
            </div>
            <div class="rating"><i class="
