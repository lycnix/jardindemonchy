# Jardin de Monchy — Cloudflare Pages Deploy Workflow

## Probleem
Site moet live op jardindemonchy.nl via Cloudflare Pages.

## Status
- [x] Nameservers bij Antagonist → Cloudflare (jean/rudy.ns.cloudflare.com)
- [x] Cloudflare Pages project aangemaakt: `jardin-landscaping`
- [x] Deploy gelukt: https://213205d9.jardin-landscaping.pages.dev/
- [ ] **BLOCKER: jardindemonchy.nl moet als zone in Cloudflare staan**
- [ ] Custom domain koppelen aan Pages project
- [ ] www redirect instellen
- [ ] SSL actief, site live

## Stappen Nu
1. Voeg jardindemonchy.nl als zone toe in Cloudflare (API)
2. Wacht op nameserver activatie (al gedaan bij Antagonist, dus snel)
3. Koppel jardindemonchy.nl als custom domain aan Pages
4. CNAME voor www → jardindemonchy.nl
5. Verifieer live site

## Werkwijze
- Gebruik Cloudflare API, niet browser
- Geen onnodige stappen
- Test na elke stap
