<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Premium E-Commerce Experience</title>

    <!-- Fonts & Icons -->
    <link href="[fonts.googleapis.com](https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Poppins:wght@600;700;800&display=swap)" rel="stylesheet">
    <link rel="stylesheet" href="[cdnjs.cloudflare.com](https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css)">

    <style>
        :root {
            --bg: #ffffff;
            --primary: #0f172a;
            --accent: #3b82f6;
            --accent-gradient: linear-gradient(135deg, #3b82f6 0%, #1d4ed8 100%);
            --secondary: #6366f1;
            --muted: #64748b;
            --light-muted: #94a3b8;
            --card: #ffffff;
            --surface: #f8fafc;
            --success: #10b981;
            --warning: #f59e0b;
            --danger: #ef4444;
            --radius: 16px;
            --radius-lg: 24px;
            --shadow: 0 10px 40px rgba(0, 0, 0, 0.08);
            --shadow-hover: 0 20px 60px rgba(0, 0, 0, 0.12);
            --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            --container: 1280px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html,
        body {
            height: 100%;
            scroll-behavior: smooth;
        }

        body {
            margin: 0;
            font-family: 'Inter', system-ui, -apple-system, 'Segoe UI', Roboto, 'Helvetica Neue', Arial;
            color: var(--primary);
            background: var(--bg);
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            line-height: 1.6;
        }

        a {
            color: inherit;
            text-decoration: none;
            transition: var(--transition);
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* Header - Modern Sticky */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(15, 23, 42, 0.06);
            transition: var(--transition);
        }

        .header-scrolled {
            background: rgba(255, 255, 255, 0.98);
            box-shadow: var(--shadow);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 0;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 12px;
            font-family: 'Poppins', sans-serif;
            font-weight: 800;
            font-size: 24px;
            color: var(--primary);
            letter-spacing: -0.02em;
        }

        .brand .accent {
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        nav.main-nav {
            display: flex;
            align-items: center;
            gap: 24px;
        }

        nav.main-nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
            margin: 0;
            padding: 0;
            align-items: center;
        }

        nav.main-nav li a {
            display: flex;
            gap: 8px;
            align-items: center;
            padding: 10px 16px;
            border-radius: 12px;
            color: var(--muted);
            font-weight: 500;
            transition: var(--transition);
            position: relative;
        }

        nav.main-nav li a:hover {
            background: var(--surface);
            color: var(--primary);
            transform: translateY(-1px);
        }

        nav.main-nav li a.active {
            color: var(--accent);
            background: rgba(59, 130, 246, 0.08);
        }

        nav.main-nav li a.active::after {
            content: '';
            position: absolute;
            bottom: -2px;
            left: 16px;
            right: 16px;
            height: 2px;
            background: var(--accent-gradient);
            border-radius: 2px;
        }

        .search {
            display: flex;
            align-items: center;
            gap: 12px;
            background: var(--surface);
            padding: 12px 20px;
            border-radius: 16px;
            min-width: 280px;
            border: 1px solid transparent;
            transition: var(--transition);
        }

        .search:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 0 4px rgba(59, 130, 246, 0.1);
            transform: translateY(-1px);
        }

        .search input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            font-size: 14px;
            color: var(--primary);
        }

        .search input::placeholder {
            color: var(--light-muted);
        }

        .icon-btn {
            background: transparent;
            border: 0;
            cursor: pointer;
            color: var(--muted);
            font-size: 18px;
            padding: 8px;
            border-radius: 10px;
            transition: var(--transition);
            position: relative;
        }

        .icon-btn:hover {
            background: var(--surface);
            color: var(--primary);
            transform: translateY(-1px);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .cart {
            position: relative;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 8px 12px;
            border-radius: 12px;
            background: var(--surface);
            transition: var(--transition);
        }

        .cart:hover {
            background: rgba(59, 130, 246, 0.08);
            color: var(--accent);
            transform: translateY(-1px);
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--accent-gradient);
            color: white;
            font-size: 11px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: inline-grid;
            place-items: center;
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.1); }
            100% { transform: scale(1); }
        }

        .mobile-toggle {
            display: none;
            border: 0;
            background: transparent;
            font-size: 24px;
            cursor: pointer;
            padding: 8px;
            border-radius: 10px;
            transition: var(--transition);
        }

        .mobile-toggle:hover {
            background: var(--surface);
        }

        /* Hero - Modern Gradient */
        .hero {
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            background: 
                linear-gradient(135deg, rgba(15, 23, 42, 0.9) 0%, rgba(30, 58, 138, 0.8) 100%),
                url('[images.unsplash.com](https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=80)') center/cover no-repeat;
            color: white;
            min-height: 560px;
            padding: 80px 24px;
            border-radius: 0 0 var(--radius-lg) var(--radius-lg);
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: radial-gradient(circle at 50% 50%, rgba(59, 130, 246, 0.2) 0%, transparent 50%);
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 800px;
        }

        .hero h1 {
            font-family: 'Poppins';
            font-size: 56px;
            font-weight: 800;
            margin: 0 0 16px;
            letter-spacing: -0.02em;
            line-height: 1.1;
            background: linear-gradient(135deg, #ffffff 0%, #e0e7ff 100%);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .hero p {
            margin: 0 0 32px;
            opacity: 0.95;
            font-size: 18px;
            line-height: 1.6;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 12px;
            padding: 16px 32px;
            border-radius: 16px;
            font-weight: 600;
            font-size: 16px;
            cursor: pointer;
            border: 0;
            transition: var(--transition);
            text-decoration: none;
            position: relative;
            overflow: hidden;
        }

        .btn::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
            transition: left 0.5s ease;
        }

        .btn:hover::before {
            left: 100%;
        }

        .btn-primary {
            background: var(--accent-gradient);
            color: white;
            box-shadow: 0 10px 30px rgba(59, 130, 246, 0.3);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 15px 40px rgba(59, 130, 246, 0.4);
        }

        .btn-ghost {
            background: transparent;
            border: 2px solid rgba(255, 255, 255, 0.2);
            color: white;
        }

        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.1);
            border-color: rgba(255, 255, 255, 0.3);
            transform: translateY(-2px);
        }

        /* Sections */
        .section {
            padding: 80px 0;
        }

        .section .title {
            text-align: center;
            margin-bottom: 48px;
        }

        .section-title {
            font-family: 'Poppins';
            font-size: 36px;
            font-weight: 700;
            margin-bottom: 12px;
            letter-spacing: -0.02em;
        }

        .section-subtitle {
            color: var(--muted);
            font-size: 18px;
            max-width: 600px;
            margin: 0 auto;
        }

        .grid {
            display: grid;
            gap: 24px;
        }

        /* Categories - Modern Cards */
        .categories {
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
        }

        .cat-card {
            background: var(--card);
            border-radius: var(--radius);
            padding: 24px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: var(--transition);
            border: 1px solid rgba(15, 23, 42, 0.04);
            cursor: pointer;
            position: relative;
            overflow: hidden;
        }

        .cat-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: var(--accent-gradient);
            transform: scaleX(0);
            transition: transform 0.3s ease;
        }

        .cat-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
        }

        .cat-card:hover::before {
            transform: scaleX(1);
        }

        .cat-card .icon {
            font-size: 32px;
            margin-bottom: 16px;
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            transition: var(--transition);
        }

        .cat-card:hover .icon {
            transform: scale(1.1);
        }

        .cat-card h4 {
            margin: 8px 0 0;
            font-size: 16px;
            font-weight: 600;
        }

        .cat-card .muted {
            font-size: 14px;
            margin-top: 4px;
            opacity: 0.7;
            transition: var(--transition);
        }

        .cat-card:hover .muted {
            opacity: 1;
        }

        /* Products - Modern Cards */
        .products {
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
        }

        .product {
            background: var(--card);
            border-radius: var(--radius);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            box-shadow: var(--shadow);
            transition: var(--transition);
            border: 1px solid rgba(15, 23, 42, 0.04);
            position: relative;
        }

        .product:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-hover);
        }

        .product-badge {
            position: absolute;
            top: 16px;
            left: 16px;
            background: var(--success);
            color: white;
            padding: 6px 12px;
            border-radius: 8px;
            font-weight: 700;
            font-size: 12px;
            z-index: 2;
        }

        .product-badge.sale {
            background: var(--danger);
        }

        .product-badge.new {
            background: var(--accent);
        }

        .product-image {
            width: 100%;
            height: 240px;
            object-fit: cover;
            display: block;
            transition: var(--transition);
        }

        .product:hover .product-image {
            transform: scale(1.05);
        }

        .product-body {
            padding: 20px;
            display: flex;
            flex-direction: column;
            gap: 12px;
            flex: 1;
        }

        .product h5 {
            margin: 0;
            font-size: 16px;
            font-weight: 600;
            line-height: 1.4;
        }

        .product-category {
            color: var(--muted);
            font-size: 14px;
            margin-bottom: 8px;
        }

        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 12px;
            margin-top: auto;
        }

        .price {
            font-weight: 700;
            color: var(--primary);
            font-size: 18px;
        }

        .old-price {
            color: var(--muted);
            text-decoration: line-through;
            font-weight: 500;
            font-size: 14px;
        }

        .rating {
            color: #ffb800;
            font-size: 14px;
            display: flex;
            align-items: center;
            gap: 4px;
        }

        .review-count {
            color: var(--muted);
            font-size: 12px;
        }

        .product-footer {
            padding: 16px 20px 20px;
            display: flex;
            gap: 12px;
            border-top: 1px solid rgba(15, 23, 42, 0.04);
        }

        .add-btn {
            flex: 1;
            background: var(--primary);
            color: white;
            border: 0;
            padding: 12px;
            border-radius: 12px;
            cursor: pointer;
            font-weight: 600;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }

        .add-btn:hover {
            background: var(--accent);
            transform: translateY(-1px);
        }

        .wish-btn {
            background: transparent;
            border: 1px solid rgba(15, 23, 42, 0.1);
            padding: 10px;
            border-radius: 10px;
            cursor: pointer;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .wish-btn:hover {
            background: rgba(239, 68, 68, 0.1);
            border-color: var(--danger);
            color: var(--danger);
        }

        .wish-btn.active {
            background: var(--danger);
            color: white;
            border-color: var(--danger);
        }

        /* Deal Section - Modern */
        .deal {
            display: flex;
            gap: 40px;
            background: var(--surface);
            border-radius: var(--radius-lg);
            overflow: hidden;
            align-items: stretch;
            box-shadow: var(--shadow);
        }

        .deal-image {
            width: 50%;
            height: 400px;
            object-fit: cover;
            display: block;
            transition: var(--transition);
        }

        .deal:hover .deal-image {
            transform: scale(1.02);
        }

        .deal-content {
            padding: 40px;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal h3 {
            font-family: 'Poppins';
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 12px;
            letter-spacing: -0.02em;
        }

        .deal-description {
            color: var(--muted);
            margin-bottom: 24px;
            line-height: 1.6;
        }

        .timer {
            display: flex;
            gap: 16px;
            margin: 24px 0;
        }

        .time-box {
            background: var(--primary);
            color: white;
            padding: 16px;
            border-radius: 12px;
            min-width: 80px;
            text-align: center;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .time-value {
            font-size: 24px;
            font-weight: 700;
            margin-bottom: 4px;
        }

        .time-label {
            font-size: 12px;
            opacity: 0.9;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .deal-price {
            display: flex;
            align-items: center;
            gap: 16px;
            margin-bottom: 16px;
        }

        .current-price {
            font-size: 32px;
            font-weight: 800;
            color: var(--primary);
        }

        .original-price {
            color: var(--muted);
            text-decoration: line-through;
            font-size: 20px;
        }

        .discount-badge {
            background: var(--danger);
            color: white;
            padding: 8px 16px;
            border-radius: 8px;
            font-weight: 700;
            font-size: 14px;
        }

        .stock-info {
            color: var(--muted);
            margin-bottom: 24px;
            font-size: 14px;
        }

        .stock-info strong {
            color: var(--danger);
        }

        /* Testimonials - Modern Cards */
        .testimonials {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 24px;
        }

        .testimonial {
            background: var(--card);
            padding: 32px;
            border-radius: var(--radius);
            box-shadow: var(--shadow);
            border: 1px solid rgba(15, 23, 42, 0.04);
            transition: var(--transition);
        }

        .testimonial:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-hover);
        }

        .testimonial-rating {
            color: #ffb800;
            font-size: 16px;
            margin-bottom: 16px;
        }

        .testimonial-text {
            font-size: 16px;
            line-height: 1.6;
            color: var(--primary);
            margin-bottom: 24px;
            position: relative;
        }

        .testimonial-text::before {
            content: '"';
            font-size: 48px;
            color: var(--accent);
            opacity: 0.1;
            position: absolute;
            top: -20px;
            left: -10px;
            font-family: 'Poppins';
        }

        .testimonial-author {
            display: flex;
            align-items: center;
            gap: 16px;
        }

        .author-avatar {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            object-fit: cover;
            border: 3px solid var(--surface);
        }

        .author-info {
            display: flex;
            flex-direction: column;
            gap: 2px;
        }

        .author-name {
            font-weight: 600;
            font-size: 16px;
        }

        .author-status {
            color: var(--muted);
            font-size: 14px;
        }

        /* Newsletter - Modern */
        .newsletter {
            background: var(--accent-gradient);
            color: white;
            border-radius: var(--radius-lg);
            padding: 60px 40px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .newsletter::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -50%;
            width: 100%;
            height: 200%;
            background: radial-gradient(circle, rgba(255, 255, 255, 0.1) 0%, transparent 70%);
            animation: float 6s ease-in-out infinite;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0px) rotate(0deg); }
            50% { transform: translateY(-20px) rotate(5deg); }
        }

        .newsletter h3 {
            font-family: 'Poppins';
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 16px;
            letter-spacing: -0.02em;
        }

        .newsletter p {
            font-size: 18px;
            margin-bottom: 32px;
            opacity: 0.9;
            max-width: 500px;
            margin-left: auto;
            margin-right: auto;
        }

        .newsletter-form {
            display: flex;
            gap: 16px;
            justify-content: center;
            flex-wrap: wrap;
            max-width: 500px;
            margin: 0 auto;
        }

        .newsletter-input {
            flex: 1;
            min-width: 300px;
            padding: 16px 24px;
            border-radius: 16px;
            border: 0;
            font-size: 16px;
            background: rgba(255, 255, 255, 0.95);
            color: var(--primary);
            transition: var(--transition);
        }

        .newsletter-input:focus {
            outline: none;
            box-shadow: 0 0 0 4px rgba(255, 255, 255, 0.2);
            transform: translateY(-1px);
        }

        .newsletter-input::placeholder {
            color: var(--light-muted);
        }

        .newsletter-btn {
            background: var(--primary);
            color: white;
            border: 0;
            padding: 16px 32px;
            border-radius: 16px;
            font-weight: 600;
            font-size: 16px;
            cursor: pointer;
            transition: var(--transition);
            white-space: nowrap;
        }

        .newsletter-btn:hover {
            background: rgba(15, 23, 42, 0.9);
            transform: translateY(-1px);
        }

        .newsletter-message {
            margin-top: 16px;
            font-size: 14px;
            padding: 12px 20px;
            border-radius: 12px;
            display: none;
        }

        /* Footer - Modern */
        footer {
            margin-top: 80px;
            padding: 60px 0 40px;
            background: var(--surface);
            border-top: 1px solid rgba(15, 23, 42, 0.06);
        }

        .footer-content {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 40px;
        }

        .footer-brand {
            max-width: 400px;
        }

        .footer-brand .logo {
            font-family: 'Poppins';
            font-size: 24px;
            font-weight: 800;
            margin-bottom: 16px;
            letter-spacing: -0.02em;
        }

        .footer-description {
            color: var(--muted);
            line-height: 1.6;
            margin-bottom: 24px;
        }

        .social-links {
            display: flex;
            gap: 12px;
        }

        .social-link {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 44px;
            height: 44px;
            background: var(--card);
            border-radius: 12px;
            color: var(--muted);
            transition: var(--transition);
            border: 1px solid rgba(15, 23, 42, 0.06);
        }

        .social-link:hover {
            background: var(--accent);
            color: white;
            transform: translateY(-2px);
            border-color: var(--accent);
        }

        .footer-column h4 {
            font-weight: 600;
            font-size: 18px;
            margin-bottom: 20px;
            color: var(--primary);
        }

        .footer-links {
            display: flex;
            flex-direction: column;
            gap: 12px;
        }

        .footer-link {
            color: var(--muted);
            transition: var(--transition);
        }

        .footer-link:hover {
            color: var(--accent);
            transform: translateX(4px);
        }

        .footer-bottom {
            text-align: center;
            padding-top: 40px;
            border-top: 1px solid rgba(15, 23, 42, 0.06);
            color: var(--muted);
            font-size: 14px;
        }

        /* Responsive Design */
        @media (max-width: 1200px) {
            .footer-content {
                grid-template-columns: 1fr 1fr;
                gap: 32px;
            }
            
            .deal {
                flex-direction: column;
            }
            
            .deal-image {
                width: 100%;
                height: 300px;
            }
        }

        @media (max-width: 900px) {
            nav.main-nav {
                display: none;
            }

            .mobile-toggle {
                display: inline-block;
            }

            .search {
                min-width: 200px;
            }

            .hero h1 {
                font-size: 40px;
            }

            .section-title {
                font-size: 28px;
            }

            .footer-content {
                grid-template-columns: 1fr;
                gap: 32px;
            }
        }

        @media (max-width: 600px) {
            .container {
                padding: 0 16px;
            }

            .header-inner {
                gap: 16px;
            }

            .search {
                display: none;
            }

            .hero {
                min-height: 480px;
                padding: 60px 16px;
            }

            .hero h1 {
                font-size: 32px;
            }

            .hero p {
                font-size: 16px;
            }

            .btn {
                padding: 14px 24px;
                font-size: 14px;
            }

            .section {
                padding: 60px 0;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .products {
                grid-template-columns: 1fr;
            }

            .testimonials {
                grid-template-columns: 1fr;
            }

            .newsletter-form {
                flex-direction: column;
            }

            .newsletter-input {
                min-width: auto;
            }
        }

        /* Utilities */
        .muted {
            color: var(--muted);
        }

        .text-center {
            text-align: center;
        }

        .mb-4 {
            margin-bottom: 16px;
        }

        .mb-8 {
            margin-bottom: 32px;
        }

        /* Animation Classes */
        .fade-in {
            animation: fadeIn 0.6s ease-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .slide-in {
            animation: slideIn 0.6s ease-out;
        }

        @keyframes slideIn {
            from { opacity: 0; transform: translateX(-30px); }
            to { opacity: 1; transform: translateX(0); }
        }

        /* Loading States */
        .loading {
            opacity: 0.6;
            pointer-events: none;
        }

        .loading::after {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 20px;
            height: 20px;
            margin: -10px 0 0 -10px;
            border: 2px solid rgba(59, 130, 246, 0.3);
            border-top: 2px solid var(--accent);
            border-radius: 50%;
            animation: spin 1s linear infinite;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>
</head>

<body>
    <header id="mainHeader">
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:20px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" aria-label="Primary navigation">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#about"><i class="fas fa-info-circle"></i> About</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:16px;">
                <div class="search" role="search" aria-label="Product search">
                    <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search products" />
                    <button class="icon-btn" id="searchBtn" aria-label="Search">
                        <i class="fas fa-search"></i>
                    </button>
                </div>

                <div class="header-actions" aria-label="Header actions">
                    <button class="icon-btn" title="Account" aria-label="Account">
                        <i class="far fa-user"></i>
                    </button>
                    <button class="icon-btn" title="Wishlist" aria-label="Wishlist">
                        <i class="far fa-heart"></i>
                    </button>
                    <button class="cart" id="cartBtn" title="View cart" aria-label="Cart">
                        <i class="fas fa-shopping-cart"></i>
                        <span class="cart-count" id="cartCount">0</span>
                    </button>
                </div>
            </div>
        </div>

        <!-- Mobile Menu -->
        <div id="mobileMenu" style="display:none; background:var(--bg); border-top:1px solid rgba(15,23,42,0.06);">
            <div class="container" style="padding:20px 0;">
                <nav aria-label="Mobile navigation">
                    <ul style="list-style:none;padding:0;margin:0;display:flex;flex-direction:column;gap:12px;">
                        <li><a href="#" class="active">Home</a></li>
                        <li><a href="#">Categories</a></li>
                        <li><a href="#">Trending</a></li>
                        <li><a href="#deals">Deals</a></li>
                        <li><a href="#about">About</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero Section -->
        <section class="hero">
            <div class="hero-content">
                <h1>Elevate Your Shopping Experience</h1>
                <p>Discover premium products with exclusive deals, fast shipping, and exceptional customer service. Your perfect shopping journey starts here.</p>
                <div>
                    <button class="btn btn-primary" id="shopNow">
                        Shop Now <i class="fas fa-arrow-right"></i>
                    </button>
                    <button class="btn btn-ghost" id="exploreDeals">
                        Explore Deals
                    </button>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section class="section container" aria-labelledby="cat-title">
            <div class="title">
                <h2 class="section-title" id="cat-title">
