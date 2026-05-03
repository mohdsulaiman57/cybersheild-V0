# 🛡️ CyberShield — AI-Powered Cyber Threat Detection System

> **Final Year Project** | Artificial Intelligence & Machine Learning

A real-time network intrusion detection system that uses an ensemble of **Random Forest**, **XGBoost**, and **Neural Network (MLP)** classifiers to identify 7 types of cyber threats from network traffic features.

---

## 📸 Features

| Feature | Details |
|---|---|
| **ML Models** | Random Forest · XGBoost · MLP Neural Network |
| **Attack Types** | DDoS · Port Scan · Brute Force · SQL Injection · XSS · Botnet · Normal |
| **Ensemble Voting** | Majority vote across all 3 models |
| **Live Dashboard** | Real-time animated threat feed + charts |
| **Packet Analyser** | Manual feature input with quick presets |
| **Dataset** | 50,000 synthetic samples (KDD Cup-style features) |

---

## 🚀 Quick Start

### First Time Setup (installs everything + trains models):
```
Double-click: setup_and_run.bat
```

### After First Setup (launches server only):
```
Double-click: start_server.bat
```

Then open `frontend/index.html` in your browser.

---

## 📁 Project Structure

```
CyberShield/
├── backend/
│   ├── app.py               ← Flask REST API server
│   ├── train_model.py       ← ML training pipeline
│   ├── threat_detector.py   ← Prediction engine
│   ├── data_generator.py    ← Synthetic dataset generator
│   ├── requirements.txt     ← Python dependencies
│   ├── data/                ← Generated CSV dataset
│   └── models/              ← Saved .pkl model files
│
├── frontend/
│   ├── index.html           ← Dashboard HTML
│   ├── css/style.css        ← Cyberpunk dark theme
│   └── js/main.js           ← Dashboard controller
│
├── setup_and_run.bat        ← First-time setup + run
├── start_server.bat         ← Quick server start
└── README.md
```

---

## 🧠 ML Architecture

### Features (20 network traffic features):
- Connection stats: `duration`, `src_bytes`, `dst_bytes`, `protocol_type`
- Error rates: `serror_rate`, `rerror_rate`
- Service patterns: `same_srv_rate`, `diff_srv_rate`, `count`, `srv_count`
- Host behaviour: `dst_host_count`, `dst_host_srv_count`, `dst_host_serror_rate`
- Security indicators: `num_failed_logins`, `logged_in`, `hot`, `num_compromised`

### Models:
| Model | Algorithm | Trees/Layers |
|---|---|---|
| Random Forest | Ensemble of Decision Trees | 150 estimators |
| XGBoost | Gradient Boosted Trees | 150 estimators, depth 8 |
| Neural Network | Multi-Layer Perceptron | 256 → 128 → 64 neurons |

### Attack Classes & Severity:
| Attack | Severity |
|---|---|
| Normal | None |
| XSS | Low |
| SQL Injection | Medium |
| Port Scan | Medium |
| Brute Force | High |
| Botnet | High |
| DDoS | **Critical** |

---

## 🔌 API Endpoints

| Method | Endpoint | Description |
|---|---|---|
| GET | `/api/status` | System health + model metrics |
| POST | `/api/predict` | Analyse a packet (manual features) |
| GET | `/api/simulate` | Simulate a random packet |
| GET | `/api/history` | Threat log history |
| GET | `/api/stats` | Aggregate statistics |
| GET | `/api/threat-distribution` | Threat type counts |
| POST | `/api/reset` | Reset in-memory state |

---

## 🛠️ Requirements

- Python 3.9+
- pip (comes with Python)
- Modern browser (Chrome / Edge / Firefox)

---
Mohammad Abdul Razzaq Ali-Final Year B.Tech/B.E. Project  
Department of Computer Science Engineering / AI/ML
Osmania University,4th year

---

*Built with ❤️ using Python, Flask, scikit-learn, XGBoost, Chart.js*
