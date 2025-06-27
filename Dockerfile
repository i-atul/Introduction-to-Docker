# FROM: This sets the base for your image, like choosing the starting system or language for your app.
FROM python:3.13

# LABEL: Add notes about your image, such as who made it or what version it is.
# LABEL version="1.0" description="Introduction to Docker"

# WORKDIR: Pick the folder where commands will run by default in the container.
WORKDIR /app

# COPY: Copy files from your computer into the image so your app has what it needs.
COPY . /app

# RUN: Run commands to set up your app, like installing deps or updates.
RUN pip install -r requirements.txt


# ENV: Set up environment variables that your app can use inside the container.
# Example: ENV PATH /app/bin:$PATH


# EXPOSE: Tell Docker which port your app will use so it can talk to the outside world.
EXPOSE 5050


# CMD: Choose the main command that runs when your container starts.
CMD ["python", "app.py"]


# VOLUME: Make a folder that can save data or be shared with your computer or other containers.
# Example: VOLUME ["/data"]



# ARG: Let users give special values when building the image, like a version number.
# Example: ARG VERSION=1.0