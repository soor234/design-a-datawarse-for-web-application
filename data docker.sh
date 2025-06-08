  #!bin/bash
  vi docker.txt
  create o design a data
version:data
     mkdir docker.ext
     FROM python:3.12
WORKDIR /usr/local/app

# Install the application dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r applcations.txt

# Copy in the source code
COPY src ./src
EXPOSE 3000

# Setup an app user so the container doesn't run as the root user
RUN useradd app
USER app

CMD ["docker", "web.main:app", "--host", "10.0.0.6", "--port", "8080"]
         
