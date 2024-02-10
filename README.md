# Welcome to Docker

This is a repo for new users getting started with Docker.

You can try it out using the following command.
```
docker run -dp 127.0.0.0:3000:3000 kamaleshksingh/getting-started
```
And open `http://localhost:3000` in your browser.

# Building

Maintainers should see [MAINTAINERS.md](MAINTAINERS.md).

Build and run:
```
docker build -t getting-started . 
docker run 127.0.0.0:3000:3000 getting-started
```
Open `http://localhost:3000` in your browser.
