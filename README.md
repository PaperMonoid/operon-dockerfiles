# operon-dockerfiles
This repository aims to make it easier to install and set up the Operon C++ genetic framework, particularly on Windows machines where the installation process can be more challenging. By providing Dockerfiles and instructions for setting up Operon in a virtualized environment using Docker, this repository simplifies the installation process and helps users get started quickly.

By using the Dockerfiles and instructions provided in this repository, users can quickly set up Operon in a consistent and reproducible manner, regardless of their operating system. The virtualized environment ensures that the dependencies are properly configured, reducing the risk of installation issues and enabling a smoother experience for users.

Whether you are new to Operon or struggling with the installation process on Windows, this repository provides a convenient solution for getting started with the Operon C++ genetic framework.

## Introduction
The Operon C++ genetic framework is a powerful tool for genetic programming and evolutionary algorithms. It provides a flexible and efficient implementation of genetic operators, fitness evaluation, and other essential components for evolutionary computations. This repository aims to make it easier for users to get started with Operon by providing Dockerfiles and instructions for setting up the framework in a virtualized environment.

## Getting Started

### Prerequisites
- Docker: Make sure you have Docker installed on your system. You can find installation instructions for your specific operating system on the Docker website: https://docs.docker.com/get-docker/

### Installation

1. Clone this repository to your local machine:
```
$ git clone https://github.com/PaperMonoid/operon-dockerfiles.git
```

2. Navigate to the cloned repository:
```
$ cd operon-dockerfiles
```

3. Build the Docker image (this process may take several minutes):
```
$ docker build buildx -t operon:v1 .
```

## Usage
To use Operon C++ genetic framework in a Docker container, follow these steps:

1. List the available containers:

```
$ docker container ls -a
```


2. A: Open a bash shell of a new container:

```
$ docker run -it operon:v1 /bin/bash
```

**Note:** Before creating a new container, you may want to check if you already have a container with the necessary configuration (make sure to check if you already have a suitable container before creating a new one using the `docker container ls -a` command). Running multiple containers unnecessarily can consume disk space over time. If you have a suitable existing container, you can use the `docker start` command (mentioned in step 2.B) to open a bash shell in that container instead of creating a new one.

2. B: Alternatively, you can open a bash shell of an already created container:

```
$ docker start -i <container-id> /bin/bash
```

3. Inside the shell, you will find the compiled Operon files and executables inside the `result` directory at `/home/operon/result`. You can use these files as needed for your projects. If you want to exit the docker container shelel, use the `exit` command.

4. You may remove containers using the following command
```
$ docker container rm <container-id>
```

## Contributing
Contributions to this repository are welcome! If you encounter any issues, have suggestions for improvements, or would like to contribute new features, please feel free to submit a pull request or open an issue.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
