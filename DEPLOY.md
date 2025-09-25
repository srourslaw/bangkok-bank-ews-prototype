# 🚀 One-Command Deployment to GitHub

## Super Simple Method (Recommended)

**Just run this ONE command in Terminal:**

```bash
cd /Users/husseinsrour/Downloads/bangkok-bank-ews-prototype && chmod +x deploy-to-github.sh && ./deploy-to-github.sh
```

That's it! The script will:
- ✅ Clone your repository
- ✅ Copy all files (index.html, README.md, etc.)
- ✅ Commit with professional message
- ✅ Push to GitHub automatically
- ✅ Give you the live demo URL
- ✅ Clean up temporary files

---

## Alternative: Manual Step-by-Step

If the script doesn't work, here are the manual commands:

```bash
# Navigate to your repository folder
cd /path/to/your/local/bangkok-bank-ews-prototype

# Copy files from Downloads
cp /Users/husseinsrour/Downloads/bangkok-bank-ews-prototype/index.html ./
cp /Users/husseinsrour/Downloads/bangkok-bank-ews-prototype/README.md ./

# Add and commit
git add .
git commit -m "Deploy Bangkok Bank AI EWS Demo Platform"

# Push to GitHub
git push origin main
```

---

## After Deployment

1. **Enable GitHub Pages:**
   - Go to: https://github.com/srourslaw/bangkok-bank-ews-prototype/settings/pages
   - Select "Deploy from a branch" → "main" → "/ (root)"
   - Click "Save"

2. **Share with team:**
   - **Live Demo:** https://srourslaw.github.io/bangkok-bank-ews-prototype
   - **Password:** BangkokAI2025

---

## Future Updates

When you want to update the demo, just run the same command again:

```bash
cd /Users/husseinsrour/Downloads/bangkok-bank-ews-prototype && ./deploy-to-github.sh
```

No need to remember complex git commands! 🎉