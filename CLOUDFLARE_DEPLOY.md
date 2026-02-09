# Deploy Jardin to Cloudflare Pages

## Option 1: Via wrangler CLI (Easiest)
```bash
# 1. Login to Cloudflare (on your Mac):
wrangler login

# 2. Deploy:
wrangler pages deploy . --project-name=jardindemonchy
```

## Option 2: Via GitHub (Best for auto-deploy)
1. Push this repo to GitHub
2. Go to Cloudflare Dashboard → Pages → Create project
3. Connect GitHub repo
4. Build settings:
   - Build command: `echo "Static site"`
   - Build output directory: `.`
5. Done — auto-deploys on push

## Option 3: Direct upload
```bash
# Install wrangler if needed:
npm install -g wrangler

# Deploy:
wrangler pages deploy . --project-name=jardindemonchy
```

After deployment:
- Go to Cloudflare Dashboard → Pages → jardindemonchy
- Add custom domain: jardindemonchy.nl
- Change DNS records in zone to point to Cloudflare tunnel
