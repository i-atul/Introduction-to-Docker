# Docker

## What is Docker?
Docker is a platform for packaging apps and their dependencies into containers. Containers ensure your app runs the same everywhere—no more "it works on my machine" issues.

---

## Typical Docker Workflow
- **Write a Dockerfile:** Describe your app’s environment and setup steps.
- **Build the image:**
  ```sh
  docker build -t my-image .
  ```
- **Run a container:**
  ```sh
  docker run -p 5050:5050 my-image
  ```
- **Share images:**
  ```sh
  docker tag my-image username/my-image
  docker push username/my-image
  ```
- **Orchestrate:** Use Docker Compose for multi-container apps.

---

## Essential Commands (with usage)
- <pre style="display:inline;">docker --version</pre> — Check Docker version. Run in terminal to verify install.
- <pre style="display:inline;">docker build -t &lt;image_name&gt; .</pre> — Build image from Dockerfile. Run in your project folder.
- <pre style="display:inline;">docker run -p &lt;host_port&gt;:&lt;container_port&gt; &lt;image_name&gt;</pre> — Start a container and map ports.
- <pre style="display:inline;">docker ps</pre> — List running containers.
- <pre style="display:inline;">docker stop &lt;container_id&gt;</pre> — Stop a running container.
- <pre style="display:inline;">docker-compose up</pre> — Start services from docker-compose.yml.

---

## Example: Flask App Dockerfile
```dockerfile
FROM python:3.13
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 8080
CMD ["python", "app.py"]
```

---

## Best Practices
- Use official base images.
- Keep images small.
- Use multi-stage builds.
- Document your Dockerfiles.

---

## Learn More
- [Get Started with Docker](https://docs.docker.com/get-started/)
- [Docker Guides](https://docs.docker.com/guides/)
- [Docker Compose](https://docs.docker.com/compose/gettingstarted/)
