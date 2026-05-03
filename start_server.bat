@echo off
title CyberShield — Start Server
cd /d "%~dp0backend"
echo Starting CyberShield API server on http://localhost:5000 ...
python app.py
pause
