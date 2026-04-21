<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
  <title>NebulaStore — Futuristic E‑Commerce</title>
  <!-- Google Fonts + Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg-dark: #0b0e17;
      --surface: #11151f;
      --card-bg: rgba(18, 25, 40, 0.75);
      --glass-edge: rgba(255, 255, 255, 0.08);
      --primary-glow: #6c5ce7;
      --accent-neon: #00f2fe;
      --accent-pink: #ff6bcb;
      --text-light: #f0f3fa;
      --text-muted: #8e9aaf;
      --success: #10b981;
      --border-radius: 28px;
      --border-radius-sm: 20px;
      --shadow-float: 0 25px 40px -12px rgba(0, 0, 0, 0.5);
    }

    body {
      background: radial-gradient(circle at 10% 20%, #0f121f, #05070f);
      font-family: 'Space Grotesk', sans-serif;
      color: var(--text-light);
      line-height: 1.5;
      scroll-behavior: smooth;
    }

    /* custom scrollbar */
    ::-webkit-scrollbar {
      width: 6px;
    }
    ::-webkit-scrollbar-track {
      background: #1e2438;
      border-radius: 8px;
    }
    ::-webkit-scrollbar-thumb {
      background: var(--primary-glow);
      border-radius: 8px;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 28px;
    }

    /* glass header */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      backdrop-filter: blur(16px);
      background: rgba(8, 12, 24, 0.7);
      border-bottom: 1px solid rgba(108, 92, 231, 0.25);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      padding: 16px 0;
      gap: 16px;
    }

    .brand {
      font-size: 1.8rem;
      font-weight: 700;
      background: linear-gradient(135deg, #fff, var(--accent-neon));
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
      letter-spacing: -0.02em;
    }
    .brand i {
      background: none;
      -webkit-background-clip: unset;
      color: var(--accent-neon);
      margin-right: 6px;
    }

    .main-nav ul {
      display: flex;
      gap: 24px;
      list-style: none;
    }
    .main-nav a {
      text-decoration: none;
      font-weight: 500;
      color: var(--text-light);
      transition: 0.2s;
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 0.95rem;
    }
    .main-nav a:hover {
      color: var(--accent-neon);
      text-shadow: 0 0 6px rgba(0, 242, 254, 0.5);
    }

    .search-bar {
      display: flex;
      align-items: center;
      background: rgba(255, 255, 255, 0.05);
      backdrop-filter: blur(4px);
      border-radius: 60px;
      padding: 6px 16px;
      border: 1px solid var(--glass-edge);
      gap: 8px;
    }
    .search-bar input {
      background: transparent;
      border: none;
      padding: 8px 0;
      color: white;
      outline: none;
      width: 200px;
      font-size: 0.85rem;
    }
    .search-bar input::placeholder {
      color: var(--text-muted);
    }
    .search-bar button {
      background: none;
      border: none;
      color: var(--accent-neon);
      cursor: pointer;
      font-size: 1rem;
    }

    .cart-wrapper {
      position: relative;
      background: rgba(108, 92, 231, 0.2);
      padding: 8px 14px;
      border-radius: 40px;
      display: flex;
      align-items: center;
      gap: 10px;
      cursor: pointer;
      backdrop-filter: blur(4px);
      transition: 0.2s;
    }
    .cart-wrapper:hover {
      background: rgba(108, 92, 231, 0.4);
    }
    .cart-count {
      background: var(--accent-pink);
      border-radius: 40px;
      padding: 0px 8px;
      font-weight: 700;
      font-size: 0.75rem;
    }
    .mobile-toggle {
      display: none;
      background: none;
      border: none;
      color: white;
      font-size: 1.6rem;
      cursor: pointer;
    }

    /* hero section with neon */
    .hero {
      background: radial-gradient(ellipse at 70% 30%, rgba(108, 92, 231, 0.2), transparent);
      padding: 70px 0 60px;
      text-align: center;
      border-bottom: 1px solid rgba(0, 242, 254, 0.2);
    }
    .hero h1 {
      font-size: 3.5rem;
      font-weight: 700;
      background: linear-gradient(145deg, #ffffff, #b1b9ff);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
    }
    .hero .highlight {
      background: linear-gradient(145deg, var(--accent-neon), var(--accent-pink));
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
    }
    .btn-group {
      margin-top: 32px;
      display: flex;
      gap: 18px;
      justify-content: center;
      flex-wrap: wrap;
    }
    .btn {
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      font-family: inherit;
      transition: 0.2s;
      display: inline-flex;
      align-items: center;
      gap: 10px;
    }
    .btn-primary {
      background: linear-gradient(95deg, var(--primary-glow), var(--accent-neon));
      color: #0a0c15;
      box-shadow: 0 0 12px rgba(108, 92, 231, 0.6);
    }
    .btn-primary:hover {
      transform: scale(1.02);
      box-shadow: 0 0 22px rgba(0, 242, 254, 0.7);
    }
    .btn-outline {
      background: transparent;
      border: 1.5px solid var(--accent-neon);
      color: var(--accent-neon);
    }
    .btn-outline:hover {
      background: rgba(0, 242, 254, 0.1);
    }

    /* section titles */
    .section {
      padding: 56px 0;
    }
    .section-title {
      text-align: center;
      margin-bottom: 42px;
    }
    .section-title h2 {
      font-size: 2.2rem;
      font-weight: 600;
      display: inline-block;
      background: linear-gradient(120deg, #fff, #9ca3ff);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
    }
    .section-title p {
      color: var(--text-muted);
      margin-top: 8px;
    }

    /* category grid glassmorphic */
    .grid-cats {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
      gap: 24px;
    }
    .cat-card {
      background: var(--card-bg);
      backdrop-filter: blur(8px);
      border: 1px solid var(--glass-edge);
      border-radius: var(--border-radius-sm);
      padding: 24px 12px;
      text-align: center;
      transition: all 0.25s ease;
      cursor: pointer;
    }
    .cat-card i {
      font-size: 2.4rem;
      background: linear-gradient(135deg, var(--accent-neon), var(--accent-pink));
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
    }
    .cat-card h4 {
      margin-top: 12px;
      font-weight: 500;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      border-color: var(--accent-neon);
      box-shadow: 0 12px 28px -8px rgba(0, 242, 254, 0.2);
    }

    /* products grid */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
      gap: 28px;
    }
    .product-card {
      background: var(--card-bg);
      backdrop-filter: blur(12px);
      border: 1px solid rgba(255, 255, 255, 0.05);
      border-radius: 28px;
      overflow: hidden;
      transition: 0.2s;
    }
    .product-card:hover {
      transform: translateY(-6px);
      border-color: var(--primary-glow);
      box-shadow: var(--shadow-float);
    }
    .product-img {
      width: 100%;
      height: 200px;
      object-fit: cover;
      display: block;
    }
    .product-info {
      padding: 18px;
    }
    .product-title {
      font-weight: 600;
      font-size: 1.1rem;
    }
    .price-block {
      display: flex;
      align-items: baseline;
      gap: 12px;
      margin: 12px 0;
    }
    .current-price {
      font-size: 1.4rem;
      font-weight: 700;
      color: var(--accent-neon);
    }
    .old-price {
      font-size: 0.85rem;
      color: var(--text-muted);
      text-decoration: line-through;
    }
    .rating {
      color: #fbbf24;
      font-size: 0.8rem;
    }
    .product-actions {
      display: flex;
      gap: 12px;
      margin-top: 10px;
    }
    .add-cart {
      background: linear-gradient(95deg, #2a2f4b, #1f253f);
      border: none;
      padding: 10px;
      border-radius: 40px;
      font-weight: 600;
      color: white;
      flex: 1;
      cursor: pointer;
      font-family: inherit;
      transition: 0.2s;
    }
    .add-cart:hover {
      background: var(--primary-glow);
      color: #010101;
    }
    .wishlist {
      background: rgba(255, 255, 255, 0.05);
      border: none;
      border-radius: 40px;
      width: 42px;
      cursor: pointer;
      color: #f472b6;
    }

    /* flash sale redesign */
    .flash-deal {
      background: linear-gradient(125deg, #101624, #0b0e1a);
      border-radius: 40px;
      display: flex;
      flex-wrap: wrap;
      gap: 30px;
      border: 1px solid rgba(0, 242, 254, 0.3);
      overflow: hidden;
    }
    .deal-img {
      flex: 1.2;
      min-height: 300px;
      background: url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80') center/cover;
    }
    .deal-content {
      flex: 1;
      padding: 32px;
    }
    .timer {
      display: flex;
      gap: 16px;
      margin: 20px 0;
    }
    .time-block {
      background: #0f121f;
      padding: 12px 16px;
      border-radius: 24px;
      text-align: center;
      min-width: 70px;
      border: 1px solid var(--primary-glow);
    }
    .time-block span:first-child {
      font-size: 1.6rem;
      font-weight: 700;
      color: var(--accent-neon);
    }

    /* testimonials */
    .testimonial-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding-bottom: 12px;
    }
    .testimonial-card {
      min-width: 300px;
      background: rgba(17, 21, 31, 0.7);
      backdrop-filter: blur(8px);
      border-radius: 28px;
      padding: 24px;
      border: 1px solid var(--glass-edge);
    }

    /* newsletter */
    .newsletter-glow {
      background: linear-gradient(115deg, #12172a, #070b14);
      border-radius: 40px;
      padding: 48px 32px;
      text-align: center;
      border: 1px solid rgba(108, 92, 231, 0.4);
    }
    .newsletter-group {
      display: flex;
      justify-content: center;
      gap: 12px;
      flex-wrap: wrap;
      margin-top: 24px;
    }
    .newsletter-group input {
      padding: 14px 20px;
      border-radius: 60px;
      background: #0a0e1a;
      border: 1px solid #2d3250;
      color: white;
      width: 280px;
      outline: none;
    }

    footer {
      border-top: 1px solid rgba(108, 92, 231, 0.2);
      padding: 40px 0;
      margin-top: 20px;
      color: var(--text-muted);
    }

    @media (max-width: 860px) {
      .main-nav { display: none; }
      .mobile-toggle { display: block; }
      .header-inner { flex-wrap: wrap; }
      .hero h1 { font-size: 2.4rem; }
    }
    @media (max-width: 580px) {
      .search-bar input { width: 130px; }
      .products-grid { grid-template-columns: 1fr; }
    }
    .mobile-menu-drawer {
      display: none;
      background: #0c1020cc;
      backdrop-filter: blur(20px);
      padding: 20px;
      border-top: 1px solid var(--primary-glow);
    }
    .mobile-menu-drawer ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 16px;
    }
    .mobile-menu-drawer a {
      color: white;
      text-decoration: none;
      font-weight: 500;
    }
    .badge-new {
      background: var(--success);
      font-size: 0.7rem;
      padding: 4px 8px;
      border-radius: 40px;
      display: inline-block;
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display: flex; align-items: center; gap: 20px;">
      <button class="mobile-toggle" id="mobileMenuToggle"><i class="fas fa-bolt"></i></button>
      <div class="brand"><i class="fas fa-crown"></i> Nebula<span style="color:#00f2fe;">Store</span></div>
    </div>
    <nav class="main-nav">
      <ul>
        <li><a href="#"><i class="fas fa-compass"></i> Explore</a></li>
        <li><a href="#" id="catShortcut"><i class="fas fa-shapes"></i> Categories</a></li>
        <li><a href="#deals"><i class="fas fa-bolt"></i> Flash Sale</a></li>
        <li><a href="#"><i class="fas fa-gem"></i> Premium</a></li>
      </ul>
    </nav>
    <div style="display: flex; gap: 12px; align-items: center;">
      <div class="search-bar">
        <input type="text" id="globalSearch" placeholder="Search product...">
        <button id="searchTrigger"><i class="fas fa-search"></i></button>
      </div>
      <div class="cart-wrapper" id="cartBtn">
        <i class="fas fa-shopping-bag"></i>
        <span>Cart</span>
        <span class="cart-count" id="cartCounter">0</span>
      </div>
    </div>
  </div>
  <div class="mobile-menu-drawer" id="mobileDrawer">
    <ul>
      <li><a href="#">✨ Home</a></li>
      <li><a href="#">🔥 Trending</a></li>
      <li><a href="#deals">⏳ Deals</a></li>
      <li><a href="#newsletter">📧 Subscribe</a></li>
    </ul>
  </div>
</header>

<main>
  <!-- Hero revamped -->
  <section class="hero">
    <div class="container">
      <h1>Step into <span class="highlight">future</span> of style</h1>
      <p style="max-width: 640px; margin: 16px auto; color: #b9c3e6;">Limitless gadgets, streetwear & tech — all with cosmic delivery.</p>
      <div class="btn-group">
        <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-store"></i> Shop Collection</button>
        <button class="btn btn-outline" id="exploreDealsBtn"><i class="fas fa-gift"></i> Flash Deals</button>
      </div>
    </div>
  </section>

  <!-- Categories section -->
  <section class="section container">
    <div class="section-title">
      <h2>Cosmic categories</h2>
      <p>hover & explore</p>
    </div>
    <div class="grid-cats" id="categoriesContainer"></div>
  </section>

  <!-- Products grid -->
  <section class="section container" id="productsSection">
    <div class="section-title">
      <h2>✨ Trending now</h2>
      <p>best sellers with interstellar vibes</p>
    </div>
    <div class="products-grid" id="productsContainer"></div>
  </section>

  <!-- Flash sale reimagined -->
  <section id="deals" class="section container">
    <div class="section-title">
      <h2>⚡ Neon drop</h2>
      <p>limited hours • exclusive discount</p>
    </div>
    <div class="flash-deal">
      <div class="deal-img"></div>
      <div class="deal-content">
        <h2 style="font-size: 1.8rem;">MacBook Air M2 <span style="color:#ff6bcb;">Nebula</span></h2>
        <p>Ultra‑thin, stellar performance. 17% off for the next hours.</p>
        <div class="timer" id="dealTimerBox">
          <div class="time-block"><span id="dealDays">0</span><div>Days</div></div>
          <div class="time-block"><span id="dealHours">00</span><div>Hrs</div></div>
          <div class="time-block"><span id="dealMinutes">00</span><div>Min</div></div>
          <div class="time-block"><span id="dealSeconds">00</span><div>Sec</div></div>
        </div>
        <div style="display: flex; gap: 14px; align-items: baseline; flex-wrap: wrap;">
          <span class="current-price" style="font-size: 2rem;">$999</span>
          <span class="old-price" style="font-size: 1.2rem;">$1,199</span>
          <span style="background: #ff3366; padding: 5px 12px; border-radius: 40px;">-17%</span>
        </div>
        <button class="btn btn-primary" id="quickDealAdd" style="margin-top: 20px;"><i class="fas fa-zap"></i> Add to bag</button>
      </div>
    </div>
  </section>

  <!-- Testimonials -->
  <section class="section container">
    <div class="section-title"><h2>Voices from the nebula</h2><p>⭐ real cosmic shoppers</p></div>
    <div class="testimonial-scroll">
      <div class="testimonial-card"><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star"></i><p style="margin: 12px 0;">“Out of this world delivery, the quality is insane.”</p><b>— Luna C.</b></div>
      <div class="testimonial-card"><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star-half-alt"></i><p>“Love the design and fast support. Will buy again.”</p><b>— Marcus V.</b></div>
      <div class="testimonial-card"><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star" style="color:#fbbf24;"></i><i class="fas fa-star"></i><p>“The flash sale prices are unbeatable! Got my headphones.”</p><b>— Sophie K.</b></div>
    </div>
  </section>

  <!-- Newsletter Glow -->
  <section class="section container" id="newsletter">
    <div class="newsletter-glow">
      <h3><i class="fas fa-envelope-open-text"></i> Interstellar access</h3>
      <p>Subscribe for secret deals + 10% off your first order</p>
      <div class="newsletter-group">
        <input type="email" id="subEmail" placeholder="your@cosmos.com">
        <button class="btn btn-primary" id="subscribeNewsBtn">Subscribe →</button>
      </div>
      <div id="newsFeedback" style="margin-top: 12px; font-size: 0.85rem;"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 28px;">
    <div><i class="fas fa-gem"></i> NebulaStore — where innovation meets style</div>
    <div>© <span id="currentYear"></span> • Cyber commerce demo</div>
  </div>
</footer>

<script>
  // ==================== DATA ====================
  const CATEGORIES = [
    { id: 'tech', name: 'Cyber Tech', icon: 'fa-microchip' },
    { id: 'wear', name: 'Neo Wear', icon: 'fa-vest' },
    { id: 'audio', name: 'Audio Pods', icon: 'fa-headphones' },
    { id: 'foot', name: 'Hover Kicks', icon: 'fa-shoe-prints' },
    { id: 'access', name: 'Accessories', icon: 'fa-gem' },
    { id: 'gaming', name: 'Gaming', icon: 'fa-gamepad' }
  ];

  const PRODUCTS = [
    { id: 101, title: 'NeoPhone 15 Edge', price: 1299, oldPrice: 1499, rating: 5, reviews: 203, img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'tech', badge: 'Limited' },
    { id: 102, title: 'ZenBook Pro', price: 1799, rating: 4, reviews: 112, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'tech' },
    { id: 103, title: 'Orbit Watch Ultra', price: 459, oldPrice: 599, rating: 5, reviews: 340, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'access', badge: '-23%' },
    { id: 104, title: 'CyberKicks 3000', price: 189, rating: 4, reviews: 87, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'foot' },
    { id: 105, title: 'A7C Mirrorless', price: 2199, rating: 5, reviews: 65, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gaming' },
    { id: 106, title: 'Aether Backpack', price: 99, oldPrice: 149, rating: 4, reviews: 212, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'access', badge: 'Sale' },
    { id: 107, title: 'Spatial Headphones X', price: 349, rating: 5, reviews: 178, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'audio' }
  ];

  let cartItemCount = 0;
  const cartCountSpan = document.getElementById('cartCounter');
  const productsContainer = document.getElementById('productsContainer');
  const categoriesContainer = document.getElementById('categoriesContainer');

  function updateCartUI() { cartCountSpan.innerText = cartItemCount; }

  function addToCartById(pid) {
    cartItemCount++;
    updateCartUI();
    const btn = document.querySelector(`.add-cart[data-pid='${pid}']`);
    if(btn) {
      const original = btn.innerHTML;
      btn.innerHTML = '✓ Added';
      setTimeout(() => btn.innerHTML = original, 900);
    } else {
      alert('✨ Item added to your cosmic bag');
    }
  }

  function renderProducts(filterText = '') {
    let filtered = PRODUCTS;
    if(filterText.trim()) {
      const q = filterText.toLowerCase();
      filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
    }
    productsContainer.innerHTML = filtered.map(p => `
      <div class="product-card">
        <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
        <div class="product-info">
          <div class="product-title">${escapeHtml(p.title)} ${p.badge ? `<span class="badge-new">${p.badge}</span>` : ''}</div>
          <div class="price-block">
            <span class="current-price">$${p.price.toLocaleString()}</span>
            ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
          </div>
          <div class="rating">${'★'.repeat(Math.floor(p.rating))}${p.rating % 1 ? '½' : ''} (${p.reviews})</div>
          <div class="product-actions">
            <button class="add-cart" data-pid="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
            <button class="wishlist"><i class="far fa-heart"></i></button>
          </div>
        </div>
      </div>
    `).join('');
    document.querySelectorAll('.add-cart').forEach(btn => {
      btn.addEventListener('click', (e) => {
        const id = parseInt(btn.dataset.pid);
        addToCartById(id);
      });
    });
  }

  function renderCategories() {
    categoriesContainer.innerHTML = CATEGORIES.map(c => `
      <div class="cat-card" data-cat="${c.name}">
        <i class="fas ${c.icon}"></i>
        <h4>${c.name}</h4>
        <span style="font-size: 12px; opacity: 0.7;">explore</span>
      </div>
    `).join('');
    document.querySelectorAll('.cat-card').forEach(card => {
      card.addEventListener('click', () => {
        const catName = card.getAttribute('data-cat');
        document.getElementById('globalSearch').value = catName;
        renderProducts(catName);
        document.getElementById('productsSection').scrollIntoView({ behavior: 'smooth' });
      });
    });
  }

  function escapeHtml(str) { return String(str).replace(/[&<>]/g, function(m){ if(m === '&') return '&amp;'; if(m === '<') return '&lt;'; if(m === '>') return '&gt;'; return m;}); }

  // Search events
  document.getElementById('searchTrigger').addEventListener('click', () => {
    renderProducts(document.getElementById('globalSearch').value);
  });
  document.getElementById('globalSearch').addEventListener('keypress', (e) => {
    if(e.key === 'Enter') renderProducts(e.target.value);
  });

  // Mobile drawer
  const mobileToggle = document.getElementById('mobileMenuToggle');
  const drawer = document.getElementById('mobileDrawer');
  mobileToggle.addEventListener('click', () => {
    drawer.style.display = drawer.style.display === 'none' || !drawer.style.display ? 'block' : 'none';
  });

  // deal timer
  function startDealTimer() {
    const targetTime = new Date().getTime() + (27 * 3600 * 1000) + (15 * 60 * 1000);
    function tick() {
      const diff = targetTime - new Date().getTime();
      if(diff <= 0) { document.getElementById('dealTimerBox').innerHTML = "<div class='time-block'>EXPIRED</div>"; return; }
      const days = Math.floor(diff / (1000*60*60*24));
      const hours = Math.floor((diff % (86400000)) / 3600000);
      const mins = Math.floor((diff % 3600000) / 60000);
      const secs = Math.floor((diff % 60000) / 1000);
      document.getElementById('dealDays').innerText = days;
      document.getElementById('dealHours').innerText = String(hours).padStart(2,'0');
      document.getElementById('dealMinutes').innerText = String(mins).padStart(2,'0');
      document.getElementById('dealSeconds').innerText = String(secs).padStart(2,'0');
    }
    tick(); setInterval(tick, 1000);
  }
  startDealTimer();

  // buttons actions
  document.getElementById('shopNowBtn').addEventListener('click', () => document.getElementById('productsSection').scrollIntoView({ behavior: 'smooth' }));
  document.getElementById('exploreDealsBtn').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
  document.getElementById('quickDealAdd').addEventListener('click', () => { cartItemCount++; updateCartUI(); alert('⚡ MacBook added to cart!'); });
  document.getElementById('cartBtn').addEventListener('click', () => alert(`✨ Cart contains ${cartItemCount} item(s). Demo checkout ready.`));
  document.getElementById('subscribeNewsBtn').addEventListener('click', () => {
    const email = document.getElementById('subEmail').value.trim();
    const feed = document.getElementById('newsFeedback');
    if(!email || !email.includes('@')) { feed.innerText = 'Enter valid cosmic email'; feed.style.color='#ff8c8c'; }
    else { feed.innerText = '🚀 You’re in! Nebula perks incoming.'; feed.style.color='#00f2fe'; document.getElementById('subEmail').value = ''; setTimeout(()=> feed.innerText='', 3000);}
  });
  document.getElementById('catShortcut').addEventListener('click', (e) => { e.preventDefault(); document.querySelector('.grid-cats').scrollIntoView({ behavior: 'smooth' }); });

  // initial
  renderCategories();
  renderProducts('');
  updateCartUI();
  document.getElementById('currentYear').innerText = new Date().getFullYear();
</script>
</body>
</html>
