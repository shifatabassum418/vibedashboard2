@echo off
REM The Vibe Dashboard - Automated Setup Script for Windows
REM This script will set up both backend and frontend

echo ========================================
echo    The Vibe Dashboard Setup
echo    Automated Installation Script
echo ========================================
echo.

REM Check if Node.js is installed
where node >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Node.js is not installed
    echo Please install Node.js 18+ from https://nodejs.org/
    pause
    exit /b 1
)

for /f "tokens=*" %%i in ('node --version') do set NODE_VERSION=%%i
echo [SUCCESS] Node.js found: %NODE_VERSION%
echo.

REM Setup Backend
echo ========================================
echo Setting up Backend...
echo ========================================

cd backend

if exist package-lock.json del package-lock.json

echo Installing backend dependencies...
call npm install

if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Failed to install backend dependencies
    pause
    exit /b 1
)

echo [SUCCESS] Backend dependencies installed
echo.

REM Check if .env exists
if not exist .env (
    copy .env.example .env
    echo [WARNING] Created .env file from .env.example
)

cd ..

REM Setup Frontend
echo ========================================
echo Setting up Frontend...
echo ========================================

cd frontend

if exist package-lock.json del package-lock.json

echo Installing frontend dependencies...
call npm install

if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Failed to install frontend dependencies
    pause
    exit /b 1
)

echo [SUCCESS] Frontend dependencies installed
echo.

REM Check if .env.local exists
if not exist .env.local (
    copy .env.local.example .env.local
    echo [WARNING] Created .env.local file from .env.local.example
)

cd ..

REM Success message
echo.
echo ========================================
echo    Setup Complete!
echo ========================================
echo.
echo To start the application:
echo.
echo 1. Start Backend (Terminal 1):
echo    cd backend ^&^& npm run dev
echo.
echo 2. Start Frontend (Terminal 2):
echo    cd frontend ^&^& npm run dev
echo.
echo 3. Open your browser:
echo    http://localhost:3000
echo.
echo Happy coding!
echo.
pause
