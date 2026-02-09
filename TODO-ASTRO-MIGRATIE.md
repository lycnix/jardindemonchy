# TODO: Astro + Keystatic Migratie

**Status:** Geparkeerd (2026-02-02)
**Reden:** Eerst frontend afronden met Marlous

---

## Plan van aanpak

### Waarom Astro + Keystatic?
- Marlous kan zelf content aanpassen via admin panel (`/keystatic`)
- Geen maandelijkse kosten (gratis hosting op Vercel/Netlify)
- SEO-vriendelijk (statische HTML output)
- Technische schuld opgelost (geen copy-paste header/footer)

### Meertaligheid (NL/EN)
- Astro's native i18n gebruiken
- Aparte URLs: `/nl/` en `/en/`
- Taalknop in header (vlaggetje of "NL | EN")
- SEO-vriendelijk met hreflang tags

### Structuur
```
/nl/                → Nederlandse homepage
/nl/tuinontwerp     → Tuinontwerp pagina
/en/                → English homepage  
/en/garden-design   → Garden design page
```

### Stappen
1. Astro project opzetten met i18n config
2. Componenten maken (Header, Footer, Hero, etc.)
3. NL pagina's migreren vanuit huidige HTML
4. EN pagina's vertalen (informele toon behouden)
5. Keystatic toevoegen voor content beheer
6. Deploy naar jardinastro.westveen.com
7. Na goedkeuring: live zetten op jardindemonchy.nl

### Geschatte tijd
3-4 uur voor basis migratie + i18n

---

## Backup referentie
Huidige versie: `jardin-backup-4` (2026-02-02)
