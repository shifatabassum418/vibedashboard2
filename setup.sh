#!/bin/bash

# The Vibe Dashboard - Automated Setup Script
# This script will set up both backend and frontend

echo "╔════════════════════════════════════════╗"
echo "║   ✨ The Vibe Dashboard Setup         ║"
echo "║   Automated Installation Script       ║"
echo "╚════════════════════════════════════════╝"
echo ""

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo -e "${RED}❌ Node.js is not installed${NC}"
    echo "Please install Node.js 18+ from https://nodejs.org/"
    exit 1
fi

echo -e "${GREEN}✓ Node.js found: $(node --version)${NC}"
echo ""

# Setup Backend
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📦 Setting up Backend..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

cd backend

if [ -f "package-lock.json" ]; then
    rm package-lock.json
fi

echo "Installing backend dependencies..."
npm install

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Backend dependencies installed${NC}"
else
    echo -e "${RED}❌ Failed to install backend dependencies${NC}"
    exit 1
fi

# Check if .env exists, if not create from example
if [ ! -f ".env" ]; then
    cp .env.example .env
    echo -e "${YELLOW}⚠ Created .env file from .env.example${NC}"
fi

cd ..
echo ""

# Setup Frontend
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📦 Setting up Frontend..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

cd frontend

if [ -f "package-lock.json" ]; then
    rm package-lock.json
fi

echo "Installing frontend dependencies..."
npm install

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ Frontend dependencies installed${NC}"
else
    echo -e "${RED}❌ Failed to install frontend dependencies${NC}"
    exit 1
fi

# Check if .env.local exists, if not create from example
if [ ! -f ".env.local" ]; then
    cp .env.local.example .env.local
    echo -e "${YELLOW}⚠ Created .env.local file from .env.local.example${NC}"
fi

cd ..
echo ""

# Success message
echo "╔════════════════════════════════════════╗"
echo "║   ✨ Setup Complete!                  ║"
echo "╚════════════════════════════════════════╝"
echo ""
echo "To start the application:"
echo ""
echo "1️⃣  Start Backend (Terminal 1):"
echo "   cd backend && npm run dev"
echo ""
echo "2️⃣  Start Frontend (Terminal 2):"
echo "   cd frontend && npm run dev"
echo ""
echo "3️⃣  Open your browser:"
echo "   http://localhost:3000"
echo ""
echo -e "${GREEN}Happy coding! 🚀${NC}"
