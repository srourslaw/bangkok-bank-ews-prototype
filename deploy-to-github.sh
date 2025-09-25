#!/bin/bash

# Bangkok Bank EWS Demo - Automated GitHub Deployment Script
# This script automates the entire process of uploading to GitHub
# Run this once and it handles everything automatically

echo "🚀 Bangkok Bank EWS Demo - GitHub Deployment"
echo "============================================="
echo ""

# Set variables
REPO_URL="https://github.com/srourslaw/bangkok-bank-ews-prototype.git"
REPO_NAME="bangkok-bank-ews-prototype"
SOURCE_DIR="/Users/husseinsrour/Downloads/bangkok-bank-ews-prototype"
TEMP_DIR="/Users/husseinsrour/Downloads/temp-github-deploy"

echo "📁 Setting up deployment environment..."

# Create temporary directory for clean deployment
rm -rf $TEMP_DIR
mkdir -p $TEMP_DIR
cd $TEMP_DIR

echo "📥 Cloning repository..."
git clone $REPO_URL
cd $REPO_NAME

echo "📋 Copying files from source..."
# Copy main dashboard file
cp "$SOURCE_DIR/index.html" ./index.html

# Copy README
cp "$SOURCE_DIR/README.md" ./README.md

# Copy supporting documents if they exist
if [ -f "$SOURCE_DIR/demo-script.md" ]; then
    cp "$SOURCE_DIR/demo-script.md" ./demo-script.md
    echo "✅ Copied demo-script.md"
fi

if [ -f "$SOURCE_DIR/business-case.md" ]; then
    cp "$SOURCE_DIR/business-case.md" ./business-case.md
    echo "✅ Copied business-case.md"
fi

echo "✅ Files copied successfully"
echo ""

echo "📝 Staging files for commit..."
git add .

echo "💾 Committing changes..."
git commit -m "Deploy Bangkok Bank AI EWS Demo Platform

🎯 Complete AI Banking Intelligence Dashboard
- 5 integrated AI use cases for credit risk management
- Password protected demo (BangkokAI2025)
- Interactive demo controls and real-time monitoring
- Professional Thakral One branding
- Bangkok Bank specific implementation
- Comprehensive documentation and usage instructions

🚀 Features:
- Early Warning System & Proactive Collections
- SME Intelligence & Alternative Data Integration
- Consumer Decision Engine & Cross-Sell Optimization
- Unified Fraud-Risk Intelligence
- Enterprise AI Governance & Regulatory Excellence

🔒 Access: Password protected for secure team collaboration
📊 Live Demo: https://srourslaw.github.io/bangkok-bank-ews-prototype
👥 Team: Worldwide Thakral One team access

🤖 Generated with Claude Code
Co-Authored-By: Claude <noreply@anthropic.com>"

echo "⬆️ Pushing to GitHub..."
git push origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "🎉 SUCCESS! Deployment completed successfully!"
    echo "============================================="
    echo ""
    echo "📍 Your repository: https://github.com/srourslaw/bangkok-bank-ews-prototype"
    echo "🌐 Live demo will be available at: https://srourslaw.github.io/bangkok-bank-ews-prototype"
    echo "🔑 Access password: BangkokAI2025"
    echo ""
    echo "⚙️ To enable GitHub Pages (if not already enabled):"
    echo "   1. Go to repository Settings → Pages"
    echo "   2. Select 'Deploy from a branch' → 'main' → '/ (root)'"
    echo "   3. Click Save"
    echo ""
    echo "✨ Your team can now access the demo worldwide!"
else
    echo ""
    echo "❌ Push failed. Please check your GitHub credentials."
    echo "💡 You may need to authenticate with GitHub first."
fi

# Clean up
echo "🧹 Cleaning up temporary files..."
cd /Users/husseinsrour/Downloads
rm -rf $TEMP_DIR

echo ""
echo "✅ Deployment script completed!"