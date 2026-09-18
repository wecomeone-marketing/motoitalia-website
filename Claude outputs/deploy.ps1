cd C:\Dev\MotoItalia

Set-Content -Path "index.html" -Encoding utf8 -Value @'
<!doctype html>
<!--
  MOTO ITALIA — Homepage design concept, Phase 1
  Prepared by Wecomeone Marketing And Comms, September 2026

  Every colour, type choice and logo lockup here traces back to the
  finalised Moto Italia brand guidelines (decks.wecomeone.me/moto-italia-branding-2).
  No new brand elements have been introduced.

  Anywhere real photography, video or copy is still pending from the client
  or from Piaggio Group, the block is built at final size and styling with
  a small PLACEHOLDER tag, so swapping in the real asset later is a drop-in.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Moto Italia — Homepage Concept</title>
<meta name="description" content="Piaggio, Vespa, Moto Guzzi and Aprilia — sales and service in Larnaka, Cyprus.">
<link rel="icon" type="image/svg+xml" href="assets/favicon.svg">
<link rel="icon" type="image/png" sizes="32x32" href="assets/favicon-32.png">
<link rel="apple-touch-icon" href="assets/favicon-180.png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
<style>
:root{
  --rosso:#DF0123;
  --nero:#0D0D0D;
  --nero2:#161616;
  --bianco:#F5F3EF;
  --verde:#069147;
  --line:rgba(245,243,239,.14);
  --mut:rgba(245,243,239,.58);
}
*{box-sizing:border-box}
html{scroll-behavior:smooth}
[id]{scroll-margin-top:96px}
body{margin:0;background:var(--nero);color:var(--bianco);font-family:Inter,system-ui,sans-serif;font-weight:400;line-height:1.6;-webkit-font-smoothing:antialiased}
h1,h2,h3,h4{font-family:"Bebas Neue",Inter,sans-serif;font-weight:400;text-transform:uppercase;letter-spacing:.01em;line-height:.94;margin:0}
p{margin:0}
a{color:inherit;text-decoration:none}
img,svg{display:block;max-width:100%}
.wrap{max-width:1240px;margin:0 auto;padding:0 20px}
@media(min-width:760px){.wrap{padding:0 40px}}

.eyebrow{font-family:Inter;font-weight:600;text-transform:uppercase;letter-spacing:.22em;font-size:11.5px;color:var(--mut)}
.eyebrow.on{color:var(--rosso)}
.btn{display:inline-flex;align-items:center;gap:10px;font-family:Inter;font-weight:600;font-size:13.5px;text-transform:uppercase;letter-spacing:.1em;padding:15px 26px;border-radius:2px;transition:opacity .2s}
.btn.fill{background:var(--rosso);color:var(--bianco)}
.btn.line{border:1px solid rgba(245,243,239,.4);color:var(--bianco)}
.btn:hover{opacity:.82}

