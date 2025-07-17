# Flask Docker Terraform Project

This project demonstrates how to containerize a simple Flask web application, push it to DockerHub, and deploy it on an AWS EC2 instance using Terraform.

---

## 🔧 Technologies Used

- **Flask** (Python Web Framework)
- **Docker** (for containerization)
- **DockerHub** (for image registry)
- **Terraform** (for Infrastructure as Code)
- **AWS EC2** (for hosting the container)

---

## 📦 Project Structure


---

## 🚀 How It Works

1. **Flask App**  
   A minimal UI Flask app is written in `app.py` and uses a template `index.html`.

2. **Dockerize**  
   The app is containerized using a `Dockerfile` and pushed to DockerHub:  
   👉 `https://hub.docker.com/r/ebirebhisimoren/flask-ui-app`

3. **Terraform**  
   Terraform provisions an EC2 instance and installs Docker using `user_data`.  
   Then it pulls the Docker image and runs it on port 80.

4. **Accessing the App**  
   After running `terraform apply`, the public IP is output.  
   Open your browser and go to:  
   `http://<public-ip>`

---

## 🌐 Example

After running Terraform:


Visit: `http://3.90.209.73`

---

## 📂 DockerHub Image

- **Repository:** `ebirebhisimoren/flask-ui-app`  
- [View on DockerHub](https://hub.docker.com/r/ebirebhisimoren/flask-ui-app)

---

## ☁️ GitHub Repo

- [https://github.com/ebirebhisi/flask-docker-terraform](https://github.com/ebirebhisi/flask-docker-terraform)

---

## 🧪 How to Run (Locally)

```bash
# Build the Docker image
docker build -t flask-ui-app .

# Run the app locally
docker run -p 80:80 flask-ui-app


