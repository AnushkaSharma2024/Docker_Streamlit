# 🚀 Docker_Streamlit

## 🌟 Overview
Docker_Streamlit is a structured project demonstrating how to containerize a Streamlit application using Docker. This setup ensures scalability, portability, and efficient app deployment.

---

## 📂 Project Structure
```bash
📂 Docker_Streamlit
│── 📂 app/                  # Contains Streamlit app logic
│   ├── 📜 main.py           # Streamlit application entry point
│   ├── 📜 requirements.txt  # Python dependencies
│── 📜 Dockerfile            # Docker configuration file
│── 📖 README.md             # Project documentation
│── 📜 .dockerignore         # Files to ignore in the Docker build
```

---

## 🔧 Prerequisites
Before getting started, ensure you have:
- 🐳 Docker installed
- 🐍 Python (if running locally)
- Required dependencies from `requirements.txt`

---

## 🚀 Installation & Setup
### 1️⃣ Clone the Repository
```bash
git clone https://github.com/AnushkaSharma2024/Docker_Streamlit.git
cd Docker_Streamlit
```

### 2️⃣ Build the Docker Image
Docker will create an image based on the `Dockerfile`, setting up the necessary environment.
```bash
docker build -t streamlit-app .
```

### 3️⃣ Run the Docker Container
Execute the container and expose it on port 8501.
```bash
docker run -p 8501:8501 streamlit-app
```

---

## 🛠️ How It Works
- The `Dockerfile` is based on a lightweight Python image.
- It installs dependencies from `requirements.txt`.
- It copies the Streamlit application files.
- When the container starts, it runs `main.py`, launching the Streamlit app.

---

## 🔄 Stopping & Cleaning Up
### Checking Running Containers
To view active Docker containers:
```bash
docker ps
```
To stop a running container:
```bash
docker stop <container_id>
```

### Removing Unused Docker Images
Clean up unnecessary images:
```bash
docker image prune -a
```

---

## 📜 Dockerfile
Below is the content of the `Dockerfile` used in this project:
```Dockerfile
FROM python:3.9-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

CMD ["streamlit", "run", "main.py", "--server.port=8501", "--server.address=0.0.0.0"]
```

---

## 🙌 Thank You!
Thank you for exploring Docker_Streamlit! If you have any questions or suggestions, feel free to reach out. 🚀