/* placeholder tag, reused on any block standing in for real photography/video */
.ph{position:relative;overflow:hidden;background-image:
    radial-gradient(120% 140% at 15% 0%, #1c1c1c 0%, #0d0d0d 55%),
    repeating-linear-gradient(120deg, rgba(255,255,255,.02) 0 2px, transparent 2px 44px)}
.ph-tag{position:absolute;right:12px;bottom:12px;font-family:Inter;font-weight:600;font-size:9.5px;letter-spacing:.14em;text-transform:uppercase;color:rgba(245,243,239,.55);background:rgba(0,0,0,.4);border:1px solid rgba(245,243,239,.18);padding:6px 10px;z-index:2}
.moto-mark{position:absolute;opacity:.14;filter:grayscale(1)}
.photo{background-size:cover;background-position:center}
.hero.photo::before,.banner.photo::before{content:'';position:absolute;inset:0;background:linear-gradient(180deg,rgba(13,13,13,.25) 0%,rgba(13,13,13,.45) 55%,rgba(13,13,13,.93) 100%);z-index:1}
.hero .wrap{position:relative;z-index:2}
.banner .in{position:relative;z-index:2}
.bcard.photo::before{content:'';position:absolute;inset:0;background:linear-gradient(180deg,rgba(13,13,13,.1) 0%,rgba(13,13,13,.5) 55%,rgba(13,13,13,.92) 100%);z-index:1}
.bcard h3,.bcard p,.bcard .go{position:relative;z-index:2}

/* reveal-on-scroll */
.rv{opacity:0;transform:translateY(28px);transition:opacity .8s ease,transform .8s ease}
.rv.in{opacity:1;transform:none}

/* header */
header{position:fixed;top:0;left:0;right:0;z-index:100;background:transparent;border-bottom:1px solid transparent;transition:background .3s,border-color .3s}
header.solid{background:rgba(13,13,13,.92);backdrop-filter:blur(6px);border-color:var(--line)}
header .bar{display:flex;align-items:center;gap:20px;height:70px}
.logo{display:flex;align-items:center}
.logo img{height:28px;width:auto;display:block}
nav.main{display:none;margin-left:auto;align-items:center;gap:28px}
nav.main a{font-family:"Bebas Neue";font-size:15px;letter-spacing:.06em;color:var(--mut)}
nav.main a:hover{color:var(--bianco)}
nav.main a[href="#contact"]{color:var(--rosso)}
nav.main a[href="#contact"]:hover{color:var(--rosso)}
.mmenu a[href="#contact"]{color:var(--rosso)}
.hamb{margin-left:auto;width:38px;height:38px;border:1px solid var(--line);display:flex;flex-direction:column;justify-content:center;align-items:center;gap:5px;background:none;cursor:pointer}
.hamb span{width:18px;height:1.5px;background:var(--bianco)}
@media(min-width:960px){nav.main{display:flex}.hamb{display:none}}

/* mobile menu */
.mmenu{position:fixed;inset:0;background:var(--nero);z-index:99;display:flex;flex-direction:column;justify-content:center;gap:26px;padding:0 32px;transform:translateY(-100%);transition:transform .35s ease}
.mmenu.open{transform:translateY(0)}
.mmenu a{font-family:"Bebas Neue";font-size:34px}
@media(min-width:960px){.mmenu{display:none}}

/* hero */
.hero{position:relative;min-height:100svh;display:flex;flex-direction:column;justify-content:flex-end;padding:120px 0 64px}
.hero .moto-mark{right:-8%;bottom:-6%;width:74%}
.hero h1{font-size:clamp(46px,13vw,128px);margin-top:16px}
.hero h1 em{font-style:normal;color:var(--rosso)}
.hero .lede{max-width:520px;color:var(--mut);font-size:16.5px;margin-top:20px}
.hero .ctas{display:flex;flex-wrap:wrap;gap:14px;margin-top:34px}
.scrollcue{position:absolute;left:20px;bottom:26px;z-index:2;display:flex;align-items:center;gap:10px;font-family:Inter;font-size:10.5px;letter-spacing:.18em;text-transform:uppercase;color:var(--mut)}
.scrollcue .ln{width:1px;height:30px;background:linear-gradient(var(--rosso),transparent)}
@media(min-width:760px){.wrap{padding-left:40px}.hero{padding:150px 0 90px}}

section{padding:80px 0}
@media(min-width:760px){section{padding:120px 0}}

/* logo marquee */
.marquee-strip{background:var(--nero2);border-top:1px solid var(--line);border-bottom:1px solid var(--line);overflow:hidden;padding:22px 0}
.marquee-track{display:flex;width:max-content;animation:mq 48s linear infinite}
.mq-group{display:flex;align-items:center;gap:52px;padding-right:52px;font-family:"Bebas Neue";font-size:21px;letter-spacing:.08em;color:var(--mut);white-space:nowrap}
.mq-group i{width:5px;height:5px;border-radius:50%;background:var(--verde);display:inline-block}
@keyframes mq{from{transform:translateX(0)}to{transform:translateX(-50%)}}
@media(prefers-reduced-motion:reduce){.marquee-track{animation:none}}
.sec-head{max-width:640px}
.sec-head h2{font-size:clamp(34px,6vw,58px);margin-top:10px}
.sec-head p{color:var(--mut);margin-top:14px;font-size:15.5px}

/* brand showcase */
#brands-intro{background:var(--bianco)}
#brands-intro .eyebrow{color:var(--rosso)}
#brands-intro .sec-head h2{color:var(--nero)}
#brands-intro .sec-head p{color:rgba(13,13,13,.62)}
.brands{display:grid;grid-template-columns:1fr;gap:1px;background:rgba(13,13,13,.1);margin-top:46px;border:1px solid rgba(13,13,13,.1)}
@media(min-width:760px){.brands{grid-template-columns:1fr 1fr}}
.bcard{position:relative;background-color:var(--nero2);min-height:280px;padding:34px 30px;display:flex;flex-direction:column;justify-content:flex-end;overflow:hidden}
.bcard .moto-mark{right:-14%;top:-10%;width:60%}
.bcard .est{position:relative;z-index:2;display:inline-block;font-family:Inter;font-weight:600;font-size:11px;letter-spacing:.14em;text-transform:uppercase;color:var(--rosso);margin-bottom:8px}
.bcard h3{font-size:38px}
.bcard p{color:var(--mut);font-size:14.5px;margin-top:8px;max-width:320px}
.bcard .go{margin-top:18px;font-family:Inter;font-weight:600;font-size:12px;letter-spacing:.1em;text-transform:uppercase;display:inline-flex;align-items:center;gap:8px;color:var(--rosso)}

/* current range — spec cards, deliberately photo-free so it reads distinctly from the brand grid above */
.range-strip{background:var(--nero2);border-top:1px solid var(--line);border-bottom:1px solid var(--line)}
.rail{display:flex;gap:16px;overflow-x:auto;margin-top:44px;padding-bottom:10px;scroll-snap-type:x mandatory;-webkit-overflow-scrolling:touch;scrollbar-width:none;-ms-overflow-style:none}
.rail::-webkit-scrollbar{display:none;height:0}
.mcard{position:relative;flex:0 0 260px;min-height:360px;scroll-snap-align:start;background-color:var(--nero);padding:18px 22px;display:flex;flex-direction:column;justify-content:space-between;overflow:hidden}
.mcard.photo::before{content:'';position:absolute;inset:0;background:linear-gradient(180deg,rgba(13,13,13,.1) 0%,rgba(13,13,13,.25) 45%,rgba(13,13,13,.88) 100%);z-index:1}
.mcard .mtop,.mcard .enq{position:relative;z-index:2}
.mcard .tag{font-family:Inter;font-weight:600;font-size:10.5px;letter-spacing:.14em;text-transform:uppercase;color:var(--bianco);text-shadow:0 2px 10px rgba(0,0,0,.7)}
.mcard h4{font-size:26px;margin-top:6px;color:var(--bianco);text-shadow:0 2px 10px rgba(0,0,0,.7)}
.mcard .enq{font-family:Inter;font-weight:600;font-size:11.5px;letter-spacing:.08em;text-transform:uppercase;color:var(--bianco)}
.mcard .ph-tag{top:12px;bottom:auto;right:12px}
@media(min-width:760px){
  .rail{display:grid;grid-template-columns:repeat(4,1fr);overflow-x:visible;padding-bottom:0}
  .mcard{flex:none;min-height:440px}
}

/* store intro split */
.split{display:grid;grid-template-columns:1fr;gap:36px;align-items:center}
@media(min-width:860px){.split{grid-template-columns:1.1fr 1fr;gap:64px}}
.split .ph{height:320px}
@media(min-width:860px){.split .ph{height:460px}}
.split h2{font-size:clamp(32px,5vw,46px)}
.split p{color:var(--mut);font-size:15.5px;margin-top:16px;max-width:460px}
.split.rev{grid-template-columns:1fr}
@media(min-width:860px){.split.rev{grid-template-columns:1fr 1.1fr}}

/* accessories banner */
.banner{position:relative;min-height:340px;display:flex;align-items:flex-end;padding:36px 0}
.banner .in{position:relative;z-index:2}
.banner h2{font-size:clamp(38px,7vw,74px)}
.banner p{color:var(--mut);margin-top:10px;max-width:420px;font-size:15px}
.banner .btn{margin-top:22px}

/* trust strip — separates the two full-bleed photo banners */
.trust-strip{background:var(--bianco);border-top:1px solid rgba(13,13,13,.1);border-bottom:1px solid rgba(13,13,13,.1);padding:100px 0}
@media(min-width:760px){.trust-strip{padding:140px 0}}
.trust-grid{display:grid;grid-template-columns:1fr;gap:36px;text-align:center}
@media(min-width:760px){.trust-grid{grid-template-columns:repeat(3,1fr);text-align:left}}
.trust-item{display:flex;flex-direction:column;align-items:center;gap:14px}
@media(min-width:760px){.trust-item{flex-direction:row;align-items:center;gap:22px}}
.trust-item .num{font-family:"Bebas Neue";font-size:52px;color:var(--rosso);line-height:1;flex:none}
.trust-item p{color:var(--nero);font-size:14.5px}

/* contact strip */
.cstrip{background:var(--nero2);border-top:1px solid var(--line);border-bottom:1px solid var(--line)}
.cgrid{display:grid;grid-template-columns:1fr;gap:1px;background:var(--line);position:relative}
@media(min-width:860px){.cgrid{grid-template-columns:1fr 1fr}}
.cgrid>div{background-color:var(--nero2);padding:44px 34px}
.cgmap{position:relative;height:280px}
.cgmap .ph{position:absolute;inset:0}
@media(min-width:860px){.cgmap{height:auto}}
.hours{list-style:none;margin:22px 0 0;padding:0;font-size:14.5px;color:var(--mut)}
.hours li{display:flex;justify-content:space-between;padding:9px 0;border-bottom:1px solid var(--line)}
.hours li span:last-child{color:var(--bianco)}
.contact-cta{margin-top:26px;display:flex;flex-wrap:wrap;gap:12px}

/* footer */
footer{padding:64px 0 0}
.fgrid{display:grid;grid-template-columns:1fr;gap:36px;padding-bottom:50px;border-bottom:1px solid var(--line)}
@media(min-width:760px){.fgrid{grid-template-columns:1.3fr 1fr 1fr 1fr 1fr}}
.fcol h5{font-family:Inter;font-weight:600;font-size:11.5px;letter-spacing:.14em;text-transform:uppercase;color:var(--mut);margin-bottom:16px}
.fcol a{display:block;font-size:14.5px;color:var(--bianco);opacity:.85;margin-bottom:10px}
.fcol a:hover{opacity:1;color:var(--rosso)}
.fcol p{color:var(--mut);font-size:14px;max-width:280px}
.foot-base{display:flex;flex-wrap:wrap;justify-content:space-between;gap:14px;padding:26px 0 40px;font-size:12.5px;color:var(--mut)}
.foot-base a{color:var(--mut)}
.foot-base a:hover{color:var(--bianco)}

.wa-fab{position:fixed;right:18px;bottom:18px;z-index:90;width:56px;height:56px;border-radius:50%;background:var(--rosso);display:flex;align-items:center;justify-content:center;box-shadow:0 8px 24px rgba(0,0,0,.4)}
</style>
</head>
<body>

<header id="hdr">
  <div class="wrap bar">
    <a class="logo" href="#top">
      <img src="assets/logo.svg" alt="Moto Italia">
    </a>
    <nav class="main">
      <a href="piaggio.html">Piaggio</a>
      <a href="vespa.html">Vespa</a>
      <a href="moto-guzzi.html">Moto Guzzi</a>
      <a href="aprilia.html">Aprilia</a>
      <a href="accessories.html">Accessories</a>
      <a href="about.html">About</a>
      <a href="#contact">Contact</a>
    </nav>
    <button class="hamb" id="hambBtn" aria-label="Menu"><span></span><span></span><span></span></button>
  </div>
</header>

<div class="mmenu" id="mmenu">
  <a href="piaggio.html">Piaggio</a>
  <a href="vespa.html">Vespa</a>
  <a href="moto-guzzi.html">Moto Guzzi</a>
  <a href="aprilia.html">Aprilia</a>
  <a href="accessories.html">Accessories</a>
  <a href="about.html">About</a>
  <a href="#contact">Contact</a>
</div>

<main id="top">

  <section class="hero photo" style="background-image:url('assets/ph/hero.jpg')">
    <span class="ph-tag">Stock placeholder — hero video pending Piaggio Group footage</span>
    <div class="wrap">
      <div class="eyebrow on rv">Larnaka, Cyprus</div>
      <h1 class="rv">Four Italian<br>marques.<br><em>One address.</em></h1>
      <p class="lede rv">Piaggio, Vespa, Moto Guzzi and Aprilia. Sales, service and genuine parts, from a shop that knows every one of them.</p>
      <div class="ctas rv">
        <a class="btn fill" href="#brands-intro">Explore the Brands</a>
        <a class="btn line" href="about.html">Visit the Store</a>
      </div>
    </div>
    <div class="scrollcue"><span class="ln"></span>Scroll</div>
  </section>

  <div class="marquee-strip">
    <div class="marquee-track">
      <div class="mq-group">PIAGGIO<i></i>VESPA<i></i>MOTO GUZZI<i></i>APRILIA<i></i></div>
      <div class="mq-group" aria-hidden="true">PIAGGIO<i></i>VESPA<i></i>MOTO GUZZI<i></i>APRILIA<i></i></div>
    </div>
  </div>

  <section id="brands-intro">
    <div class="wrap sec-head rv">
      <div class="eyebrow">The Brands</div>
      <h2>Four marques, one dealer.</h2>
      <p>Piaggio Group has shaped Italian motoring since 1884 — from Vespa's post-war scooters to Moto Guzzi's handbuilt V-twins and Aprilia's racing DNA. Draft copy below, final brand positioning to be confirmed once Piaggio Group brand materials arrive.</p>
    </div>
    <div class="wrap">
      <div class="brands">
        <a class="bcard photo rv" href="piaggio.html" id="piaggio" style="background-image:url('assets/ph/piaggio.jpg')">
          <span class="ph-tag">Stock placeholder</span>
          <span class="est">Est. 1884</span>
          <h3>Piaggio</h3>
          <p>Scooters built for everyday Cyprus roads, from city commuting to weekend rides.</p>
          <span class="go">Explore Piaggio →</span>
        </a>
        <a class="bcard photo rv" href="vespa.html" id="vespa" style="background-image:url('assets/ph/vespa.jpg')">
          <span class="ph-tag">Stock placeholder</span>
          <span class="est">Since 1946</span>
          <h3>Vespa</h3>
          <p>The icon, reinvented every generation. Timeless design, modern engineering.</p>
          <span class="go">Explore Vespa →</span>
        </a>
        <a class="bcard photo rv" href="moto-guzzi.html" id="guzzi" style="background-image:url('assets/ph/moto-guzzi.jpg')">
          <span class="ph-tag">Stock placeholder</span>
          <span class="est">Since 1921</span>
          <h3>Moto Guzzi</h3>
          <p>Italian heritage engineered for the open road. Handbuilt character since 1921.</p>
          <span class="go">Explore Moto Guzzi →</span>
        </a>
        <a class="bcard photo rv" href="aprilia.html" id="aprilia" style="background-image:url('assets/ph/aprilia.jpg')">
          <span class="ph-tag">Stock placeholder</span>
          <span class="est">Since 1945</span>
          <h3>Aprilia</h3>
          <p>Race-bred performance for the street. Aprilia's racing DNA, road legal.</p>
          <span class="go">Explore Aprilia →</span>
        </a>
      </div>
    </div>
  </section>

  <section class="range-strip">
    <div class="wrap sec-head rv">
      <div class="eyebrow">Featured Models</div>
      <h2>The current range.</h2>
      <p>A cross-brand teaser, pulled through from each brand page. Enquire in store, no online pricing in Phase 1.</p>
    </div>
    <div class="wrap">
      <div class="rail rv">
        <div class="mcard photo rv" style="background-image:url('assets/ph/piaggio-mp3.jpg')">
          <span class="ph-tag">Stock placeholder</span>
          <div class="mtop"><div class="tag">Piaggio</div><h4>MP3</h4></div>
          <a class="enq" href="#contact">Enquire in store →</a>
        </div>
        <div class="mcard photo rv" style="background-image:url('assets/ph/vespa-primavera.jpg')">
          <span class="ph-tag">Stock placeholder</span>
          <div class="mtop"><div class="tag">Vespa</div><h4>Primavera</h4></div>
          <a class="enq" href="#contact">Enquire in store →</a>
        </div>
        <div class="mcard photo rv" style="background-image:url('assets/ph/moto-guzzi-v7.jpg')">
          <span class="ph-tag">Stock placeholder</span>
          <div class="mtop"><div class="tag">Moto Guzzi</div><h4>V7</h4></div>
          <a class="enq" href="#contact">Enquire in store →</a>
        </div>
        <div class="mcard photo rv" style="background-image:url('assets/ph/aprilia-rs660.jpg')">
          <span class="ph-tag">Stock placeholder</span>
          <div class="mtop"><div class="tag">Aprilia</div><h4>RS 660</h4></div>
          <a class="enq" href="#contact">Enquire in store →</a>
        </div>
      </div>
    </div>
  </section>

  <section id="store">
    <div class="wrap split">
      <div class="ph photo rv" style="background-image:url('assets/ph/store.jpg')"><span class="ph-tag">Stock placeholder — store photography pending</span></div>
      <div class="rv">
        <div class="eyebrow">About Moto Italia</div>
        <h2>New ownership.<br>Same address.</h2>
        <p>Draft copy, pending the client's store story. Moto Italia is under new ownership in Larnaka, bringing four of Europe's most recognisable motorcycle marques under one roof, with the sales and service experience to match.</p>
        <div class="ctas" style="margin-top:24px"><a class="btn line" href="about.html">Our Story →</a></div>
      </div>
    </div>
  </section>

  <section id="accessories" class="banner photo" style="background-image:url('assets/ph/accessories.jpg');background-position:30% 15%">
    <span class="ph-tag">Stock placeholder — accessories photography pending</span>
    <div class="wrap in rv">
      <div class="eyebrow on">Accessories</div>
      <h2>Gear up.</h2>
      <p>Helmets, apparel, parts and care products for every marque we carry. Enquire in store, structured to become a full shop in a later phase.</p>
      <a class="btn fill" href="accessories.html">Shop Accessories</a>
    </div>
  </section>

  <section class="trust-strip">
    <div class="wrap">
      <div class="trust-grid">
        <div class="trust-item rv"><div class="num">4</div><p>Italian marques under one roof — Piaggio, Vespa, Moto Guzzi and Aprilia.</p></div>
        <div class="trust-item rv"><div class="num">100%</div><p>Genuine parts and manufacturer-trained service, no grey imports.</p></div>
        <div class="trust-item rv"><div class="num">1</div><p>Larnaka address for sales, service and genuine parts.</p></div>
      </div>
    </div>
  </section>

  <section id="contact" class="banner photo" style="background-image:url('assets/ph/visit.jpg');background-position:center 68%">
    <span class="ph-tag">Stock placeholder — store photography pending</span>
    <div class="wrap in rv">
      <div class="eyebrow on">Visit Us</div>
      <h2>Find us in Larnaka.</h2>
      <p>Sales, service and genuine parts for Piaggio, Vespa, Moto Guzzi and Aprilia — right in the heart of town.</p>
      <div style="display:flex;flex-wrap:wrap;gap:14px;margin-top:24px">
        <a class="btn fill" href="tel:+35724667400" style="margin-top:0">Call Us</a>
        <a class="btn line" href="https://maps.app.goo.gl/K2wCmmJ4D2DadaAm9" target="_blank" rel="noopener" style="margin-top:0">Get Directions</a>
      </div>
    </div>
  </section>

</main>

<footer>
  <div class="wrap">
    <div class="fgrid">
      <div class="fcol">
        <a class="logo" href="#top" style="margin-bottom:16px">
          <img src="assets/logo.svg" alt="Moto Italia">
        </a>
        <p>Authorised Larnaka dealer for Piaggio, Vespa, Moto Guzzi and Aprilia.</p>
      </div>
      <div class="fcol">
        <h5>Brands</h5>
        <a href="piaggio.html">Piaggio</a>
        <a href="vespa.html">Vespa</a>
        <a href="moto-guzzi.html">Moto Guzzi</a>
        <a href="aprilia.html">Aprilia</a>
      </div>
      <div class="fcol">
        <h5>Shop</h5>
        <a href="accessories.html">Accessories</a>
        <a href="about.html">About / Store</a>
        <a href="#contact">Contact</a>
      </div>
      <div class="fcol">
        <h5>Visit</h5>
        <a href="https://www.google.com/maps/search/?api=1&query=2+Pentadaktylou+Street+Larnaca+6030" target="_blank" rel="noopener">2 Pentadaktylou Street, Larnaca 6030</a>
        <a href="tel:+35724667400">Tel. 24 667 400</a>
      </div>
      <div class="fcol">
        <h5>Working Hours</h5>
        <p style="line-height:1.8;color:var(--bianco)">
          Monday – Friday<br>08:45 – 13:00 &amp;<br>15:00 – 18:00
        </p>
        <p style="margin-top:14px;line-height:1.8;color:var(--bianco)">
          Wednesday &amp; Saturday<br>08:45 – 13:00
        </p>
      </div>
    </div>
    <div class="foot-base">
      <span>© 2026 Moto Italia. All rights reserved.</span>
      <span><a href="#">Privacy Policy</a> · Website by Wecomeone Marketing And Comms</span>
    </div>
  </div>
</footer>

<a class="wa-fab" href="#contact" aria-label="WhatsApp">
  <svg width="26" height="26" viewBox="0 0 24 24" fill="none"><path d="M17 14.5c-.3-.15-1.77-.87-2.04-.97-.27-.1-.47-.15-.67.15-.2.3-.77.97-.94 1.17-.17.2-.35.22-.65.07-.3-.15-1.26-.46-2.4-1.47-.89-.79-1.48-1.77-1.66-2.07-.17-.3-.02-.46.13-.6.13-.13.3-.35.45-.52.15-.17.2-.3.3-.5.1-.2.05-.37-.02-.52-.07-.15-.67-1.6-.92-2.2-.24-.58-.49-.5-.67-.5-.17-.01-.37-.01-.57-.01s-.52.07-.8.37c-.27.3-1.04 1.02-1.04 2.48s1.07 2.88 1.22 3.08c.15.2 2.1 3.2 5.08 4.49.71.3 1.26.49 1.7.62.71.23 1.36.2 1.87.12.57-.08 1.77-.72 2.02-1.42.25-.7.25-1.3.17-1.42-.07-.13-.27-.2-.57-.35z" fill="#F5F3EF"/><path d="M12 2C6.48 2 2 6.35 2 11.7c0 1.9.55 3.67 1.5 5.18L2 22l5.3-1.4a10.2 10.2 0 0 0 4.7 1.15c5.52 0 10-4.35 10-9.7C22 6.35 17.52 2 12 2z" stroke="#F5F3EF" stroke-width="1.3" fill="none"/></svg>
</a>

<script>
(function(){
  var hdr=document.getElementById('hdr');
  window.addEventListener('scroll',function(){
    hdr.classList.toggle('solid',window.scrollY>40);
  });
  var hb=document.getElementById('hambBtn'), mm=document.getElementById('mmenu');
  hb.addEventListener('click',function(){mm.classList.toggle('open');});
  mm.querySelectorAll('a').forEach(function(a){a.addEventListener('click',function(){mm.classList.remove('open');});});

  var io=new IntersectionObserver(function(entries){
    entries.forEach(function(e){ if(e.isIntersecting){ e.target.classList.add('in'); } });
  },{threshold:.15});
  document.querySelectorAll('.rv').forEach(function(el){io.observe(el);});

  // logo marquee — rebuild with just enough repeats so each half is wider than
  // the viewport. Without this, on wide screens the two static copies run out
  // before the loop wraps, leaving a blank gap that reads as the strip "breaking".
  var mqTrack=document.querySelector('.marquee-track');
  if(mqTrack){
    var mqUnit='PIAGGIO<i></i>VESPA<i></i>MOTO GUZZI<i></i>APRILIA<i></i>';
    var mqResizeT;
    function buildMarquee(){
      var strip=mqTrack.parentElement;
      var target=strip.getBoundingClientRect().width+200;
      mqTrack.innerHTML='<div class="mq-group">'+mqUnit+'</div>';
      var unitWidth=mqTrack.querySelector('.mq-group').getBoundingClientRect().width || 1;
      var reps=Math.max(1,Math.ceil(target/unitWidth));
      var halfHTML=mqUnit.repeat(reps);
      mqTrack.innerHTML=
        '<div class="mq-group">'+halfHTML+'</div>'+
        '<div class="mq-group" aria-hidden="true">'+halfHTML+'</div>';
    }
    buildMarquee();
    window.addEventListener('resize',function(){
      clearTimeout(mqResizeT);
      mqResizeT=setTimeout(buildMarquee,200);
    });
  }

  // #contact is the last anchorable section before the footer, so on tall
  // viewports there isn't enough page left below it for the browser to
  // scroll it flush under the fixed header — the scroll hits the bottom of
  // the document first, leaving the previous (white) section peeking out
  // above it. Give the footer just enough extra bottom space, computed per
  // viewport height, to close that gap — and none at all on short/mobile
  // viewports where it isn't needed.
  var contactEl=document.getElementById('contact');
  var footerEl=document.querySelector('footer');
  if(contactEl&&footerEl){
    var fixT;
    function fixContactScrollSpace(){
      footerEl.style.paddingBottom='';
      var marginTop=parseFloat(getComputedStyle(contactEl).scrollMarginTop)||0;
      var contactAbsTop=contactEl.getBoundingClientRect().top+window.scrollY;
      var spaceBelow=document.documentElement.scrollHeight-contactAbsTop;
      var needed=window.innerHeight-marginTop;
      var extra=Math.max(0,needed-spaceBelow);
      if(extra>0){ footerEl.style.paddingBottom=extra+'px'; }
    }
    fixContactScrollSpace();
    window.addEventListener('resize',function(){
      clearTimeout(fixT);
      fixT=setTimeout(fixContactScrollSpace,200);
    });
  }
})();
</script>

</body>
</html>

'@

Set-Content -Path "about.html" -Encoding utf8 -Value @'
<!doctype html>
<!--
  MOTO ITALIA — About page, Phase 1
  Prepared by Wecomeone Marketing And Comms, September 2026

  Shares the header, footer, CSS and scroll/menu behaviour with the
  homepage (moto-italia-homepage-concept.html) so every page reads as
  one site. Keep the two files' shared chrome in sync when either changes.

  Anywhere real photography or copy is still pending from the client,
  the block is built at final size and styling with a small PLACEHOLDER
  tag, so swapping in the real asset later is a drop-in.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>About Us — Moto Italia</title>
<meta name="description" content="Moto Italia is the authorised Larnaka dealer for Piaggio, Vespa, Moto Guzzi and Aprilia, under new ownership at the same address.">
<link rel="icon" type="image/svg+xml" href="assets/favicon.svg">
<link rel="icon" type="image/png" sizes="32x32" href="assets/favicon-32.png">
<link rel="apple-touch-icon" href="assets/favicon-180.png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
<style>
:root{
  --rosso:#DF0123;
  --nero:#0D0D0D;
  --nero2:#161616;
  --bianco:#F5F3EF;
  --verde:#069147;
  --line:rgba(245,243,239,.14);
  --mut:rgba(245,243,239,.58);
}
*{box-sizing:border-box}
html{scroll-behavior:smooth}
[id]{scroll-margin-top:96px}
body{margin:0;background:var(--nero);color:var(--bianco);font-family:Inter,system-ui,sans-serif;font-weight:400;line-height:1.6;-webkit-font-smoothing:antialiased}
h1,h2,h3,h4{font-family:"Bebas Neue",Inter,sans-serif;font-weight:400;text-transform:uppercase;letter-spacing:.01em;line-height:.94;margin:0}
p{margin:0}
a{color:inherit;text-decoration:none}
img,svg{display:block;max-width:100%}
.wrap{max-width:1240px;margin:0 auto;padding:0 20px}
@media(min-width:760px){.wrap{padding:0 40px}}

.eyebrow{font-family:Inter;font-weight:600;text-transform:uppercase;letter-spacing:.22em;font-size:11.5px;color:var(--mut)}
.eyebrow.on{color:var(--rosso)}
.btn{display:inline-flex;align-items:center;gap:10px;font-family:Inter;font-weight:600;font-size:13.5px;text-transform:uppercase;letter-spacing:.1em;padding:15px 26px;border-radius:2px;transition:opacity .2s}
.btn.fill{background:var(--rosso);color:var(--bianco)}
.btn.line{border:1px solid rgba(245,243,239,.4);color:var(--bianco)}
.btn:hover{opacity:.82}

/* placeholder tag, reused on any block standing in for real photography/video */
.ph{position:relative;overflow:hidden;background-image:
    radial-gradient(120% 140% at 15% 0%, #1c1c1c 0%, #0d0d0d 55%),
    repeating-linear-gradient(120deg, rgba(255,255,255,.02) 0 2px, transparent 2px 44px)}
.ph-tag{position:absolute;right:12px;bottom:12px;font-family:Inter;font-weight:600;font-size:9.5px;letter-spacing:.14em;text-transform:uppercase;color:rgba(245,243,239,.55);background:rgba(0,0,0,.4);border:1px solid rgba(245,243,239,.18);padding:6px 10px;z-index:2}
.moto-mark{position:absolute;opacity:.14;filter:grayscale(1)}
.photo{background-size:cover;background-position:center}
.hero.photo::before,.banner.photo::before{content:'';position:absolute;inset:0;background:linear-gradient(180deg,rgba(13,13,13,.25) 0%,rgba(13,13,13,.45) 55%,rgba(13,13,13,.93) 100%);z-index:1}
.hero .wrap{position:relative;z-index:2}
.banner .in{position:relative;z-index:2}

/* reveal-on-scroll */
.rv{opacity:0;transform:translateY(28px);transition:opacity .8s ease,transform .8s ease}
.rv.in{opacity:1;transform:none}

/* header */
header{position:fixed;top:0;left:0;right:0;z-index:100;background:transparent;border-bottom:1px solid transparent;transition:background .3s,border-color .3s}
header.solid{background:rgba(13,13,13,.92);backdrop-filter:blur(6px);border-color:var(--line)}
header .bar{display:flex;align-items:center;gap:20px;height:70px}
.logo{display:flex;align-items:center}
.logo img{height:28px;width:auto;display:block}
nav.main{display:none;margin-left:auto;align-items:center;gap:28px}
nav.main a{font-family:"Bebas Neue";font-size:15px;letter-spacing:.06em;color:var(--mut)}
nav.main a:hover{color:var(--bianco)}
nav.main a[href$="#contact"]{color:var(--rosso)}
nav.main a[href$="#contact"]:hover{color:var(--rosso)}
.mmenu a[href$="#contact"]{color:var(--rosso)}
.hamb{margin-left:auto;width:38px;height:38px;border:1px solid var(--line);display:flex;flex-direction:column;justify-content:center;align-items:center;gap:5px;background:none;cursor:pointer}
.hamb span{width:18px;height:1.5px;background:var(--bianco)}
@media(min-width:960px){nav.main{display:flex}.hamb{display:none}}

/* mobile menu */
.mmenu{position:fixed;inset:0;background:var(--nero);z-index:99;display:flex;flex-direction:column;justify-content:center;gap:26px;padding:0 32px;transform:translateY(-100%);transition:transform .35s ease}
.mmenu.open{transform:translateY(0)}
.mmenu a{font-family:"Bebas Neue";font-size:34px}
@media(min-width:960px){.mmenu{display:none}}

@media(min-width:760px){.wrap{padding-left:40px}}

section{padding:80px 0}
@media(min-width:760px){section{padding:120px 0}}
.sec-head{max-width:640px}
.sec-head h2{font-size:clamp(34px,6vw,58px);margin-top:10px}
.sec-head p{color:var(--mut);margin-top:14px;font-size:15.5px}

/* page intro banner */
.pintro{position:relative;min-height:56svh;display:flex;align-items:flex-end;padding:150px 0 64px}
.pintro h1{font-size:clamp(42px,9vw,90px);margin-top:14px}
.pintro .lede{max-width:520px;color:var(--mut);font-size:16.5px;margin-top:18px}

/* split (photo + copy) */
.split{display:grid;grid-template-columns:1fr;gap:36px;align-items:center}
@media(min-width:860px){.split{grid-template-columns:1.1fr 1fr;gap:64px}}
.split .ph{height:320px}
@media(min-width:860px){.split .ph{height:460px}}
.split h2{font-size:clamp(32px,5vw,46px)}
.split p{color:var(--mut);font-size:15.5px;margin-top:16px;max-width:460px}
.split p+p{margin-top:14px}
.split.rev{grid-template-columns:1fr}
@media(min-width:860px){.split.rev{grid-template-columns:1fr 1.1fr}}

/* full-bleed banner */
.banner{position:relative;min-height:340px;display:flex;align-items:flex-end;padding:36px 0}
.banner .in{position:relative;z-index:2}
.banner h2{font-size:clamp(38px,7vw,74px)}
.banner p{color:var(--mut);margin-top:10px;max-width:420px;font-size:15px}
.banner .btn{margin-top:22px}

/* footer */
footer{padding:64px 0 0}
.fgrid{display:grid;grid-template-columns:1fr;gap:36px;padding-bottom:50px;border-bottom:1px solid var(--line)}
@media(min-width:760px){.fgrid{grid-template-columns:1.3fr 1fr 1fr 1fr 1fr}}
.fcol h5{font-family:Inter;font-weight:600;font-size:11.5px;letter-spacing:.14em;text-transform:uppercase;color:var(--mut);margin-bottom:16px}
.fcol a{display:block;font-size:14.5px;color:var(--bianco);opacity:.85;margin-bottom:10px}
.fcol a:hover{opacity:1;color:var(--rosso)}
.fcol p{color:var(--mut);font-size:14px;max-width:280px}
.foot-base{display:flex;flex-wrap:wrap;justify-content:space-between;gap:14px;padding:26px 0 40px;font-size:12.5px;color:var(--mut)}
.foot-base a{color:var(--mut)}
.foot-base a:hover{color:var(--bianco)}

.wa-fab{position:fixed;right:18px;bottom:18px;z-index:90;width:56px;height:56px;border-radius:50%;background:var(--rosso);display:flex;align-items:center;justify-content:center;box-shadow:0 8px 24px rgba(0,0,0,.4)}
</style>
</head>
<body>

<header id="hdr">
  <div class="wrap bar">
    <a class="logo" href="index.html">
      <img src="assets/logo.svg" alt="Moto Italia">
    </a>
    <nav class="main">
      <a href="piaggio.html">Piaggio</a>
      <a href="vespa.html">Vespa</a>
      <a href="moto-guzzi.html">Moto Guzzi</a>
      <a href="aprilia.html">Aprilia</a>
      <a href="accessories.html">Accessories</a>
      <a href="about.html">About</a>
      <a href="index.html#contact">Contact</a>
    </nav>
    <button class="hamb" id="hambBtn" aria-label="Menu"><span></span><span></span><span></span></button>
  </div>
</header>

<div class="mmenu" id="mmenu">
  <a href="piaggio.html">Piaggio</a>
  <a href="vespa.html">Vespa</a>
  <a href="moto-guzzi.html">Moto Guzzi</a>
  <a href="aprilia.html">Aprilia</a>
  <a href="accessories.html">Accessories</a>
  <a href="about.html">About</a>
  <a href="index.html#contact">Contact</a>
</div>

<main>

  <section class="pintro photo" style="background-image:url('assets/ph/store.jpg')">
    <span class="ph-tag">Stock placeholder — store photography pending</span>
    <div class="wrap">
      <div class="eyebrow on rv">About Moto Italia</div>
      <h1 class="rv">New ownership.<br>Same address.</h1>
      <p class="lede rv">Four Italian marques, one Larnaka address, and a team that knows every one of them.</p>
    </div>
  </section>

  <section>
    <div class="wrap split rv">
      <div class="ph photo" style="background-image:url('assets/ph/store.jpg')"><span class="ph-tag">Stock placeholder — store photography pending</span></div>
      <div>
        <div class="eyebrow">Our Story</div>
        <h2>Built on the same street, backed by new ownership.</h2>
        <p>Moto Italia has changed hands, not location. The same Larnaka address now operates under new ownership, with a renewed focus on doing right by four of the most recognised names in Italian motorcycling: Piaggio, Vespa, Moto Guzzi and Aprilia.</p>
        <p>Draft copy, final story pending from the client. This section will carry the real history of the dealership, how long it has traded in Larnaka, and what has changed under the new ownership, once that detail is confirmed.</p>
        <div class="ctas" style="margin-top:24px"><a class="btn line" href="https://maps.app.goo.gl/K2wCmmJ4D2DadaAm9" target="_blank" rel="noopener">Get Directions</a></div>
      </div>
    </div>
  </section>

  <section class="banner photo" style="background-image:url('assets/ph/store.jpg');background-position:30% 15%">
    <span class="ph-tag">Stock placeholder — shop photography pending</span>
    <div class="wrap in rv">
      <div class="eyebrow on">At The Shop</div>
      <h2>Sales, service and genuine parts.</h2>
      <p>Walk in for a test ride, book a service, or find the part your bike actually needs. Real shop photography to replace this placeholder once available.</p>
      <a class="btn fill" href="index.html#contact">Plan Your Visit</a>
    </div>
  </section>

  <section id="contact" class="banner photo" style="background-image:url('assets/ph/visit.jpg');background-position:center 68%">
    <span class="ph-tag">Stock placeholder — store photography pending</span>
    <div class="wrap in rv">
      <div class="eyebrow on">Visit Us</div>
      <h2>Find us in Larnaka.</h2>
      <p>Sales, service and genuine parts for Piaggio, Vespa, Moto Guzzi and Aprilia — right in the heart of town.</p>
      <div style="display:flex;flex-wrap:wrap;gap:14px;margin-top:24px">
        <a class="btn fill" href="tel:+35724667400" style="margin-top:0">Call Us</a>
        <a class="btn line" href="https://maps.app.goo.gl/K2wCmmJ4D2DadaAm9" target="_blank" rel="noopener" style="margin-top:0">Get Directions</a>
      </div>
    </div>
  </section>

</main>

<footer>
  <div class="wrap">
    <div class="fgrid">
      <div class="fcol">
        <a class="logo" href="index.html" style="margin-bottom:16px">
          <img src="assets/logo.svg" alt="Moto Italia">
        </a>
        <p>Authorised Larnaka dealer for Piaggio, Vespa, Moto Guzzi and Aprilia.</p>
      </div>
      <div class="fcol">
        <h5>Brands</h5>
        <a href="piaggio.html">Piaggio</a>
        <a href="vespa.html">Vespa</a>
        <a href="moto-guzzi.html">Moto Guzzi</a>
        <a href="aprilia.html">Aprilia</a>
      </div>
      <div class="fcol">
        <h5>Shop</h5>
        <a href="accessories.html">Accessories</a>
        <a href="about.html">About / Store</a>
        <a href="index.html#contact">Contact</a>
      </div>
      <div class="fcol">
        <h5>Visit</h5>
        <a href="https://www.google.com/maps/search/?api=1&query=2+Pentadaktylou+Street+Larnaca+6030" target="_blank" rel="noopener">2 Pentadaktylou Street, Larnaca 6030</a>
        <a href="tel:+35724667400">Tel. 24 667 400</a>
      </div>
      <div class="fcol">
        <h5>Working Hours</h5>
        <p style="line-height:1.8;color:var(--bianco)">
          Monday – Friday<br>08:45 – 13:00 &amp;<br>15:00 – 18:00
        </p>
        <p style="margin-top:14px;line-height:1.8;color:var(--bianco)">
          Wednesday &amp; Saturday<br>08:45 – 13:00
        </p>
      </div>
    </div>
    <div class="foot-base">
      <span>© 2026 Moto Italia. All rights reserved.</span>
      <span><a href="#">Privacy Policy</a> · Website by Wecomeone Marketing And Comms</span>
    </div>
  </div>
</footer>

<a class="wa-fab" href="index.html#contact" aria-label="WhatsApp">
  <svg width="26" height="26" viewBox="0 0 24 24" fill="none"><path d="M17 14.5c-.3-.15-1.77-.87-2.04-.97-.27-.1-.47-.15-.67.15-.2.3-.77.97-.94 1.17-.17.2-.35.22-.65.07-.3-.15-1.26-.46-2.4-1.47-.89-.79-1.48-1.77-1.66-2.07-.17-.3-.02-.46.13-.6.13-.13.3-.35.45-.52.15-.17.2-.3.3-.5.1-.2.05-.37-.02-.52-.07-.15-.67-1.6-.92-2.2-.24-.58-.49-.5-.67-.5-.17-.01-.37-.01-.57-.01s-.52.07-.8.37c-.27.3-1.04 1.02-1.04 2.48s1.07 2.88 1.22 3.08c.15.2 2.1 3.2 5.08 4.49.71.3 1.26.49 1.7.62.71.23 1.36.2 1.87.12.57-.08 1.77-.72 2.02-1.42.25-.7.25-1.3.17-1.42-.07-.13-.27-.2-.57-.35z" fill="#F5F3EF"/><path d="M12 2C6.48 2 2 6.35 2 11.7c0 1.9.55 3.67 1.5 5.18L2 22l5.3-1.4a10.2 10.2 0 0 0 4.7 1.15c5.52 0 10-4.35 10-9.7C22 6.35 17.52 2 12 2z" stroke="#F5F3EF" stroke-width="1.3" fill="none"/></svg>
</a>

<script>
(function(){
  var hdr=document.getElementById('hdr');
  window.addEventListener('scroll',function(){
    hdr.classList.toggle('solid',window.scrollY>40);
  });
  var hb=document.getElementById('hambBtn'), mm=document.getElementById('mmenu');
  hb.addEventListener('click',function(){mm.classList.toggle('open');});
  mm.querySelectorAll('a').forEach(function(a){a.addEventListener('click',function(){mm.classList.remove('open');});});

  var io=new IntersectionObserver(function(entries){
    entries.forEach(function(e){ if(e.isIntersecting){ e.target.classList.add('in'); } });
  },{threshold:.15});
  document.querySelectorAll('.rv').forEach(function(el){io.observe(el);});

  // #contact is the last anchorable section before the footer, so on tall
  // viewports there isn't enough page left below it for the browser to
  // scroll it flush under the fixed header. Give the footer just enough
  // extra bottom space, computed per viewport height, to close that gap.
  var contactEl=document.getElementById('contact');
  var footerEl=document.querySelector('footer');
  if(contactEl&&footerEl){
    var fixT;
    function fixContactScrollSpace(){
      footerEl.style.paddingBottom='';
      var marginTop=parseFloat(getComputedStyle(contactEl).scrollMarginTop)||0;
      var contactAbsTop=contactEl.getBoundingClientRect().top+window.scrollY;
      var spaceBelow=document.documentElement.scrollHeight-contactAbsTop;
      var needed=window.innerHeight-marginTop;
      var extra=Math.max(0,needed-spaceBelow);
      if(extra>0){ footerEl.style.paddingBottom=extra+'px'; }
    }
    fixContactScrollSpace();
    window.addEventListener('resize',function(){
      clearTimeout(fixT);
      fixT=setTimeout(fixContactScrollSpace,200);
    });
  }
})();
</script>

</body>
</html>

'@

Set-Content -Path "accessories.html" -Encoding utf8 -Value @'
<!doctype html>
<!--
  MOTO ITALIA — Accessories page, Phase 1
  Prepared by Wecomeone Marketing And Comms, September 2026

  Shares the header, footer, CSS and scroll/menu behaviour with the
  homepage and about.html so every page reads as one site. Keep the
  shared chrome in sync across files when any of them changes.

  The four category tiles are deliberately photo-free (the same
  diagonal placeholder texture used elsewhere for pending assets)
  rather than reusing one generic accessories photo four times.
  Swap in real category photography once the client supplies it.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Accessories — Moto Italia</title>
<meta name="description" content="Helmets, riding apparel, genuine parts and care products for Piaggio, Vespa, Moto Guzzi and Aprilia. Enquire in store in Larnaka.">
<link rel="icon" type="image/svg+xml" href="assets/favicon.svg">
<link rel="icon" type="image/png" sizes="32x32" href="assets/favicon-32.png">
<link rel="apple-touch-icon" href="assets/favicon-180.png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
<style>
:root{
  --rosso:#DF0123;
  --nero:#0D0D0D;
  --nero2:#161616;
  --bianco:#F5F3EF;
  --verde:#069147;
  --line:rgba(245,243,239,.14);
  --mut:rgba(245,243,239,.58);
}
*{box-sizing:border-box}
html{scroll-behavior:smooth}
[id]{scroll-margin-top:96px}
body{margin:0;background:var(--nero);color:var(--bianco);font-family:Inter,system-ui,sans-serif;font-weight:400;line-height:1.6;-webkit-font-smoothing:antialiased}
h1,h2,h3,h4{font-family:"Bebas Neue",Inter,sans-serif;font-weight:400;text-transform:uppercase;letter-spacing:.01em;line-height:.94;margin:0}
p{margin:0}
a{color:inherit;text-decoration:none}
img,svg{display:block;max-width:100%}
.wrap{max-width:1240px;margin:0 auto;padding:0 20px}
@media(min-width:760px){.wrap{padding:0 40px}}

.eyebrow{font-family:Inter;font-weight:600;text-transform:uppercase;letter-spacing:.22em;font-size:11.5px;color:var(--mut)}
.eyebrow.on{color:var(--rosso)}
.btn{display:inline-flex;align-items:center;gap:10px;font-family:Inter;font-weight:600;font-size:13.5px;text-transform:uppercase;letter-spacing:.1em;padding:15px 26px;border-radius:2px;transition:opacity .2s}
.btn.fill{background:var(--rosso);color:var(--bianco)}
.btn.line{border:1px solid rgba(245,243,239,.4);color:var(--bianco)}
.btn:hover{opacity:.82}

/* placeholder tag, reused on any block standing in for real photography/video */
.ph{position:relative;overflow:hidden;background-image:
    radial-gradient(120% 140% at 15% 0%, #1c1c1c 0%, #0d0d0d 55%),
    repeating-linear-gradient(120deg, rgba(255,255,255,.02) 0 2px, transparent 2px 44px)}
.ph-tag{position:absolute;right:12px;bottom:12px;font-family:Inter;font-weight:600;font-size:9.5px;letter-spacing:.14em;text-transform:uppercase;color:rgba(245,243,239,.55);background:rgba(0,0,0,.4);border:1px solid rgba(245,243,239,.18);padding:6px 10px;z-index:2}
.photo{background-size:cover;background-position:center}
.hero.photo::before,.banner.photo::before{content:'';position:absolute;inset:0;background:linear-gradient(180deg,rgba(13,13,13,.25) 0%,rgba(13,13,13,.45) 55%,rgba(13,13,13,.93) 100%);z-index:1}
.hero .wrap{position:relative;z-index:2}
.banner .in{position:relative;z-index:2}

/* reveal-on-scroll */
.rv{opacity:0;transform:translateY(28px);transition:opacity .8s ease,transform .8s ease}
.rv.in{opacity:1;transform:none}

/* header */
header{position:fixed;top:0;left:0;right:0;z-index:100;background:transparent;border-bottom:1px solid transparent;transition:background .3s,border-color .3s}
header.solid{background:rgba(13,13,13,.92);backdrop-filter:blur(6px);border-color:var(--line)}
header .bar{display:flex;align-items:center;gap:20px;height:70px}
.logo{display:flex;align-items:center}
.logo img{height:28px;width:auto;display:block}
nav.main{display:none;margin-left:auto;align-items:center;gap:28px}
nav.main a{font-family:"Bebas Neue";font-size:15px;letter-spacing:.06em;color:var(--mut)}
nav.main a:hover{color:var(--bianco)}
nav.main a[href$="#contact"]{color:var(--rosso)}
nav.main a[href$="#contact"]:hover{color:var(--rosso)}
.mmenu a[href$="#contact"]{color:var(--rosso)}
.hamb{margin-left:auto;width:38px;height:38px;border:1px solid var(--line);display:flex;flex-direction:column;justify-content:center;align-items:center;gap:5px;background:none;cursor:pointer}
.hamb span{width:18px;height:1.5px;background:var(--bianco)}
@media(min-width:960px){nav.main{display:flex}.hamb{display:none}}

/* mobile menu */
.mmenu{position:fixed;inset:0;background:var(--nero);z-index:99;display:flex;flex-direction:column;justify-content:center;gap:26px;padding:0 32px;transform:translateY(-100%);transition:transform .35s ease}
.mmenu.open{transform:translateY(0)}
.mmenu a{font-family:"Bebas Neue";font-size:34px}
@media(min-width:960px){.mmenu{display:none}}

@media(min-width:760px){.wrap{padding-left:40px}}

section{padding:80px 0}
@media(min-width:760px){section{padding:120px 0}}
.sec-head{max-width:640px}
.sec-head h2{font-size:clamp(34px,6vw,58px);margin-top:10px}
.sec-head p{color:var(--mut);margin-top:14px;font-size:15.5px}

/* page intro banner */
.pintro{position:relative;min-height:56svh;display:flex;align-items:flex-end;padding:150px 0 64px}
.pintro h1{font-size:clamp(42px,9vw,90px);margin-top:14px}
.pintro .lede{max-width:520px;color:var(--mut);font-size:16.5px;margin-top:18px}

/* category grid — same tile system as the brand grid, no photo so it doesn't
   compete visually with the brand cards or read as a stand-in for real product shots */
.cats{display:grid;grid-template-columns:1fr;gap:1px;background:var(--line);margin-top:46px;border:1px solid var(--line)}
@media(min-width:760px){.cats{grid-template-columns:1fr 1fr}}
.ccard{position:relative;min-height:240px;padding:34px 30px;display:flex;flex-direction:column;justify-content:flex-end;overflow:hidden}
.ccard .tag{position:relative;z-index:2;display:inline-block;font-family:Inter;font-weight:600;font-size:11px;letter-spacing:.14em;text-transform:uppercase;color:var(--rosso);margin-bottom:8px}
.ccard h3{font-size:32px;position:relative;z-index:2}
.ccard p{color:var(--mut);font-size:14.5px;margin-top:8px;max-width:320px;position:relative;z-index:2}
.ccard .go{margin-top:18px;font-family:Inter;font-weight:600;font-size:12px;letter-spacing:.1em;text-transform:uppercase;display:inline-flex;align-items:center;gap:8px;color:var(--rosso);position:relative;z-index:2}

/* full-bleed banner */
.banner{position:relative;min-height:340px;display:flex;align-items:flex-end;padding:36px 0}
.banner .in{position:relative;z-index:2}
.banner h2{font-size:clamp(38px,7vw,74px)}
.banner p{color:var(--mut);margin-top:10px;max-width:420px;font-size:15px}
.banner .btn{margin-top:22px}

/* footer */
footer{padding:64px 0 0}
.fgrid{display:grid;grid-template-columns:1fr;gap:36px;padding-bottom:50px;border-bottom:1px solid var(--line)}
@media(min-width:760px){.fgrid{grid-template-columns:1.3fr 1fr 1fr 1fr 1fr}}
.fcol h5{font-family:Inter;font-weight:600;font-size:11.5px;letter-spacing:.14em;text-transform:uppercase;color:var(--mut);margin-bottom:16px}
.fcol a{display:block;font-size:14.5px;color:var(--bianco);opacity:.85;margin-bottom:10px}
.fcol a:hover{opacity:1;color:var(--rosso)}
.fcol p{color:var(--mut);font-size:14px;max-width:280px}
.foot-base{display:flex;flex-wrap:wrap;justify-content:space-between;gap:14px;padding:26px 0 40px;font-size:12.5px;color:var(--mut)}
.foot-base a{color:var(--mut)}
.foot-base a:hover{color:var(--bianco)}

.wa-fab{position:fixed;right:18px;bottom:18px;z-index:90;width:56px;height:56px;border-radius:50%;background:var(--rosso);display:flex;align-items:center;justify-content:center;box-shadow:0 8px 24px rgba(0,0,0,.4)}
</style>
</head>
<body>

<header id="hdr">
  <div class="wrap bar">
    <a class="logo" href="index.html">
      <img src="assets/logo.svg" alt="Moto Italia">
    </a>
    <nav class="main">
      <a href="piaggio.html">Piaggio</a>
      <a href="vespa.html">Vespa</a>
      <a href="moto-guzzi.html">Moto Guzzi</a>
      <a href="aprilia.html">Aprilia</a>
      <a href="accessories.html">Accessories</a>
      <a href="about.html">About</a>
      <a href="index.html#contact">Contact</a>
    </nav>
    <button class="hamb" id="hambBtn" aria-label="Menu"><span></span><span></span><span></span></button>
  </div>
</header>

<div class="mmenu" id="mmenu">
  <a href="piaggio.html">Piaggio</a>
  <a href="vespa.html">Vespa</a>
  <a href="moto-guzzi.html">Moto Guzzi</a>
  <a href="aprilia.html">Aprilia</a>
  <a href="accessories.html">Accessories</a>
  <a href="about.html">About</a>
  <a href="index.html#contact">Contact</a>
</div>

<main>

  <section class="pintro photo" style="background-image:url('assets/ph/accessories.jpg');background-position:30% 15%">
    <span class="ph-tag">Stock placeholder — accessories photography pending</span>
    <div class="wrap">
      <div class="eyebrow on rv">Accessories</div>
      <h1 class="rv">Gear up for<br>the ride.</h1>
      <p class="lede rv">Helmets, apparel, genuine parts and care products for every marque we carry.</p>
    </div>
  </section>

  <section>
    <div class="wrap sec-head rv">
      <div class="eyebrow">What We Stock</div>
      <h2>Everything except the bike.</h2>
      <p>Draft copy, final product range to be confirmed with the client. Enquire in store, online ordering is planned for a later phase.</p>
    </div>
    <div class="wrap">
      <div class="cats">
        <div class="ccard ph rv">
          <span class="ph-tag">Category photography pending</span>
          <div class="tag">In Store</div>
          <h3>Helmets</h3>
          <p>Open-face, full-face and modular helmets from trusted safety-rated brands.</p>
          <a class="go" href="#contact">Enquire in Store →</a>
        </div>
        <div class="ccard ph rv">
          <span class="ph-tag">Category photography pending</span>
          <div class="tag">In Store</div>
          <h3>Riding Apparel</h3>
          <p>Jackets, gloves and protective wear built for Cyprus riding conditions.</p>
          <a class="go" href="#contact">Enquire in Store →</a>
        </div>
        <div class="ccard ph rv">
          <span class="ph-tag">Category photography pending</span>
          <div class="tag">In Store</div>
          <h3>Genuine Parts</h3>
          <p>Manufacturer parts for Piaggio, Vespa, Moto Guzzi and Aprilia. No grey imports.</p>
          <a class="go" href="#contact">Enquire in Store →</a>
        </div>
        <div class="ccard ph rv">
          <span class="ph-tag">Category photography pending</span>
          <div class="tag">In Store</div>
          <h3>Care Products</h3>
          <p>Cleaning, protection and maintenance products to keep your bike showroom ready.</p>
          <a class="go" href="#contact">Enquire in Store →</a>
        </div>
      </div>
    </div>
  </section>

  <section id="contact" class="banner photo" style="background-image:url('assets/ph/visit.jpg');background-position:center 68%">
    <span class="ph-tag">Stock placeholder — store photography pending</span>
    <div class="wrap in rv">
      <div class="eyebrow on">Visit Us</div>
      <h2>Find us in Larnaka.</h2>
      <p>Sales, service and genuine parts for Piaggio, Vespa, Moto Guzzi and Aprilia — right in the heart of town.</p>
      <div style="display:flex;flex-wrap:wrap;gap:14px;margin-top:24px">
        <a class="btn fill" href="tel:+35724667400" style="margin-top:0">Call Us</a>
        <a class="btn line" href="https://maps.app.goo.gl/K2wCmmJ4D2DadaAm9" target="_blank" rel="noopener" style="margin-top:0">Get Directions</a>
      </div>
    </div>
  </section>

</main>

<footer>
  <div class="wrap">
    <div class="fgrid">
      <div class="fcol">
        <a class="logo" href="index.html" style="margin-bottom:16px">
          <img src="assets/logo.svg" alt="Moto Italia">
        </a>
        <p>Authorised Larnaka dealer for Piaggio, Vespa, Moto Guzzi and Aprilia.</p>
      </div>
      <div class="fcol">
        <h5>Brands</h5>
        <a href="piaggio.html">Piaggio</a>
        <a href="vespa.html">Vespa</a>
        <a href="moto-guzzi.html">Moto Guzzi</a>
        <a href="aprilia.html">Aprilia</a>
      </div>
      <div class="fcol">
        <h5>Shop</h5>
        <a href="accessories.html">Accessories</a>
        <a href="about.html">About / Store</a>
        <a href="index.html#contact">Contact</a>
      </div>
      <div class="fcol">
        <h5>Visit</h5>
        <a href="https://www.google.com/maps/search/?api=1&query=2+Pentadaktylou+Street+Larnaca+6030" target="_blank" rel="noopener">2 Pentadaktylou Street, Larnaca 6030</a>
        <a href="tel:+35724667400">Tel. 24 667 400</a>
      </div>
      <div class="fcol">
        <h5>Working Hours</h5>
        <p style="line-height:1.8;color:var(--bianco)">
          Monday – Friday<br>08:45 – 13:00 &amp;<br>15:00 – 18:00
        </p>
        <p style="margin-top:14px;line-height:1.8;color:var(--bianco)">
          Wednesday &amp; Saturday<br>08:45 – 13:00
        </p>
      </div>
    </div>
    <div class="foot-base">
      <span>© 2026 Moto Italia. All rights reserved.</span>
      <span><a href="#">Privacy Policy</a> · Website by Wecomeone Marketing And Comms</span>
    </div>
  </div>
</footer>

<a class="wa-fab" href="index.html#contact" aria-label="WhatsApp">
  <svg width="26" height="26" viewBox="0 0 24 24" fill="none"><path d="M17 14.5c-.3-.15-1.77-.87-2.04-.97-.27-.1-.47-.15-.67.15-.2.3-.77.97-.94 1.17-.17.2-.35.22-.65.07-.3-.15-1.26-.46-2.4-1.47-.89-.79-1.48-1.77-1.66-2.07-.17-.3-.02-.46.13-.6.13-.13.3-.35.45-.52.15-.17.2-.3.3-.5.1-.2.05-.37-.02-.52-.07-.15-.67-1.6-.92-2.2-.24-.58-.49-.5-.67-.5-.17-.01-.37-.01-.57-.01s-.52.07-.8.37c-.27.3-1.04 1.02-1.04 2.48s1.07 2.88 1.22 3.08c.15.2 2.1 3.2 5.08 4.49.71.3 1.26.49 1.7.62.71.23 1.36.2 1.87.12.57-.08 1.77-.72 2.02-1.42.25-.7.25-1.3.17-1.42-.07-.13-.27-.2-.57-.35z" fill="#F5F3EF"/><path d="M12 2C6.48 2 2 6.35 2 11.7c0 1.9.55 3.67 1.5 5.18L2 22l5.3-1.4a10.2 10.2 0 0 0 4.7 1.15c5.52 0 10-4.35 10-9.7C22 6.35 17.52 2 12 2z" stroke="#F5F3EF" stroke-width="1.3" fill="none"/></svg>
</a>

<script>
(function(){
  var hdr=document.getElementById('hdr');
  window.addEventListener('scroll',function(){
    hdr.classList.toggle('solid',window.scrollY>40);
  });
  var hb=document.getElementById('hambBtn'), mm=document.getElementById('mmenu');
  hb.addEventListener('click',function(){mm.classList.toggle('open');});
  mm.querySelectorAll('a').forEach(function(a){a.addEventListener('click',function(){mm.classList.remove('open');});});

  var io=new IntersectionObserver(function(entries){
    entries.forEach(function(e){ if(e.isIntersecting){ e.target.classList.add('in'); } });
  },{threshold:.15});
  document.querySelectorAll('.rv').forEach(function(el){io.observe(el);});

  // #contact is the last anchorable section before the footer, so on tall
  // viewports there isn't enough page left below it for the browser to
  // scroll it flush under the fixed header. Give the footer just enough
  // extra bottom space, computed per viewport height, to close that gap.
  var contactEl=document.getElementById('contact');
  var footerEl=document.querySelector('footer');
  if(contactEl&&footerEl){
    var fixT;
    function fixContactScrollSpace(){
      footerEl.style.paddingBottom='';
      var marginTop=parseFloat(getComputedStyle(contactEl).scrollMarginTop)||0;
      var contactAbsTop=contactEl.getBoundingClientRect().top+window.scrollY;
      var spaceBelow=document.documentElement.scrollHeight-contactAbsTop;
      var needed=window.innerHeight-marginTop;
      var extra=Math.max(0,needed-spaceBelow);
      if(extra>0){ footerEl.style.paddingBottom=extra+'px'; }
    }
    fixContactScrollSpace();
    window.addEventListener('resize',function(){
      clearTimeout(fixT);
      fixT=setTimeout(fixContactScrollSpace,200);
    });
  }
})();
</script>

</body>
</html>

'@

Set-Content -Path "piaggio.html" -Encoding utf8 -Value @'
<!doctype html>
<!--
  MOTO ITALIA &mdash; Piaggio brand page, Phase 1
  Prepared by Wecomeone Marketing And Comms, September 2026

  Shares the header, footer, CSS and scroll/menu behaviour with the rest
  of the site (moto-italia-homepage-concept.html, about.html,
  accessories.html) so every page reads as one site. Keep the shared
  chrome in sync across files when any of them changes.

  Brand story copy and model line-up are draft placeholders pending real
  brand materials and photography from Piaggio Group / the client, tagged
  inline so swapping them in later is a drop-in, same pattern as the rest
  of the Phase 1 site.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Piaggio &mdash; Moto Italia</title>
<meta name="description" content="Piaggio scooters at Moto Italia in Larnaka &mdash; sales, service and genuine parts. Enquire in store.">
<link rel="icon" type="image/svg+xml" href="assets/favicon.svg">
<link rel="icon" type="image/png" sizes="32x32" href="assets/favicon-32.png">
<link rel="apple-touch-icon" href="assets/favicon-180.png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
<style>
:root{
  --rosso:#DF0123;
  --nero:#0D0D0D;
  --nero2:#161616;
  --bianco:#F5F3EF;
  --verde:#069147;
  --line:rgba(245,243,239,.14);
  --mut:rgba(245,243,239,.58);
}
*{box-sizing:border-box}
html{scroll-behavior:smooth}
[id]{scroll-margin-top:96px}
body{margin:0;background:var(--nero);color:var(--bianco);font-family:Inter,system-ui,sans-serif;font-weight:400;line-height:1.6;-webkit-font-smoothing:antialiased}
h1,h2,h3,h4{font-family:"Bebas Neue",Inter,sans-serif;font-weight:400;text-transform:uppercase;letter-spacing:.01em;line-height:.94;margin:0}
p{margin:0}
a{color:inherit;text-decoration:none}
img,svg{display:block;max-width:100%}
.wrap{max-width:1240px;margin:0 auto;padding:0 20px}
@media(min-width:760px){.wrap{padding:0 40px}}

.eyebrow{font-family:Inter;font-weight:600;text-transform:uppercase;letter-spacing:.22em;font-size:11.5px;color:var(--mut)}
.eyebrow.on{color:var(--rosso)}
.btn{display:inline-flex;align-items:center;gap:10px;font-family:Inter;font-weight:600;font-size:13.5px;text-transform:uppercase;letter-spacing:.1em;padding:15px 26px;border-radius:2px;transition:opacity .2s}
.btn.fill{background:var(--rosso);color:var(--bianco)}
.btn.line{border:1px solid rgba(245,243,239,.4);color:var(--bianco)}
.btn:hover{opacity:.82}

/* placeholder tag, reused on any block standing in for real photography/video */
.ph{position:relative;overflow:hidden;background-image:
    radial-gradient(120% 140% at 15% 0%, #1c1c1c 0%, #0d0d0d 55%),
    repeating-linear-gradient(120deg, rgba(255,255,255,.02) 0 2px, transparent 2px 44px)}
.ph-tag{position:absolute;right:12px;bottom:12px;font-family:Inter;font-weight:600;font-size:9.5px;letter-spacing:.14em;text-transform:uppercase;color:rgba(245,243,239,.55);background:rgba(0,0,0,.4);border:1px solid rgba(245,243,239,.18);padding:6px 10px;z-index:2}
.photo{background-size:cover;background-position:center}
.hero.photo::before,.banner.photo::before{content:'';position:absolute;inset:0;background:linear-gradient(180deg,rgba(13,13,13,.25) 0%,rgba(13,13,13,.45) 55%,rgba(13,13,13,.93) 100%);z-index:1}
.hero .wrap{position:relative;z-index:2}
.banner .in{position:relative;z-index:2}

/* reveal-on-scroll */
.rv{opacity:0;transform:translateY(28px);transition:opacity .8s ease,transform .8s ease}
.rv.in{opacity:1;transform:none}

/* header */
header{position:fixed;top:0;left:0;right:0;z-index:100;background:transparent;border-bottom:1px solid transparent;transition:background .3s,border-color .3s}
header.solid{background:rgba(13,13,13,.92);backdrop-filter:blur(6px);border-color:var(--line)}
header .bar{display:flex;align-items:center;gap:20px;height:70px}
.logo{display:flex;align-items:center}
.logo img{height:28px;width:auto;display:block}
nav.main{display:none;margin-left:auto;align-items:center;gap:28px}
nav.main a{font-family:"Bebas Neue";font-size:15px;letter-spacing:.06em;color:var(--mut)}
nav.main a:hover{color:var(--bianco)}
nav.main a[href$="#contact"]{color:var(--rosso)}
nav.main a[href$="#contact"]:hover{color:var(--rosso)}
.mmenu a[href$="#contact"]{color:var(--rosso)}
.hamb{margin-left:auto;width:38px;height:38px;border:1px solid var(--line);display:flex;flex-direction:column;justify-content:center;align-items:center;gap:5px;background:none;cursor:pointer}
.hamb span{width:18px;height:1.5px;background:var(--bianco)}
@media(min-width:960px){nav.main{display:flex}.hamb{display:none}}

/* mobile menu */
.mmenu{position:fixed;inset:0;background:var(--nero);z-index:99;display:flex;flex-direction:column;justify-content:center;gap:26px;padding:0 32px;transform:translateY(-100%);transition:transform .35s ease}
.mmenu.open{transform:translateY(0)}
.mmenu a{font-family:"Bebas Neue";font-size:34px}
@media(min-width:960px){.mmenu{display:none}}

@media(min-width:760px){.wrap{padding-left:40px}}

section{padding:80px 0}
@media(min-width:760px){section{padding:120px 0}}
.sec-head{max-width:640px}
.sec-head h2{font-size:clamp(34px,6vw,58px);margin-top:10px}
.sec-head p{color:var(--mut);margin-top:14px;font-size:15.5px}

/* page intro banner */
.pintro{position:relative;min-height:56svh;display:flex;align-items:flex-end;padding:150px 0 64px}
.pintro h1{font-size:clamp(42px,9vw,90px);margin-top:14px}
.pintro .lede{max-width:520px;color:var(--mut);font-size:16.5px;margin-top:18px}

/* split (photo + copy) */
.split{display:grid;grid-template-columns:1fr;gap:36px;align-items:center}
@media(min-width:860px){.split{grid-template-columns:1.1fr 1fr;gap:64px}}
.split .ph{height:320px}
@media(min-width:860px){.split .ph{height:460px}}
.split h2{font-size:clamp(32px,5vw,46px)}
.split p{color:var(--mut);font-size:15.5px;margin-top:16px;max-width:460px}
.split p+p{margin-top:14px}
.split.rev{grid-template-columns:1fr}
@media(min-width:860px){.split.rev{grid-template-columns:1fr 1.1fr}}

/* model grid — same card system as the homepage's Featured Models rail,
   fixed at 3 columns here since each brand page shows 3 models */
.rail{display:grid;grid-template-columns:1fr;gap:16px;margin-top:44px}
@media(min-width:600px){.rail{grid-template-columns:repeat(2,1fr)}}
@media(min-width:860px){.rail{grid-template-columns:repeat(3,1fr)}}
.mcard{position:relative;min-height:360px;background-color:var(--nero2);padding:18px 22px;display:flex;flex-direction:column;justify-content:space-between;overflow:hidden}
.mcard.photo::before{content:'';position:absolute;inset:0;background:linear-gradient(180deg,rgba(13,13,13,.1) 0%,rgba(13,13,13,.25) 45%,rgba(13,13,13,.88) 100%);z-index:1}
.mcard .mtop,.mcard .enq{position:relative;z-index:2}
.mcard .tag{font-family:Inter;font-weight:600;font-size:10.5px;letter-spacing:.14em;text-transform:uppercase;color:var(--bianco);text-shadow:0 2px 10px rgba(0,0,0,.7)}
.mcard h4{font-size:26px;margin-top:6px;color:var(--bianco);text-shadow:0 2px 10px rgba(0,0,0,.7)}
.mcard .enq{font-family:Inter;font-weight:600;font-size:11.5px;letter-spacing:.08em;text-transform:uppercase;color:var(--bianco)}
.mcard .ph-tag{top:12px;bottom:auto;right:12px}
.mcard.ph .tag{color:var(--rosso);text-shadow:none}
.mcard.ph h4{color:var(--bianco);text-shadow:none}
.mcard.ph .enq{color:var(--rosso)}

/* other brands strip */
.obrands{display:flex;flex-wrap:wrap;gap:14px;margin-top:30px}
.obrands a{display:inline-flex;align-items:center;gap:10px;font-family:Inter;font-weight:600;font-size:12.5px;letter-spacing:.1em;text-transform:uppercase;color:var(--bianco);border:1px solid var(--line);padding:14px 22px;transition:border-color .2s,color .2s}
.obrands a:hover{border-color:var(--rosso);color:var(--rosso)}

/* full-bleed banner */
.banner{position:relative;min-height:340px;display:flex;align-items:flex-end;padding:36px 0}
.banner .in{position:relative;z-index:2}
.banner h2{font-size:clamp(38px,7vw,74px)}
.banner p{color:var(--mut);margin-top:10px;max-width:420px;font-size:15px}
.banner .btn{margin-top:22px}

/* footer */
footer{padding:64px 0 0}
.fgrid{display:grid;grid-template-columns:1fr;gap:36px;padding-bottom:50px;border-bottom:1px solid var(--line)}
@media(min-width:760px){.fgrid{grid-template-columns:1.3fr 1fr 1fr 1fr 1fr}}
.fcol h5{font-family:Inter;font-weight:600;font-size:11.5px;letter-spacing:.14em;text-transform:uppercase;color:var(--mut);margin-bottom:16px}
.fcol a{display:block;font-size:14.5px;color:var(--bianco);opacity:.85;margin-bottom:10px}
.fcol a:hover{opacity:1;color:var(--rosso)}
.fcol p{color:var(--mut);font-size:14px;max-width:280px}
.foot-base{display:flex;flex-wrap:wrap;justify-content:space-between;gap:14px;padding:26px 0 40px;font-size:12.5px;color:var(--mut)}
.foot-base a{color:var(--mut)}
.foot-base a:hover{color:var(--bianco)}

.wa-fab{position:fixed;right:18px;bottom:18px;z-index:90;width:56px;height:56px;border-radius:50%;background:var(--rosso);display:flex;align-items:center;justify-content:center;box-shadow:0 8px 24px rgba(0,0,0,.4)}
</style>
</head>
<body>

<header id="hdr">
  <div class="wrap bar">
    <a class="logo" href="index.html">
      <img src="assets/logo.svg" alt="Moto Italia">
    </a>
    <nav class="main">
      <a href="piaggio.html">Piaggio</a>
      <a href="vespa.html">Vespa</a>
      <a href="moto-guzzi.html">Moto Guzzi</a>
      <a href="aprilia.html">Aprilia</a>
      <a href="accessories.html">Accessories</a>
      <a href="about.html">About</a>
      <a href="index.html#contact">Contact</a>
    </nav>
    <button class="hamb" id="hambBtn" aria-label="Menu"><span></span><span></span><span></span></button>
  </div>
</header>

<div class="mmenu" id="mmenu">
  <a href="piaggio.html">Piaggio</a>
  <a href="vespa.html">Vespa</a>
  <a href="moto-guzzi.html">Moto Guzzi</a>
  <a href="aprilia.html">Aprilia</a>
  <a href="accessories.html">Accessories</a>
  <a href="about.html">About</a>
  <a href="index.html#contact">Contact</a>
</div>

<main>

  <section class="pintro photo" style="background-image:url('assets/ph/piaggio.jpg')">
    <span class="ph-tag">Stock placeholder &mdash; Piaggio brand photography pending from Piaggio Group</span>
    <div class="wrap">
      <div class="eyebrow on rv">Est. 1884</div>
      <h1 class="rv">Piaggio</h1>
      <p class="lede rv">Scooters built for everyday Cyprus roads, from city commuting to weekend rides. Sales, service and genuine parts, right here in Larnaka.</p>
    </div>
  </section>

  <section>
    <div class="wrap split rv">
      <div class="ph photo" style="background-image:url('assets/ph/piaggio.jpg')"><span class="ph-tag">Stock placeholder</span></div>
      <div>
        <div class="eyebrow">The Brand</div>
        <h2>Italy's scooter maker since 1884.</h2>
        <p>Piaggio is the company behind the modern scooter, over a century of building practical, dependable two-wheelers for city and coastal roads across Europe. Draft copy, final brand story pending materials from Piaggio Group.</p>
        <p>Moto Italia carries the full Piaggio range as an authorised Larnaka dealer, with manufacturer-trained service and genuine parts, no grey imports.</p>
      </div>
    </div>
  </section>

  <section>
    <div class="wrap sec-head rv">
      <div class="eyebrow">The Range</div>
      <h2>Featured Piaggio models.</h2>
      <p>A draft selection from the current range. No online pricing in Phase 1, enquire in store for availability and pricing.</p>
    </div>
    <div class="wrap">
      <div class="rail">
        <div class="mcard photo rv" style="background-image:url('assets/ph/piaggio-mp3.jpg')">
          <span class="ph-tag">Stock placeholder</span>
          <div class="mtop"><div class="tag">Piaggio</div><h4>MP3</h4></div>
          <a class="enq" href="#contact">Enquire in store &rarr;</a>
        </div>
        <div class="mcard ph rv">
          <span class="ph-tag">Model photography pending</span>
          <div class="mtop"><div class="tag">Piaggio</div><h4>Beverly</h4></div>
          <a class="enq" href="#contact">Enquire in store &rarr;</a>
        </div>
        <div class="mcard ph rv">
          <span class="ph-tag">Model photography pending</span>
          <div class="mtop"><div class="tag">Piaggio</div><h4>Liberty</h4></div>
          <a class="enq" href="#contact">Enquire in store &rarr;</a>
        </div>
      </div>
    </div>
  </section>

  <section class="banner photo" style="background-image:url('assets/ph/store.jpg');background-position:30% 15%">
    <span class="ph-tag">Stock placeholder</span>
    <div class="wrap in rv">
      <div class="eyebrow on">Why Piaggio</div>
      <h2>Practical, everyday riding.</h2>
      <p>Test ride a Piaggio at the shop, or book a service for the one you already own.</p>
      <a class="btn fill" href="index.html#contact">Plan Your Visit</a>
    </div>
  </section>

  <section>
    <div class="wrap sec-head rv">
      <div class="eyebrow">Also At Moto Italia</div>
      <h2>The other three marques.</h2>
      <p>One Larnaka address, four Italian brands. Sales, service and genuine parts for all of them.</p>
    </div>
    <div class="wrap">
      <div class="obrands rv">
      <a href="vespa.html">Vespa &rarr;</a>
      <a href="moto-guzzi.html">Moto Guzzi &rarr;</a>
      <a href="aprilia.html">Aprilia &rarr;</a>
      </div>
    </div>
  </section>

  <section id="contact" class="banner photo" style="background-image:url('assets/ph/visit.jpg');background-position:center 68%">
    <span class="ph-tag">Stock placeholder &mdash; store photography pending</span>
    <div class="wrap in rv">
      <div class="eyebrow on">Visit Us</div>
      <h2>Find us in Larnaka.</h2>
      <p>Sales, service and genuine parts for Piaggio, Vespa, Moto Guzzi and Aprilia &mdash; right in the heart of town.</p>
      <div style="display:flex;flex-wrap:wrap;gap:14px;margin-top:24px">
        <a class="btn fill" href="tel:+35724667400" style="margin-top:0">Call Us</a>
        <a class="btn line" href="https://maps.app.goo.gl/K2wCmmJ4D2DadaAm9" target="_blank" rel="noopener" style="margin-top:0">Get Directions</a>
      </div>
    </div>
  </section>

</main>

<footer>
  <div class="wrap">
    <div class="fgrid">
      <div class="fcol">
        <a class="logo" href="index.html" style="margin-bottom:16px">
          <img src="assets/logo.svg" alt="Moto Italia">
        </a>
        <p>Authorised Larnaka dealer for Piaggio, Vespa, Moto Guzzi and Aprilia.</p>
      </div>
      <div class="fcol">
        <h5>Brands</h5>
        <a href="piaggio.html">Piaggio</a>
        <a href="vespa.html">Vespa</a>
        <a href="moto-guzzi.html">Moto Guzzi</a>
        <a href="aprilia.html">Aprilia</a>
      </div>
      <div class="fcol">
        <h5>Shop</h5>
        <a href="accessories.html">Accessories</a>
        <a href="about.html">About / Store</a>
        <a href="index.html#contact">Contact</a>
      </div>
      <div class="fcol">
        <h5>Visit</h5>
        <a href="https://www.google.com/maps/search/?api=1&query=2+Pentadaktylou+Street+Larnaca+6030" target="_blank" rel="noopener">2 Pentadaktylou Street, Larnaca 6030</a>
        <a href="tel:+35724667400">Tel. 24 667 400</a>
      </div>
      <div class="fcol">
        <h5>Working Hours</h5>
        <p style="line-height:1.8;color:var(--bianco)">
          Monday &ndash; Friday<br>08:45 &ndash; 13:00 &amp;<br>15:00 &ndash; 18:00
        </p>
        <p style="margin-top:14px;line-height:1.8;color:var(--bianco)">
          Wednesday &amp; Saturday<br>08:45 &ndash; 13:00
        </p>
      </div>
    </div>
    <div class="foot-base">
      <span>&copy; 2026 Moto Italia. All rights reserved.</span>
      <span><a href="#">Privacy Policy</a> &middot; Website by Wecomeone Marketing And Comms</span>
    </div>
  </div>
</footer>

<a class="wa-fab" href="index.html#contact" aria-label="WhatsApp">
  <svg width="26" height="26" viewBox="0 0 24 24" fill="none"><path d="M17 14.5c-.3-.15-1.77-.87-2.04-.97-.27-.1-.47-.15-.67.15-.2.3-.77.97-.94 1.17-.17.2-.35.22-.65.07-.3-.15-1.26-.46-2.4-1.47-.89-.79-1.48-1.77-1.66-2.07-.17-.3-.02-.46.13-.6.13-.13.3-.35.45-.52.15-.17.2-.3.3-.5.1-.2.05-.37-.02-.52-.07-.15-.67-1.6-.92-2.2-.24-.58-.49-.5-.67-.5-.17-.01-.37-.01-.57-.01s-.52.07-.8.37c-.27.3-1.04 1.02-1.04 2.48s1.07 2.88 1.22 3.08c.15.2 2.1 3.2 5.08 4.49.71.3 1.26.49 1.7.62.71.23 1.36.2 1.87.12.57-.08 1.77-.72 2.02-1.42.25-.7.25-1.3.17-1.42-.07-.13-.27-.2-.57-.35z" fill="#F5F3EF"/><path d="M12 2C6.48 2 2 6.35 2 11.7c0 1.9.55 3.67 1.5 5.18L2 22l5.3-1.4a10.2 10.2 0 0 0 4.7 1.15c5.52 0 10-4.35 10-9.7C22 6.35 17.52 2 12 2z" stroke="#F5F3EF" stroke-width="1.3" fill="none"/></svg>
</a>

<script>
(function(){
  var hdr=document.getElementById('hdr');
  window.addEventListener('scroll',function(){
    hdr.classList.toggle('solid',window.scrollY>40);
  });
  var hb=document.getElementById('hambBtn'), mm=document.getElementById('mmenu');
  hb.addEventListener('click',function(){mm.classList.toggle('open');});
  mm.querySelectorAll('a').forEach(function(a){a.addEventListener('click',function(){mm.classList.remove('open');});});

  var io=new IntersectionObserver(function(entries){
    entries.forEach(function(e){ if(e.isIntersecting){ e.target.classList.add('in'); } });
  },{threshold:.15});
  document.querySelectorAll('.rv').forEach(function(el){io.observe(el);});

  // #contact is the last anchorable section before the footer, so on tall
  // viewports there isn't enough page left below it for the browser to
  // scroll it flush under the fixed header. Give the footer just enough
  // extra bottom space, computed per viewport height, to close that gap.
  var contactEl=document.getElementById('contact');
  var footerEl=document.querySelector('footer');
  if(contactEl&&footerEl){
    var fixT;
    function fixContactScrollSpace(){
      footerEl.style.paddingBottom='';
      var marginTop=parseFloat(getComputedStyle(contactEl).scrollMarginTop)||0;
      var contactAbsTop=contactEl.getBoundingClientRect().top+window.scrollY;
      var spaceBelow=document.documentElement.scrollHeight-contactAbsTop;
      var needed=window.innerHeight-marginTop;
      var extra=Math.max(0,needed-spaceBelow);
      if(extra>0){ footerEl.style.paddingBottom=extra+'px'; }
    }
    fixContactScrollSpace();
    window.addEventListener('resize',function(){
      clearTimeout(fixT);
      fixT=setTimeout(fixContactScrollSpace,200);
    });
  }
})();
</script>

</body>
</html>

'@

Set-Content -Path "vespa.html" -Encoding utf8 -Value @'
<!doctype html>
<!--
  MOTO ITALIA &mdash; Vespa brand page, Phase 1
  Prepared by Wecomeone Marketing And Comms, September 2026

  Shares the header, footer, CSS and scroll/menu behaviour with the rest
  of the site (moto-italia-homepage-concept.html, about.html,
  accessories.html) so every page reads as one site. Keep the shared
  chrome in sync across files when any of them changes.

  Brand story copy and model line-up are draft placeholders pending real
  brand materials and photography from Piaggio Group / the client, tagged
  inline so swapping them in later is a drop-in, same pattern as the rest
  of the Phase 1 site.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Vespa &mdash; Moto Italia</title>
<meta name="description" content="Vespa scooters at Moto Italia in Larnaka &mdash; sales, service and genuine parts. Enquire in store.">
<link rel="icon" type="image/svg+xml" href="assets/favicon.svg">
<link rel="icon" type="image/png" sizes="32x32" href="assets/favicon-32.png">
<link rel="apple-touch-icon" href="assets/favicon-180.png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
<style>
:root{
  --rosso:#DF0123;
  --nero:#0D0D0D;
  --nero2:#161616;
  --bianco:#F5F3EF;
  --verde:#069147;
  --line:rgba(245,243,239,.14);
  --mut:rgba(245,243,239,.58);
}
*{box-sizing:border-box}
html{scroll-behavior:smooth}
[id]{scroll-margin-top:96px}
body{margin:0;background:var(--nero);color:var(--bianco);font-family:Inter,system-ui,sans-serif;font-weight:400;line-height:1.6;-webkit-font-smoothing:antialiased}
h1,h2,h3,h4{font-family:"Bebas Neue",Inter,sans-serif;font-weight:400;text-transform:uppercase;letter-spacing:.01em;line-height:.94;margin:0}
p{margin:0}
a{color:inherit;text-decoration:none}
img,svg{display:block;max-width:100%}
.wrap{max-width:1240px;margin:0 auto;padding:0 20px}
@media(min-width:760px){.wrap{padding:0 40px}}

.eyebrow{font-family:Inter;font-weight:600;text-transform:uppercase;letter-spacing:.22em;font-size:11.5px;color:var(--mut)}
.eyebrow.on{color:var(--rosso)}
.btn{display:inline-flex;align-items:center;gap:10px;font-family:Inter;font-weight:600;font-size:13.5px;text-transform:uppercase;letter-spacing:.1em;padding:15px 26px;border-radius:2px;transition:opacity .2s}
.btn.fill{background:var(--rosso);color:var(--bianco)}
.btn.line{border:1px solid rgba(245,243,239,.4);color:var(--bianco)}
.btn:hover{opacity:.82}

/* placeholder tag, reused on any block standing in for real photography/video */
.ph{position:relative;overflow:hidden;background-image:
    radial-gradient(120% 140% at 15% 0%, #1c1c1c 0%, #0d0d0d 55%),
    repeating-linear-gradient(120deg, rgba(255,255,255,.02) 0 2px, transparent 2px 44px)}
.ph-tag{position:absolute;right:12px;bottom:12px;font-family:Inter;font-weight:600;font-size:9.5px;letter-spacing:.14em;text-transform:uppercase;color:rgba(245,243,239,.55);background:rgba(0,0,0,.4);border:1px solid rgba(245,243,239,.18);padding:6px 10px;z-index:2}
.photo{background-size:cover;background-position:center}
.hero.photo::before,.banner.photo::before{content:'';position:absolute;inset:0;background:linear-gradient(180deg,rgba(13,13,13,.25) 0%,rgba(13,13,13,.45) 55%,rgba(13,13,13,.93) 100%);z-index:1}
.hero .wrap{position:relative;z-index:2}
.banner .in{position:relative;z-index:2}

/* reveal-on-scroll */
.rv{opacity:0;transform:translateY(28px);transition:opacity .8s ease,transform .8s ease}
.rv.in{opacity:1;transform:none}

/* header */
header{position:fixed;top:0;left:0;right:0;z-index:100;background:transparent;border-bottom:1px solid transparent;transition:background .3s,border-color .3s}
header.solid{background:rgba(13,13,13,.92);backdrop-filter:blur(6px);border-color:var(--line)}
header .bar{display:flex;align-items:center;gap:20px;height:70px}
.logo{display:flex;align-items:center}
.logo img{height:28px;width:auto;display:block}
nav.main{display:none;margin-left:auto;align-items:center;gap:28px}
nav.main a{font-family:"Bebas Neue";font-size:15px;letter-spacing:.06em;color:var(--mut)}
nav.main a:hover{color:var(--bianco)}
nav.main a[href$="#contact"]{color:var(--rosso)}
nav.main a[href$="#contact"]:hover{color:var(--rosso)}
.mmenu a[href$="#contact"]{color:var(--rosso)}
.hamb{margin-left:auto;width:38px;height:38px;border:1px solid var(--line);display:flex;flex-direction:column;justify-content:center;align-items:center;gap:5px;background:none;cursor:pointer}
.hamb span{width:18px;height:1.5px;background:var(--bianco)}
@media(min-width:960px){nav.main{display:flex}.hamb{display:none}}

/* mobile menu */
.mmenu{position:fixed;inset:0;background:var(--nero);z-index:99;display:flex;flex-direction:column;justify-content:center;gap:26px;padding:0 32px;transform:translateY(-100%);transition:transform .35s ease}
.mmenu.open{transform:translateY(0)}
.mmenu a{font-family:"Bebas Neue";font-size:34px}
@media(min-width:960px){.mmenu{display:none}}

@media(min-width:760px){.wrap{padding-left:40px}}

section{padding:80px 0}
@media(min-width:760px){section{padding:120px 0}}
.sec-head{max-width:640px}
.sec-head h2{font-size:clamp(34px,6vw,58px);margin-top:10px}
.sec-head p{color:var(--mut);margin-top:14px;font-size:15.5px}

/* page intro banner */
.pintro{position:relative;min-height:56svh;display:flex;align-items:flex-end;padding:150px 0 64px}
.pintro h1{font-size:clamp(42px,9vw,90px);margin-top:14px}
.pintro .lede{max-width:520px;color:var(--mut);font-size:16.5px;margin-top:18px}

/* split (photo + copy) */
.split{display:grid;grid-template-columns:1fr;gap:36px;align-items:center}
@media(min-width:860px){.split{grid-template-columns:1.1fr 1fr;gap:64px}}
.split .ph{height:320px}
@media(min-width:860px){.split .ph{height:460px}}
.split h2{font-size:clamp(32px,5vw,46px)}
.split p{color:var(--mut);font-size:15.5px;margin-top:16px;max-width:460px}
.split p+p{margin-top:14px}
.split.rev{grid-template-columns:1fr}
@media(min-width:860px){.split.rev{grid-template-columns:1fr 1.1fr}}

/* model grid — same card system as the homepage's Featured Models rail,
   fixed at 3 columns here since each brand page shows 3 models */
.rail{display:grid;grid-template-columns:1fr;gap:16px;margin-top:44px}
@media(min-width:600px){.rail{grid-template-columns:repeat(2,1fr)}}
@media(min-width:860px){.rail{grid-template-columns:repeat(3,1fr)}}
.mcard{position:relative;min-height:360px;background-color:var(--nero2);padding:18px 22px;display:flex;flex-direction:column;justify-content:space-between;overflow:hidden}
.mcard.photo::before{content:'';position:absolute;inset:0;background:linear-gradient(180deg,rgba(13,13,13,.1) 0%,rgba(13,13,13,.25) 45%,rgba(13,13,13,.88) 100%);z-index:1}
.mcard .mtop,.mcard .enq{position:relative;z-index:2}
.mcard .tag{font-family:Inter;font-weight:600;font-size:10.5px;letter-spacing:.14em;text-transform:uppercase;color:var(--bianco);text-shadow:0 2px 10px rgba(0,0,0,.7)}
.mcard h4{font-size:26px;margin-top:6px;color:var(--bianco);text-shadow:0 2px 10px rgba(0,0,0,.7)}
.mcard .enq{font-family:Inter;font-weight:600;font-size:11.5px;letter-spacing:.08em;text-transform:uppercase;color:var(--bianco)}
.mcard .ph-tag{top:12px;bottom:auto;right:12px}
.mcard.ph .tag{color:var(--rosso);text-shadow:none}
.mcard.ph h4{color:var(--bianco);text-shadow:none}
.mcard.ph .enq{color:var(--rosso)}

/* other brands strip */
.obrands{display:flex;flex-wrap:wrap;gap:14px;margin-top:30px}
.obrands a{display:inline-flex;align-items:center;gap:10px;font-family:Inter;font-weight:600;font-size:12.5px;letter-spacing:.1em;text-transform:uppercase;color:var(--bianco);border:1px solid var(--line);padding:14px 22px;transition:border-color .2s,color .2s}
.obrands a:hover{border-color:var(--rosso);color:var(--rosso)}

/* full-bleed banner */
.banner{position:relative;min-height:340px;display:flex;align-items:flex-end;padding:36px 0}
.banner .in{position:relative;z-index:2}
.banner h2{font-size:clamp(38px,7vw,74px)}
.banner p{color:var(--mut);margin-top:10px;max-width:420px;font-size:15px}
.banner .btn{margin-top:22px}

/* footer */
footer{padding:64px 0 0}
.fgrid{display:grid;grid-template-columns:1fr;gap:36px;padding-bottom:50px;border-bottom:1px solid var(--line)}
@media(min-width:760px){.fgrid{grid-template-columns:1.3fr 1fr 1fr 1fr 1fr}}
.fcol h5{font-family:Inter;font-weight:600;font-size:11.5px;letter-spacing:.14em;text-transform:uppercase;color:var(--mut);margin-bottom:16px}
.fcol a{display:block;font-size:14.5px;color:var(--bianco);opacity:.85;margin-bottom:10px}
.fcol a:hover{opacity:1;color:var(--rosso)}
.fcol p{color:var(--mut);font-size:14px;max-width:280px}
.foot-base{display:flex;flex-wrap:wrap;justify-content:space-between;gap:14px;padding:26px 0 40px;font-size:12.5px;color:var(--mut)}
.foot-base a{color:var(--mut)}
.foot-base a:hover{color:var(--bianco)}

.wa-fab{position:fixed;right:18px;bottom:18px;z-index:90;width:56px;height:56px;border-radius:50%;background:var(--rosso);display:flex;align-items:center;justify-content:center;box-shadow:0 8px 24px rgba(0,0,0,.4)}
</style>
</head>
<body>

<header id="hdr">
  <div class="wrap bar">
    <a class="logo" href="index.html">
      <img src="assets/logo.svg" alt="Moto Italia">
    </a>
    <nav class="main">
      <a href="piaggio.html">Piaggio</a>
      <a href="vespa.html">Vespa</a>
      <a href="moto-guzzi.html">Moto Guzzi</a>
      <a href="aprilia.html">Aprilia</a>
      <a href="accessories.html">Accessories</a>
      <a href="about.html">About</a>
      <a href="index.html#contact">Contact</a>
    </nav>
    <button class="hamb" id="hambBtn" aria-label="Menu"><span></span><span></span><span></span></button>
  </div>
</header>

<div class="mmenu" id="mmenu">
  <a href="piaggio.html">Piaggio</a>
  <a href="vespa.html">Vespa</a>
  <a href="moto-guzzi.html">Moto Guzzi</a>
  <a href="aprilia.html">Aprilia</a>
  <a href="accessories.html">Accessories</a>
  <a href="about.html">About</a>
  <a href="index.html#contact">Contact</a>
</div>

<main>

  <section class="pintro photo" style="background-image:url('assets/ph/vespa.jpg')">
    <span class="ph-tag">Stock placeholder &mdash; Vespa brand photography pending from Piaggio Group</span>
    <div class="wrap">
      <div class="eyebrow on rv">Since 1946</div>
      <h1 class="rv">Vespa</h1>
      <p class="lede rv">The icon, reinvented every generation. Timeless design, modern engineering, sales and service in Larnaka.</p>
    </div>
  </section>

  <section>
    <div class="wrap split rv">
      <div class="ph photo" style="background-image:url('assets/ph/vespa.jpg')"><span class="ph-tag">Stock placeholder</span></div>
      <div>
        <div class="eyebrow">The Brand</div>
        <h2>The icon, since 1946.</h2>
        <p>Vespa has stood for the same idea since the post-war years, simple, stylish, effortless riding. The shape has evolved, the idea hasn't. Draft copy, final brand story pending materials from Piaggio Group.</p>
        <p>Moto Italia carries the full Vespa range as an authorised Larnaka dealer, with manufacturer-trained service and genuine parts, no grey imports.</p>
      </div>
    </div>
  </section>

  <section>
    <div class="wrap sec-head rv">
      <div class="eyebrow">The Range</div>
      <h2>Featured Vespa models.</h2>
      <p>A draft selection from the current range. No online pricing in Phase 1, enquire in store for availability and pricing.</p>
    </div>
    <div class="wrap">
      <div class="rail">
        <div class="mcard photo rv" style="background-image:url('assets/ph/vespa-primavera.jpg')">
          <span class="ph-tag">Stock placeholder</span>
          <div class="mtop"><div class="tag">Vespa</div><h4>Primavera</h4></div>
          <a class="enq" href="#contact">Enquire in store &rarr;</a>
        </div>
        <div class="mcard ph rv">
          <span class="ph-tag">Model photography pending</span>
          <div class="mtop"><div class="tag">Vespa</div><h4>GTS</h4></div>
          <a class="enq" href="#contact">Enquire in store &rarr;</a>
        </div>
        <div class="mcard ph rv">
          <span class="ph-tag">Model photography pending</span>
          <div class="mtop"><div class="tag">Vespa</div><h4>Sprint</h4></div>
          <a class="enq" href="#contact">Enquire in store &rarr;</a>
        </div>
      </div>
    </div>
  </section>

  <section class="banner photo" style="background-image:url('assets/ph/store.jpg');background-position:30% 15%">
    <span class="ph-tag">Stock placeholder</span>
    <div class="wrap in rv">
      <div class="eyebrow on">Why Vespa</div>
      <h2>Style that doesn't date.</h2>
      <p>Test ride a Vespa at the shop, or book a service for the one you already own.</p>
      <a class="btn fill" href="index.html#contact">Plan Your Visit</a>
    </div>
  </section>

  <section>
    <div class="wrap sec-head rv">
      <div class="eyebrow">Also At Moto Italia</div>
      <h2>The other three marques.</h2>
      <p>One Larnaka address, four Italian brands. Sales, service and genuine parts for all of them.</p>
    </div>
    <div class="wrap">
      <div class="obrands rv">
      <a href="piaggio.html">Piaggio &rarr;</a>
      <a href="moto-guzzi.html">Moto Guzzi &rarr;</a>
      <a href="aprilia.html">Aprilia &rarr;</a>
      </div>
    </div>
  </section>

  <section id="contact" class="banner photo" style="background-image:url('assets/ph/visit.jpg');background-position:center 68%">
    <span class="ph-tag">Stock placeholder &mdash; store photography pending</span>
    <div class="wrap in rv">
      <div class="eyebrow on">Visit Us</div>
      <h2>Find us in Larnaka.</h2>
      <p>Sales, service and genuine parts for Piaggio, Vespa, Moto Guzzi and Aprilia &mdash; right in the heart of town.</p>
      <div style="display:flex;flex-wrap:wrap;gap:14px;margin-top:24px">
        <a class="btn fill" href="tel:+35724667400" style="margin-top:0">Call Us</a>
        <a class="btn line" href="https://maps.app.goo.gl/K2wCmmJ4D2DadaAm9" target="_blank" rel="noopener" style="margin-top:0">Get Directions</a>
      </div>
    </div>
  </section>

</main>

<footer>
  <div class="wrap">
    <div class="fgrid">
      <div class="fcol">
        <a class="logo" href="index.html" style="margin-bottom:16px">
          <img src="assets/logo.svg" alt="Moto Italia">
        </a>
        <p>Authorised Larnaka dealer for Piaggio, Vespa, Moto Guzzi and Aprilia.</p>
      </div>
      <div class="fcol">
        <h5>Brands</h5>
        <a href="piaggio.html">Piaggio</a>
        <a href="vespa.html">Vespa</a>
        <a href="moto-guzzi.html">Moto Guzzi</a>
        <a href="aprilia.html">Aprilia</a>
      </div>
      <div class="fcol">
        <h5>Shop</h5>
        <a href="accessories.html">Accessories</a>
        <a href="about.html">About / Store</a>
        <a href="index.html#contact">Contact</a>
      </div>
      <div class="fcol">
        <h5>Visit</h5>
        <a href="https://www.google.com/maps/search/?api=1&query=2+Pentadaktylou+Street+Larnaca+6030" target="_blank" rel="noopener">2 Pentadaktylou Street, Larnaca 6030</a>
        <a href="tel:+35724667400">Tel. 24 667 400</a>
      </div>
      <div class="fcol">
        <h5>Working Hours</h5>
        <p style="line-height:1.8;color:var(--bianco)">
          Monday &ndash; Friday<br>08:45 &ndash; 13:00 &amp;<br>15:00 &ndash; 18:00
        </p>
        <p style="margin-top:14px;line-height:1.8;color:var(--bianco)">
          Wednesday &amp; Saturday<br>08:45 &ndash; 13:00
        </p>
      </div>
    </div>
    <div class="foot-base">
      <span>&copy; 2026 Moto Italia. All rights reserved.</span>
      <span><a href="#">Privacy Policy</a> &middot; Website by Wecomeone Marketing And Comms</span>
    </div>
  </div>
</footer>

<a class="wa-fab" href="index.html#contact" aria-label="WhatsApp">
  <svg width="26" height="26" viewBox="0 0 24 24" fill="none"><path d="M17 14.5c-.3-.15-1.77-.87-2.04-.97-.27-.1-.47-.15-.67.15-.2.3-.77.97-.94 1.17-.17.2-.35.22-.65.07-.3-.15-1.26-.46-2.4-1.47-.89-.79-1.48-1.77-1.66-2.07-.17-.3-.02-.46.13-.6.13-.13.3-.35.45-.52.15-.17.2-.3.3-.5.1-.2.05-.37-.02-.52-.07-.15-.67-1.6-.92-2.2-.24-.58-.49-.5-.67-.5-.17-.01-.37-.01-.57-.01s-.52.07-.8.37c-.27.3-1.04 1.02-1.04 2.48s1.07 2.88 1.22 3.08c.15.2 2.1 3.2 5.08 4.49.71.3 1.26.49 1.7.62.71.23 1.36.2 1.87.12.57-.08 1.77-.72 2.02-1.42.25-.7.25-1.3.17-1.42-.07-.13-.27-.2-.57-.35z" fill="#F5F3EF"/><path d="M12 2C6.48 2 2 6.35 2 11.7c0 1.9.55 3.67 1.5 5.18L2 22l5.3-1.4a10.2 10.2 0 0 0 4.7 1.15c5.52 0 10-4.35 10-9.7C22 6.35 17.52 2 12 2z" stroke="#F5F3EF" stroke-width="1.3" fill="none"/></svg>
</a>

<script>
(function(){
  var hdr=document.getElementById('hdr');
  window.addEventListener('scroll',function(){
    hdr.classList.toggle('solid',window.scrollY>40);
  });
  var hb=document.getElementById('hambBtn'), mm=document.getElementById('mmenu');
  hb.addEventListener('click',function(){mm.classList.toggle('open');});
  mm.querySelectorAll('a').forEach(function(a){a.addEventListener('click',function(){mm.classList.remove('open');});});

  var io=new IntersectionObserver(function(entries){
    entries.forEach(function(e){ if(e.isIntersecting){ e.target.classList.add('in'); } });
  },{threshold:.15});
  document.querySelectorAll('.rv').forEach(function(el){io.observe(el);});

  // #contact is the last anchorable section before the footer, so on tall
  // viewports there isn't enough page left below it for the browser to
  // scroll it flush under the fixed header. Give the footer just enough
  // extra bottom space, computed per viewport height, to close that gap.
  var contactEl=document.getElementById('contact');
  var footerEl=document.querySelector('footer');
  if(contactEl&&footerEl){
    var fixT;
    function fixContactScrollSpace(){
      footerEl.style.paddingBottom='';
      var marginTop=parseFloat(getComputedStyle(contactEl).scrollMarginTop)||0;
      var contactAbsTop=contactEl.getBoundingClientRect().top+window.scrollY;
      var spaceBelow=document.documentElement.scrollHeight-contactAbsTop;
      var needed=window.innerHeight-marginTop;
      var extra=Math.max(0,needed-spaceBelow);
      if(extra>0){ footerEl.style.paddingBottom=extra+'px'; }
    }
    fixContactScrollSpace();
    window.addEventListener('resize',function(){
      clearTimeout(fixT);
      fixT=setTimeout(fixContactScrollSpace,200);
    });
  }
})();
</script>

</body>
</html>

'@

Set-Content -Path "moto-guzzi.html" -Encoding utf8 -Value @'
<!doctype html>
<!--
  MOTO ITALIA &mdash; Moto Guzzi brand page, Phase 1
  Prepared by Wecomeone Marketing And Comms, September 2026

  Shares the header, footer, CSS and scroll/menu behaviour with the rest
  of the site (moto-italia-homepage-concept.html, about.html,
  accessories.html) so every page reads as one site. Keep the shared
  chrome in sync across files when any of them changes.

  Brand story copy and model line-up are draft placeholders pending real
  brand materials and photography from Piaggio Group / the client, tagged
  inline so swapping them in later is a drop-in, same pattern as the rest
  of the Phase 1 site.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Moto Guzzi &mdash; Moto Italia</title>
<meta name="description" content="Moto Guzzi motorcycles at Moto Italia in Larnaka &mdash; sales, service and genuine parts. Enquire in store.">
<link rel="icon" type="image/svg+xml" href="assets/favicon.svg">
<link rel="icon" type="image/png" sizes="32x32" href="assets/favicon-32.png">
<link rel="apple-touch-icon" href="assets/favicon-180.png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
<style>
:root{
  --rosso:#DF0123;
  --nero:#0D0D0D;
  --nero2:#161616;
  --bianco:#F5F3EF;
  --verde:#069147;
  --line:rgba(245,243,239,.14);
  --mut:rgba(245,243,239,.58);
}
*{box-sizing:border-box}
html{scroll-behavior:smooth}
[id]{scroll-margin-top:96px}
body{margin:0;background:var(--nero);color:var(--bianco);font-family:Inter,system-ui,sans-serif;font-weight:400;line-height:1.6;-webkit-font-smoothing:antialiased}
h1,h2,h3,h4{font-family:"Bebas Neue",Inter,sans-serif;font-weight:400;text-transform:uppercase;letter-spacing:.01em;line-height:.94;margin:0}
p{margin:0}
a{color:inherit;text-decoration:none}
img,svg{display:block;max-width:100%}
.wrap{max-width:1240px;margin:0 auto;padding:0 20px}
@media(min-width:760px){.wrap{padding:0 40px}}

.eyebrow{font-family:Inter;font-weight:600;text-transform:uppercase;letter-spacing:.22em;font-size:11.5px;color:var(--mut)}
.eyebrow.on{color:var(--rosso)}
.btn{display:inline-flex;align-items:center;gap:10px;font-family:Inter;font-weight:600;font-size:13.5px;text-transform:uppercase;letter-spacing:.1em;padding:15px 26px;border-radius:2px;transition:opacity .2s}
.btn.fill{background:var(--rosso);color:var(--bianco)}
.btn.line{border:1px solid rgba(245,243,239,.4);color:var(--bianco)}
.btn:hover{opacity:.82}

/* placeholder tag, reused on any block standing in for real photography/video */
.ph{position:relative;overflow:hidden;background-image:
    radial-gradient(120% 140% at 15% 0%, #1c1c1c 0%, #0d0d0d 55%),
    repeating-linear-gradient(120deg, rgba(255,255,255,.02) 0 2px, transparent 2px 44px)}
.ph-tag{position:absolute;right:12px;bottom:12px;font-family:Inter;font-weight:600;font-size:9.5px;letter-spacing:.14em;text-transform:uppercase;color:rgba(245,243,239,.55);background:rgba(0,0,0,.4);border:1px solid rgba(245,243,239,.18);padding:6px 10px;z-index:2}
.photo{background-size:cover;background-position:center}
.hero.photo::before,.banner.photo::before{content:'';position:absolute;inset:0;background:linear-gradient(180deg,rgba(13,13,13,.25) 0%,rgba(13,13,13,.45) 55%,rgba(13,13,13,.93) 100%);z-index:1}
.hero .wrap{position:relative;z-index:2}
.banner .in{position:relative;z-index:2}

/* reveal-on-scroll */
.rv{opacity:0;transform:translateY(28px);transition:opacity .8s ease,transform .8s ease}
.rv.in{opacity:1;transform:none}

/* header */
header{position:fixed;top:0;left:0;right:0;z-index:100;background:transparent;border-bottom:1px solid transparent;transition:background .3s,border-color .3s}
header.solid{background:rgba(13,13,13,.92);backdrop-filter:blur(6px);border-color:var(--line)}
header .bar{display:flex;align-items:center;gap:20px;height:70px}
.logo{display:flex;align-items:center}
.logo img{height:28px;width:auto;display:block}
nav.main{display:none;margin-left:auto;align-items:center;gap:28px}
nav.main a{font-family:"Bebas Neue";font-size:15px;letter-spacing:.06em;color:var(--mut)}
nav.main a:hover{color:var(--bianco)}
nav.main a[href$="#contact"]{color:var(--rosso)}
nav.main a[href$="#contact"]:hover{color:var(--rosso)}
.mmenu a[href$="#contact"]{color:var(--rosso)}
.hamb{margin-left:auto;width:38px;height:38px;border:1px solid var(--line);display:flex;flex-direction:column;justify-content:center;align-items:center;gap:5px;background:none;cursor:pointer}
.hamb span{width:18px;height:1.5px;background:var(--bianco)}
@media(min-width:960px){nav.main{display:flex}.hamb{display:none}}

/* mobile menu */
.mmenu{position:fixed;inset:0;background:var(--nero);z-index:99;display:flex;flex-direction:column;justify-content:center;gap:26px;padding:0 32px;transform:translateY(-100%);transition:transform .35s ease}
.mmenu.open{transform:translateY(0)}
.mmenu a{font-family:"Bebas Neue";font-size:34px}
@media(min-width:960px){.mmenu{display:none}}

@media(min-width:760px){.wrap{padding-left:40px}}

section{padding:80px 0}
@media(min-width:760px){section{padding:120px 0}}
.sec-head{max-width:640px}
.sec-head h2{font-size:clamp(34px,6vw,58px);margin-top:10px}
.sec-head p{color:var(--mut);margin-top:14px;font-size:15.5px}

/* page intro banner */
.pintro{position:relative;min-height:56svh;display:flex;align-items:flex-end;padding:150px 0 64px}
.pintro h1{font-size:clamp(42px,9vw,90px);margin-top:14px}
.pintro .lede{max-width:520px;color:var(--mut);font-size:16.5px;margin-top:18px}

/* split (photo + copy) */
.split{display:grid;grid-template-columns:1fr;gap:36px;align-items:center}
@media(min-width:860px){.split{grid-template-columns:1.1fr 1fr;gap:64px}}
.split .ph{height:320px}
@media(min-width:860px){.split .ph{height:460px}}
.split h2{font-size:clamp(32px,5vw,46px)}
.split p{color:var(--mut);font-size:15.5px;margin-top:16px;max-width:460px}
.split p+p{margin-top:14px}
.split.rev{grid-template-columns:1fr}
@media(min-width:860px){.split.rev{grid-template-columns:1fr 1.1fr}}

/* model grid — same card system as the homepage's Featured Models rail,
   fixed at 3 columns here since each brand page shows 3 models */
.rail{display:grid;grid-template-columns:1fr;gap:16px;margin-top:44px}
@media(min-width:600px){.rail{grid-template-columns:repeat(2,1fr)}}
@media(min-width:860px){.rail{grid-template-columns:repeat(3,1fr)}}
.mcard{position:relative;min-height:360px;background-color:var(--nero2);padding:18px 22px;display:flex;flex-direction:column;justify-content:space-between;overflow:hidden}
.mcard.photo::before{content:'';position:absolute;inset:0;background:linear-gradient(180deg,rgba(13,13,13,.1) 0%,rgba(13,13,13,.25) 45%,rgba(13,13,13,.88) 100%);z-index:1}
.mcard .mtop,.mcard .enq{position:relative;z-index:2}
.mcard .tag{font-family:Inter;font-weight:600;font-size:10.5px;letter-spacing:.14em;text-transform:uppercase;color:var(--bianco);text-shadow:0 2px 10px rgba(0,0,0,.7)}
.mcard h4{font-size:26px;margin-top:6px;color:var(--bianco);text-shadow:0 2px 10px rgba(0,0,0,.7)}
.mcard .enq{font-family:Inter;font-weight:600;font-size:11.5px;letter-spacing:.08em;text-transform:uppercase;color:var(--bianco)}
.mcard .ph-tag{top:12px;bottom:auto;right:12px}
.mcard.ph .tag{color:var(--rosso);text-shadow:none}
.mcard.ph h4{color:var(--bianco);text-shadow:none}
.mcard.ph .enq{color:var(--rosso)}

/* other brands strip */
.obrands{display:flex;flex-wrap:wrap;gap:14px;margin-top:30px}
.obrands a{display:inline-flex;align-items:center;gap:10px;font-family:Inter;font-weight:600;font-size:12.5px;letter-spacing:.1em;text-transform:uppercase;color:var(--bianco);border:1px solid var(--line);padding:14px 22px;transition:border-color .2s,color .2s}
.obrands a:hover{border-color:var(--rosso);color:var(--rosso)}

/* full-bleed banner */
.banner{position:relative;min-height:340px;display:flex;align-items:flex-end;padding:36px 0}
.banner .in{position:relative;z-index:2}
.banner h2{font-size:clamp(38px,7vw,74px)}
.banner p{color:var(--mut);margin-top:10px;max-width:420px;font-size:15px}
.banner .btn{margin-top:22px}

/* footer */
footer{padding:64px 0 0}
.fgrid{display:grid;grid-template-columns:1fr;gap:36px;padding-bottom:50px;border-bottom:1px solid var(--line)}
@media(min-width:760px){.fgrid{grid-template-columns:1.3fr 1fr 1fr 1fr 1fr}}
.fcol h5{font-family:Inter;font-weight:600;font-size:11.5px;letter-spacing:.14em;text-transform:uppercase;color:var(--mut);margin-bottom:16px}
.fcol a{display:block;font-size:14.5px;color:var(--bianco);opacity:.85;margin-bottom:10px}
.fcol a:hover{opacity:1;color:var(--rosso)}
.fcol p{color:var(--mut);font-size:14px;max-width:280px}
.foot-base{display:flex;flex-wrap:wrap;justify-content:space-between;gap:14px;padding:26px 0 40px;font-size:12.5px;color:var(--mut)}
.foot-base a{color:var(--mut)}
.foot-base a:hover{color:var(--bianco)}

.wa-fab{position:fixed;right:18px;bottom:18px;z-index:90;width:56px;height:56px;border-radius:50%;background:var(--rosso);display:flex;align-items:center;justify-content:center;box-shadow:0 8px 24px rgba(0,0,0,.4)}
</style>
</head>
<body>

<header id="hdr">
  <div class="wrap bar">
    <a class="logo" href="index.html">
      <img src="assets/logo.svg" alt="Moto Italia">
    </a>
    <nav class="main">
      <a href="piaggio.html">Piaggio</a>
      <a href="vespa.html">Vespa</a>
      <a href="moto-guzzi.html">Moto Guzzi</a>
      <a href="aprilia.html">Aprilia</a>
      <a href="accessories.html">Accessories</a>
      <a href="about.html">About</a>
      <a href="index.html#contact">Contact</a>
    </nav>
    <button class="hamb" id="hambBtn" aria-label="Menu"><span></span><span></span><span></span></button>
  </div>
</header>

<div class="mmenu" id="mmenu">
  <a href="piaggio.html">Piaggio</a>
  <a href="vespa.html">Vespa</a>
  <a href="moto-guzzi.html">Moto Guzzi</a>
  <a href="aprilia.html">Aprilia</a>
  <a href="accessories.html">Accessories</a>
  <a href="about.html">About</a>
  <a href="index.html#contact">Contact</a>
</div>

<main>

  <section class="pintro photo" style="background-image:url('assets/ph/moto-guzzi.jpg')">
    <span class="ph-tag">Stock placeholder &mdash; Moto Guzzi brand photography pending from Piaggio Group</span>
    <div class="wrap">
      <div class="eyebrow on rv">Since 1921</div>
      <h1 class="rv">Moto Guzzi</h1>
      <p class="lede rv">Italian heritage engineered for the open road. Handbuilt character since 1921, sold and serviced in Larnaka.</p>
    </div>
  </section>

  <section>
    <div class="wrap split rv">
      <div class="ph photo" style="background-image:url('assets/ph/moto-guzzi.jpg')"><span class="ph-tag">Stock placeholder</span></div>
      <div>
        <div class="eyebrow">The Brand</div>
        <h2>Handbuilt character, since 1921.</h2>
        <p>Moto Guzzi is one of the oldest motorcycle manufacturers still building bikes today, known for its transverse V-twin engine and a riding character that's stayed distinct across a century. Draft copy, final brand story pending materials from Piaggio Group.</p>
        <p>Moto Italia carries the full Moto Guzzi range as an authorised Larnaka dealer, with manufacturer-trained service and genuine parts, no grey imports.</p>
      </div>
    </div>
  </section>

  <section>
    <div class="wrap sec-head rv">
      <div class="eyebrow">The Range</div>
      <h2>Featured Moto Guzzi models.</h2>
      <p>A draft selection from the current range. No online pricing in Phase 1, enquire in store for availability and pricing.</p>
    </div>
    <div class="wrap">
      <div class="rail">
        <div class="mcard photo rv" style="background-image:url('assets/ph/moto-guzzi-v7.jpg')">
          <span class="ph-tag">Stock placeholder</span>
          <div class="mtop"><div class="tag">Moto Guzzi</div><h4>V7</h4></div>
          <a class="enq" href="#contact">Enquire in store &rarr;</a>
        </div>
        <div class="mcard ph rv">
          <span class="ph-tag">Model photography pending</span>
          <div class="mtop"><div class="tag">Moto Guzzi</div><h4>V85 TT</h4></div>
          <a class="enq" href="#contact">Enquire in store &rarr;</a>
        </div>
        <div class="mcard ph rv">
          <span class="ph-tag">Model photography pending</span>
          <div class="mtop"><div class="tag">Moto Guzzi</div><h4>V100 Mandello</h4></div>
          <a class="enq" href="#contact">Enquire in store &rarr;</a>
        </div>
      </div>
    </div>
  </section>

  <section class="banner photo" style="background-image:url('assets/ph/store.jpg');background-position:30% 15%">
    <span class="ph-tag">Stock placeholder</span>
    <div class="wrap in rv">
      <div class="eyebrow on">Why Moto Guzzi</div>
      <h2>Character over speed.</h2>
      <p>Test ride a Moto Guzzi at the shop, or book a service for the one you already own.</p>
      <a class="btn fill" href="index.html#contact">Plan Your Visit</a>
    </div>
  </section>

  <section>
    <div class="wrap sec-head rv">
      <div class="eyebrow">Also At Moto Italia</div>
      <h2>The other three marques.</h2>
      <p>One Larnaka address, four Italian brands. Sales, service and genuine parts for all of them.</p>
    </div>
    <div class="wrap">
      <div class="obrands rv">
      <a href="piaggio.html">Piaggio &rarr;</a>
      <a href="vespa.html">Vespa &rarr;</a>
      <a href="aprilia.html">Aprilia &rarr;</a>
      </div>
    </div>
  </section>

  <section id="contact" class="banner photo" style="background-image:url('assets/ph/visit.jpg');background-position:center 68%">
    <span class="ph-tag">Stock placeholder &mdash; store photography pending</span>
    <div class="wrap in rv">
      <div class="eyebrow on">Visit Us</div>
      <h2>Find us in Larnaka.</h2>
      <p>Sales, service and genuine parts for Piaggio, Vespa, Moto Guzzi and Aprilia &mdash; right in the heart of town.</p>
      <div style="display:flex;flex-wrap:wrap;gap:14px;margin-top:24px">
        <a class="btn fill" href="tel:+35724667400" style="margin-top:0">Call Us</a>
        <a class="btn line" href="https://maps.app.goo.gl/K2wCmmJ4D2DadaAm9" target="_blank" rel="noopener" style="margin-top:0">Get Directions</a>
      </div>
    </div>
  </section>

</main>

<footer>
  <div class="wrap">
    <div class="fgrid">
      <div class="fcol">
        <a class="logo" href="index.html" style="margin-bottom:16px">
          <img src="assets/logo.svg" alt="Moto Italia">
        </a>
        <p>Authorised Larnaka dealer for Piaggio, Vespa, Moto Guzzi and Aprilia.</p>
      </div>
      <div class="fcol">
        <h5>Brands</h5>
        <a href="piaggio.html">Piaggio</a>
        <a href="vespa.html">Vespa</a>
        <a href="moto-guzzi.html">Moto Guzzi</a>
        <a href="aprilia.html">Aprilia</a>
      </div>
      <div class="fcol">
        <h5>Shop</h5>
        <a href="accessories.html">Accessories</a>
        <a href="about.html">About / Store</a>
        <a href="index.html#contact">Contact</a>
      </div>
      <div class="fcol">
        <h5>Visit</h5>
        <a href="https://www.google.com/maps/search/?api=1&query=2+Pentadaktylou+Street+Larnaca+6030" target="_blank" rel="noopener">2 Pentadaktylou Street, Larnaca 6030</a>
        <a href="tel:+35724667400">Tel. 24 667 400</a>
      </div>
      <div class="fcol">
        <h5>Working Hours</h5>
        <p style="line-height:1.8;color:var(--bianco)">
          Monday &ndash; Friday<br>08:45 &ndash; 13:00 &amp;<br>15:00 &ndash; 18:00
        </p>
        <p style="margin-top:14px;line-height:1.8;color:var(--bianco)">
          Wednesday &amp; Saturday<br>08:45 &ndash; 13:00
        </p>
      </div>
    </div>
    <div class="foot-base">
      <span>&copy; 2026 Moto Italia. All rights reserved.</span>
      <span><a href="#">Privacy Policy</a> &middot; Website by Wecomeone Marketing And Comms</span>
    </div>
  </div>
</footer>

<a class="wa-fab" href="index.html#contact" aria-label="WhatsApp">
  <svg width="26" height="26" viewBox="0 0 24 24" fill="none"><path d="M17 14.5c-.3-.15-1.77-.87-2.04-.97-.27-.1-.47-.15-.67.15-.2.3-.77.97-.94 1.17-.17.2-.35.22-.65.07-.3-.15-1.26-.46-2.4-1.47-.89-.79-1.48-1.77-1.66-2.07-.17-.3-.02-.46.13-.6.13-.13.3-.35.45-.52.15-.17.2-.3.3-.5.1-.2.05-.37-.02-.52-.07-.15-.67-1.6-.92-2.2-.24-.58-.49-.5-.67-.5-.17-.01-.37-.01-.57-.01s-.52.07-.8.37c-.27.3-1.04 1.02-1.04 2.48s1.07 2.88 1.22 3.08c.15.2 2.1 3.2 5.08 4.49.71.3 1.26.49 1.7.62.71.23 1.36.2 1.87.12.57-.08 1.77-.72 2.02-1.42.25-.7.25-1.3.17-1.42-.07-.13-.27-.2-.57-.35z" fill="#F5F3EF"/><path d="M12 2C6.48 2 2 6.35 2 11.7c0 1.9.55 3.67 1.5 5.18L2 22l5.3-1.4a10.2 10.2 0 0 0 4.7 1.15c5.52 0 10-4.35 10-9.7C22 6.35 17.52 2 12 2z" stroke="#F5F3EF" stroke-width="1.3" fill="none"/></svg>
</a>

<script>
(function(){
  var hdr=document.getElementById('hdr');
  window.addEventListener('scroll',function(){
    hdr.classList.toggle('solid',window.scrollY>40);
  });
  var hb=document.getElementById('hambBtn'), mm=document.getElementById('mmenu');
  hb.addEventListener('click',function(){mm.classList.toggle('open');});
  mm.querySelectorAll('a').forEach(function(a){a.addEventListener('click',function(){mm.classList.remove('open');});});

  var io=new IntersectionObserver(function(entries){
    entries.forEach(function(e){ if(e.isIntersecting){ e.target.classList.add('in'); } });
  },{threshold:.15});
  document.querySelectorAll('.rv').forEach(function(el){io.observe(el);});

  // #contact is the last anchorable section before the footer, so on tall
  // viewports there isn't enough page left below it for the browser to
  // scroll it flush under the fixed header. Give the footer just enough
  // extra bottom space, computed per viewport height, to close that gap.
  var contactEl=document.getElementById('contact');
  var footerEl=document.querySelector('footer');
  if(contactEl&&footerEl){
    var fixT;
    function fixContactScrollSpace(){
      footerEl.style.paddingBottom='';
      var marginTop=parseFloat(getComputedStyle(contactEl).scrollMarginTop)||0;
      var contactAbsTop=contactEl.getBoundingClientRect().top+window.scrollY;
      var spaceBelow=document.documentElement.scrollHeight-contactAbsTop;
      var needed=window.innerHeight-marginTop;
      var extra=Math.max(0,needed-spaceBelow);
      if(extra>0){ footerEl.style.paddingBottom=extra+'px'; }
    }
    fixContactScrollSpace();
    window.addEventListener('resize',function(){
      clearTimeout(fixT);
      fixT=setTimeout(fixContactScrollSpace,200);
    });
  }
})();
</script>

</body>
</html>

'@

Set-Content -Path "aprilia.html" -Encoding utf8 -Value @'
<!doctype html>
<!--
  MOTO ITALIA &mdash; Aprilia brand page, Phase 1
  Prepared by Wecomeone Marketing And Comms, September 2026

  Shares the header, footer, CSS and scroll/menu behaviour with the rest
  of the site (moto-italia-homepage-concept.html, about.html,
  accessories.html) so every page reads as one site. Keep the shared
  chrome in sync across files when any of them changes.

  Brand story copy and model line-up are draft placeholders pending real
  brand materials and photography from Piaggio Group / the client, tagged
  inline so swapping them in later is a drop-in, same pattern as the rest
  of the Phase 1 site.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Aprilia &mdash; Moto Italia</title>
<meta name="description" content="Aprilia motorcycles at Moto Italia in Larnaka &mdash; sales, service and genuine parts. Enquire in store.">
<link rel="icon" type="image/svg+xml" href="assets/favicon.svg">
<link rel="icon" type="image/png" sizes="32x32" href="assets/favicon-32.png">
<link rel="apple-touch-icon" href="assets/favicon-180.png">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
<style>
:root{
  --rosso:#DF0123;
  --nero:#0D0D0D;
  --nero2:#161616;
  --bianco:#F5F3EF;
  --verde:#069147;
  --line:rgba(245,243,239,.14);
  --mut:rgba(245,243,239,.58);
}
*{box-sizing:border-box}
html{scroll-behavior:smooth}
[id]{scroll-margin-top:96px}
body{margin:0;background:var(--nero);color:var(--bianco);font-family:Inter,system-ui,sans-serif;font-weight:400;line-height:1.6;-webkit-font-smoothing:antialiased}
h1,h2,h3,h4{font-family:"Bebas Neue",Inter,sans-serif;font-weight:400;text-transform:uppercase;letter-spacing:.01em;line-height:.94;margin:0}
p{margin:0}
a{color:inherit;text-decoration:none}
img,svg{display:block;max-width:100%}
.wrap{max-width:1240px;margin:0 auto;padding:0 20px}
@media(min-width:760px){.wrap{padding:0 40px}}

.eyebrow{font-family:Inter;font-weight:600;text-transform:uppercase;letter-spacing:.22em;font-size:11.5px;color:var(--mut)}
.eyebrow.on{color:var(--rosso)}
.btn{display:inline-flex;align-items:center;gap:10px;font-family:Inter;font-weight:600;font-size:13.5px;text-transform:uppercase;letter-spacing:.1em;padding:15px 26px;border-radius:2px;transition:opacity .2s}
.btn.fill{background:var(--rosso);color:var(--bianco)}
.btn.line{border:1px solid rgba(245,243,239,.4);color:var(--bianco)}
.btn:hover{opacity:.82}

/* placeholder tag, reused on any block standing in for real photography/video */
.ph{position:relative;overflow:hidden;background-image:
    radial-gradient(120% 140% at 15% 0%, #1c1c1c 0%, #0d0d0d 55%),
    repeating-linear-gradient(120deg, rgba(255,255,255,.02) 0 2px, transparent 2px 44px)}
.ph-tag{position:absolute;right:12px;bottom:12px;font-family:Inter;font-weight:600;font-size:9.5px;letter-spacing:.14em;text-transform:uppercase;color:rgba(245,243,239,.55);background:rgba(0,0,0,.4);border:1px solid rgba(245,243,239,.18);padding:6px 10px;z-index:2}
.photo{background-size:cover;background-position:center}
.hero.photo::before,.banner.photo::before{content:'';position:absolute;inset:0;background:linear-gradient(180deg,rgba(13,13,13,.25) 0%,rgba(13,13,13,.45) 55%,rgba(13,13,13,.93) 100%);z-index:1}
.hero .wrap{position:relative;z-index:2}
.banner .in{position:relative;z-index:2}

/* reveal-on-scroll */
.rv{opacity:0;transform:translateY(28px);transition:opacity .8s ease,transform .8s ease}
.rv.in{opacity:1;transform:none}

/* header */
header{position:fixed;top:0;left:0;right:0;z-index:100;background:transparent;border-bottom:1px solid transparent;transition:background .3s,border-color .3s}
header.solid{background:rgba(13,13,13,.92);backdrop-filter:blur(6px);border-color:var(--line)}
header .bar{display:flex;align-items:center;gap:20px;height:70px}
.logo{display:flex;align-items:center}
.logo img{height:28px;width:auto;display:block}
nav.main{display:none;margin-left:auto;align-items:center;gap:28px}
nav.main a{font-family:"Bebas Neue";font-size:15px;letter-spacing:.06em;color:var(--mut)}
nav.main a:hover{color:var(--bianco)}
nav.main a[href$="#contact"]{color:var(--rosso)}
nav.main a[href$="#contact"]:hover{color:var(--rosso)}
.mmenu a[href$="#contact"]{color:var(--rosso)}
.hamb{margin-left:auto;width:38px;height:38px;border:1px solid var(--line);display:flex;flex-direction:column;justify-content:center;align-items:center;gap:5px;background:none;cursor:pointer}
.hamb span{width:18px;height:1.5px;background:var(--bianco)}
@media(min-width:960px){nav.main{display:flex}.hamb{display:none}}

/* mobile menu */
.mmenu{position:fixed;inset:0;background:var(--nero);z-index:99;display:flex;flex-direction:column;justify-content:center;gap:26px;padding:0 32px;transform:translateY(-100%);transition:transform .35s ease}
.mmenu.open{transform:translateY(0)}
.mmenu a{font-family:"Bebas Neue";font-size:34px}
@media(min-width:960px){.mmenu{display:none}}

@media(min-width:760px){.wrap{padding-left:40px}}

section{padding:80px 0}
@media(min-width:760px){section{padding:120px 0}}
.sec-head{max-width:640px}
.sec-head h2{font-size:clamp(34px,6vw,58px);margin-top:10px}
.sec-head p{color:var(--mut);margin-top:14px;font-size:15.5px}

/* page intro banner */
.pintro{position:relative;min-height:56svh;display:flex;align-items:flex-end;padding:150px 0 64px}
.pintro h1{font-size:clamp(42px,9vw,90px);margin-top:14px}
.pintro .lede{max-width:520px;color:var(--mut);font-size:16.5px;margin-top:18px}

/* split (photo + copy) */
.split{display:grid;grid-template-columns:1fr;gap:36px;align-items:center}
@media(min-width:860px){.split{grid-template-columns:1.1fr 1fr;gap:64px}}
.split .ph{height:320px}
@media(min-width:860px){.split .ph{height:460px}}
.split h2{font-size:clamp(32px,5vw,46px)}
.split p{color:var(--mut);font-size:15.5px;margin-top:16px;max-width:460px}
.split p+p{margin-top:14px}
.split.rev{grid-template-columns:1fr}
@media(min-width:860px){.split.rev{grid-template-columns:1fr 1.1fr}}

/* model grid — same card system as the homepage's Featured Models rail,
   fixed at 3 columns here since each brand page shows 3 models */
.rail{display:grid;grid-template-columns:1fr;gap:16px;margin-top:44px}
@media(min-width:600px){.rail{grid-template-columns:repeat(2,1fr)}}
@media(min-width:860px){.rail{grid-template-columns:repeat(3,1fr)}}
.mcard{position:relative;min-height:360px;background-color:var(--nero2);padding:18px 22px;display:flex;flex-direction:column;justify-content:space-between;overflow:hidden}
.mcard.photo::before{content:'';position:absolute;inset:0;background:linear-gradient(180deg,rgba(13,13,13,.1) 0%,rgba(13,13,13,.25) 45%,rgba(13,13,13,.88) 100%);z-index:1}
.mcard .mtop,.mcard .enq{position:relative;z-index:2}
.mcard .tag{font-family:Inter;font-weight:600;font-size:10.5px;letter-spacing:.14em;text-transform:uppercase;color:var(--bianco);text-shadow:0 2px 10px rgba(0,0,0,.7)}
.mcard h4{font-size:26px;margin-top:6px;color:var(--bianco);text-shadow:0 2px 10px rgba(0,0,0,.7)}
.mcard .enq{font-family:Inter;font-weight:600;font-size:11.5px;letter-spacing:.08em;text-transform:uppercase;color:var(--bianco)}
.mcard .ph-tag{top:12px;bottom:auto;right:12px}
.mcard.ph .tag{color:var(--rosso);text-shadow:none}
.mcard.ph h4{color:var(--bianco);text-shadow:none}
.mcard.ph .enq{color:var(--rosso)}

/* other brands strip */
.obrands{display:flex;flex-wrap:wrap;gap:14px;margin-top:30px}
.obrands a{display:inline-flex;align-items:center;gap:10px;font-family:Inter;font-weight:600;font-size:12.5px;letter-spacing:.1em;text-transform:uppercase;color:var(--bianco);border:1px solid var(--line);padding:14px 22px;transition:border-color .2s,color .2s}
.obrands a:hover{border-color:var(--rosso);color:var(--rosso)}

/* full-bleed banner */
.banner{position:relative;min-height:340px;display:flex;align-items:flex-end;padding:36px 0}
.banner .in{position:relative;z-index:2}
.banner h2{font-size:clamp(38px,7vw,74px)}
.banner p{color:var(--mut);margin-top:10px;max-width:420px;font-size:15px}
.banner .btn{margin-top:22px}

/* footer */
footer{padding:64px 0 0}
.fgrid{display:grid;grid-template-columns:1fr;gap:36px;padding-bottom:50px;border-bottom:1px solid var(--line)}
@media(min-width:760px){.fgrid{grid-template-columns:1.3fr 1fr 1fr 1fr 1fr}}
.fcol h5{font-family:Inter;font-weight:600;font-size:11.5px;letter-spacing:.14em;text-transform:uppercase;color:var(--mut);margin-bottom:16px}
.fcol a{display:block;font-size:14.5px;color:var(--bianco);opacity:.85;margin-bottom:10px}
.fcol a:hover{opacity:1;color:var(--rosso)}
.fcol p{color:var(--mut);font-size:14px;max-width:280px}
.foot-base{display:flex;flex-wrap:wrap;justify-content:space-between;gap:14px;padding:26px 0 40px;font-size:12.5px;color:var(--mut)}
.foot-base a{color:var(--mut)}
.foot-base a:hover{color:var(--bianco)}

.wa-fab{position:fixed;right:18px;bottom:18px;z-index:90;width:56px;height:56px;border-radius:50%;background:var(--rosso);display:flex;align-items:center;justify-content:center;box-shadow:0 8px 24px rgba(0,0,0,.4)}
</style>
</head>
<body>

<header id="hdr">
  <div class="wrap bar">
    <a class="logo" href="index.html">
      <img src="assets/logo.svg" alt="Moto Italia">
    </a>
    <nav class="main">
      <a href="piaggio.html">Piaggio</a>
      <a href="vespa.html">Vespa</a>
      <a href="moto-guzzi.html">Moto Guzzi</a>
      <a href="aprilia.html">Aprilia</a>
      <a href="accessories.html">Accessories</a>
      <a href="about.html">About</a>
      <a href="index.html#contact">Contact</a>
    </nav>
    <button class="hamb" id="hambBtn" aria-label="Menu"><span></span><span></span><span></span></button>
  </div>
</header>

<div class="mmenu" id="mmenu">
  <a href="piaggio.html">Piaggio</a>
  <a href="vespa.html">Vespa</a>
  <a href="moto-guzzi.html">Moto Guzzi</a>
  <a href="aprilia.html">Aprilia</a>
  <a href="accessories.html">Accessories</a>
  <a href="about.html">About</a>
  <a href="index.html#contact">Contact</a>
</div>

<main>

  <section class="pintro photo" style="background-image:url('assets/ph/aprilia.jpg')">
    <span class="ph-tag">Stock placeholder &mdash; Aprilia brand photography pending from Piaggio Group</span>
    <div class="wrap">
      <div class="eyebrow on rv">Since 1945</div>
      <h1 class="rv">Aprilia</h1>
      <p class="lede rv">Race-bred performance for the street. Aprilia's racing DNA, road legal, sold and serviced in Larnaka.</p>
    </div>
  </section>

  <section>
    <div class="wrap split rv">
      <div class="ph photo" style="background-image:url('assets/ph/aprilia.jpg')"><span class="ph-tag">Stock placeholder</span></div>
      <div>
        <div class="eyebrow">The Brand</div>
        <h2>Racing DNA, road legal.</h2>
        <p>Aprilia built its name on the racetrack, and that engineering carries straight through to its road bikes, sharp handling, strong performance, unmistakably Italian. Draft copy, final brand story pending materials from Piaggio Group.</p>
        <p>Moto Italia carries the full Aprilia range as an authorised Larnaka dealer, with manufacturer-trained service and genuine parts, no grey imports.</p>
      </div>
    </div>
  </section>

  <section>
    <div class="wrap sec-head rv">
      <div class="eyebrow">The Range</div>
      <h2>Featured Aprilia models.</h2>
      <p>A draft selection from the current range. No online pricing in Phase 1, enquire in store for availability and pricing.</p>
    </div>
    <div class="wrap">
      <div class="rail">
        <div class="mcard photo rv" style="background-image:url('assets/ph/aprilia-rs660.jpg')">
          <span class="ph-tag">Stock placeholder</span>
          <div class="mtop"><div class="tag">Aprilia</div><h4>RS 660</h4></div>
          <a class="enq" href="#contact">Enquire in store &rarr;</a>
        </div>
        <div class="mcard ph rv">
          <span class="ph-tag">Model photography pending</span>
          <div class="mtop"><div class="tag">Aprilia</div><h4>Tuono 660</h4></div>
          <a class="enq" href="#contact">Enquire in store &rarr;</a>
        </div>
        <div class="mcard ph rv">
          <span class="ph-tag">Model photography pending</span>
          <div class="mtop"><div class="tag">Aprilia</div><h4>SR GT</h4></div>
          <a class="enq" href="#contact">Enquire in store &rarr;</a>
        </div>
      </div>
    </div>
  </section>

  <section class="banner photo" style="background-image:url('assets/ph/store.jpg');background-position:30% 15%">
    <span class="ph-tag">Stock placeholder</span>
    <div class="wrap in rv">
      <div class="eyebrow on">Why Aprilia</div>
      <h2>Built from racing.</h2>
      <p>Test ride an Aprilia at the shop, or book a service for the one you already own.</p>
      <a class="btn fill" href="index.html#contact">Plan Your Visit</a>
    </div>
  </section>

  <section>
    <div class="wrap sec-head rv">
      <div class="eyebrow">Also At Moto Italia</div>
      <h2>The other three marques.</h2>
      <p>One Larnaka address, four Italian brands. Sales, service and genuine parts for all of them.</p>
    </div>
    <div class="wrap">
      <div class="obrands rv">
      <a href="piaggio.html">Piaggio &rarr;</a>
      <a href="vespa.html">Vespa &rarr;</a>
      <a href="moto-guzzi.html">Moto Guzzi &rarr;</a>
      </div>
    </div>
  </section>

  <section id="contact" class="banner photo" style="background-image:url('assets/ph/visit.jpg');background-position:center 68%">
    <span class="ph-tag">Stock placeholder &mdash; store photography pending</span>
    <div class="wrap in rv">
      <div class="eyebrow on">Visit Us</div>
      <h2>Find us in Larnaka.</h2>
      <p>Sales, service and genuine parts for Piaggio, Vespa, Moto Guzzi and Aprilia &mdash; right in the heart of town.</p>
      <div style="display:flex;flex-wrap:wrap;gap:14px;margin-top:24px">
        <a class="btn fill" href="tel:+35724667400" style="margin-top:0">Call Us</a>
        <a class="btn line" href="https://maps.app.goo.gl/K2wCmmJ4D2DadaAm9" target="_blank" rel="noopener" style="margin-top:0">Get Directions</a>
      </div>
    </div>
  </section>

</main>

<footer>
  <div class="wrap">
    <div class="fgrid">
      <div class="fcol">
        <a class="logo" href="index.html" style="margin-bottom:16px">
          <img src="assets/logo.svg" alt="Moto Italia">
        </a>
        <p>Authorised Larnaka dealer for Piaggio, Vespa, Moto Guzzi and Aprilia.</p>
      </div>
      <div class="fcol">
        <h5>Brands</h5>
        <a href="piaggio.html">Piaggio</a>
        <a href="vespa.html">Vespa</a>
        <a href="moto-guzzi.html">Moto Guzzi</a>
        <a href="aprilia.html">Aprilia</a>
      </div>
      <div class="fcol">
        <h5>Shop</h5>
        <a href="accessories.html">Accessories</a>
        <a href="about.html">About / Store</a>
        <a href="index.html#contact">Contact</a>
      </div>
      <div class="fcol">
        <h5>Visit</h5>
        <a href="https://www.google.com/maps/search/?api=1&query=2+Pentadaktylou+Street+Larnaca+6030" target="_blank" rel="noopener">2 Pentadaktylou Street, Larnaca 6030</a>
        <a href="tel:+35724667400">Tel. 24 667 400</a>
      </div>
      <div class="fcol">
        <h5>Working Hours</h5>
        <p style="line-height:1.8;color:var(--bianco)">
          Monday &ndash; Friday<br>08:45 &ndash; 13:00 &amp;<br>15:00 &ndash; 18:00
        </p>
        <p style="margin-top:14px;line-height:1.8;color:var(--bianco)">
          Wednesday &amp; Saturday<br>08:45 &ndash; 13:00
        </p>
      </div>
    </div>
    <div class="foot-base">
      <span>&copy; 2026 Moto Italia. All rights reserved.</span>
      <span><a href="#">Privacy Policy</a> &middot; Website by Wecomeone Marketing And Comms</span>
    </div>
  </div>
</footer>

<a class="wa-fab" href="index.html#contact" aria-label="WhatsApp">
  <svg width="26" height="26" viewBox="0 0 24 24" fill="none"><path d="M17 14.5c-.3-.15-1.77-.87-2.04-.97-.27-.1-.47-.15-.67.15-.2.3-.77.97-.94 1.17-.17.2-.35.22-.65.07-.3-.15-1.26-.46-2.4-1.47-.89-.79-1.48-1.77-1.66-2.07-.17-.3-.02-.46.13-.6.13-.13.3-.35.45-.52.15-.17.2-.3.3-.5.1-.2.05-.37-.02-.52-.07-.15-.67-1.6-.92-2.2-.24-.58-.49-.5-.67-.5-.17-.01-.37-.01-.57-.01s-.52.07-.8.37c-.27.3-1.04 1.02-1.04 2.48s1.07 2.88 1.22 3.08c.15.2 2.1 3.2 5.08 4.49.71.3 1.26.49 1.7.62.71.23 1.36.2 1.87.12.57-.08 1.77-.72 2.02-1.42.25-.7.25-1.3.17-1.42-.07-.13-.27-.2-.57-.35z" fill="#F5F3EF"/><path d="M12 2C6.48 2 2 6.35 2 11.7c0 1.9.55 3.67 1.5 5.18L2 22l5.3-1.4a10.2 10.2 0 0 0 4.7 1.15c5.52 0 10-4.35 10-9.7C22 6.35 17.52 2 12 2z" stroke="#F5F3EF" stroke-width="1.3" fill="none"/></svg>
</a>

<script>
(function(){
  var hdr=document.getElementById('hdr');
  window.addEventListener('scroll',function(){
    hdr.classList.toggle('solid',window.scrollY>40);
  });
  var hb=document.getElementById('hambBtn'), mm=document.getElementById('mmenu');
  hb.addEventListener('click',function(){mm.classList.toggle('open');});
  mm.querySelectorAll('a').forEach(function(a){a.addEventListener('click',function(){mm.classList.remove('open');});});

  var io=new IntersectionObserver(function(entries){
    entries.forEach(function(e){ if(e.isIntersecting){ e.target.classList.add('in'); } });
  },{threshold:.15});
  document.querySelectorAll('.rv').forEach(function(el){io.observe(el);});

  // #contact is the last anchorable section before the footer, so on tall
  // viewports there isn't enough page left below it for the browser to
  // scroll it flush under the fixed header. Give the footer just enough
  // extra bottom space, computed per viewport height, to close that gap.
  var contactEl=document.getElementById('contact');
  var footerEl=document.querySelector('footer');
  if(contactEl&&footerEl){
    var fixT;
    function fixContactScrollSpace(){
      footerEl.style.paddingBottom='';
      var marginTop=parseFloat(getComputedStyle(contactEl).scrollMarginTop)||0;
      var contactAbsTop=contactEl.getBoundingClientRect().top+window.scrollY;
      var spaceBelow=document.documentElement.scrollHeight-contactAbsTop;
      var needed=window.innerHeight-marginTop;
      var extra=Math.max(0,needed-spaceBelow);
      if(extra>0){ footerEl.style.paddingBottom=extra+'px'; }
    }
    fixContactScrollSpace();
    window.addEventListener('resize',function(){
      clearTimeout(fixT);
      fixT=setTimeout(fixContactScrollSpace,200);
    });
  }
})();
</script>

</body>
</html>

'@

git add .

git commit -m "Add Piaggio, Vespa, Moto Guzzi, Aprilia brand pages; wire up site nav"

git push
