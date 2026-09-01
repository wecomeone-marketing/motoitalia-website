# Moto Italia Website

Phase 1 informational website for Moto Italia, a Piaggio Group dealer in Larnaka, Cyprus, covering Piaggio, Vespa, Moto Guzzi and Aprilia. Cinematic, mobile-first, styled on aprilia.com. Built entirely on the locked Moto Italia brand system (Bebas Neue, Inter, Rosso/Nero/Bianco/Verde), see decks.wecomeone.me/moto-italia-branding-2/ for the full guidelines.

## Status

Review build. Homepage design concept only, not the full site yet. `robots.txt` blocks crawlers until launch, same as the mhouse-website review pattern.

## Structure

- `index.html` — homepage design concept, self-contained (CSS and JS inline, no build step yet)
- `CNAME` — GitHub Pages custom domain, motoitalia.wecomeone.me
- `.nojekyll` — stops GitHub Pages running Jekyll over the raw HTML
- `robots.txt` — blocks crawlers pre-launch

The sitemap and wireframes document and the earlier brand identity concepts deck are intentionally kept out of this repo. They live in the local project folder only, since this repo is meant to hold the site itself.

## Build process

Single static file for now. Once full development starts on the remaining seven pages (Piaggio, Vespa, Moto Guzzi, Aprilia, Accessories, About/Store, Contact), this should move to the same `_src/partials` plus `build.cjs` pattern used in wecomeone-marketing/mhouse-website, so shared nav, footer and styles only need editing once.

## Deployment

**Review (now):** GitHub Pages serves this repo directly. Custom domain motoitalia.wecomeone.me, DNS through Cloudflare, same pattern as mhouse.wecomeone.me and decks.wecomeone.me.

**Production (Phase 1 launch):** per the signed website brief, a VPS on Scala Hosting, OpenLiteSpeed, MariaDB 10.11, Redis-capable. Domain and DNS for the live site are still open questions, see the website plan document in the project folder.

## Publishing workflow

Edit `index.html`, commit, push. GitHub Pages rebuilds within a minute.
