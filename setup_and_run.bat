@echo off
title CyberShield — Setup ^& Train
color 0A

echo.
echo  ██████╗██╗   ██╗██████╗ ███████╗██████╗ ███████╗██╗  ██╗██╗███████╗██╗      ██████╗
echo ██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗██╔════╝██║  ██║██║██╔════╝██║     ██╔══██╗
echo ██║      ╚████╔╝ ██████╔╝█████╗  ██████╔╝███████╗███████║██║█████╗  ██║     ██║  ██║
echo ██║       ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██╗╚════██║██╔══██║██║██╔══╝  ██║     ██║  ██║
echo ╚██████╗   ██║   ██████╔╝███████╗██║  ██║███████║██║  ██║██║███████╗███████╗██████╔╝
echo  ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝╚══════╝╚══════╝╚═════╝
echo.
echo  AI-Powered Cyber Threat Detection System
echo  Final Year Project  ^|  ML: RF + XGBoost + MLP Neural Network
echo.
echo =============================================================

:: Navigate to backend
cd /d "%~dp0backend"

echo.
echo [STEP 1/3] Installing Python dependencies...
echo -------------------------------------------------------------
pip install -r requirements.txt
if errorlevel 1 (
  echo.
  echo  [ERROR] pip install failed. Make sure Python is installed.
  pause & exit /b 1
)

echo.
echo [STEP 2/3] Generating dataset and training ML models...
echo  This may take 2-5 minutes. Please wait...
echo -------------------------------------------------------------
python train_model.py
if errorlevel 1 (
  echo.
  echo  [ERROR] Training failed. Check error above.
  pause & exit /b 1
)

echo.
echo [STEP 3/3] Starting CyberShield Flask server...
echo -------------------------------------------------------------
echo  Backend:   http://localhost:5000
echo  Dashboard: Open frontend\index.html in your browser
echo.
echo  Press Ctrl+C to stop the server.
echo =============================================================
echo.
python app.py
pause
