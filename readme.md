docker-php-cs-fixer
============

Run PHP Mess Detector (php-cs) in Docker container-fixer


Build
--------------------

Build from `Dockerfile`:

```sh
docker build -t fredericomartini/php-cs-fixer .
```

Verify build:

```sh
docker run --rm -it fredericomartini/php-cs-fixer --version
```

Usage
--------------------

1. Install the `fredericomartini/php-cs-fixer` container (optional - this step is performed by Docker automatically when running the container):

```sh
$ docker pull fredericomartini/php-cs-fixer
```

2. Define an bash alias that runs this container whenever `php-cs-fixer` is invoked on the command line:

```sh
$ echo "alias php-cs='docker run --rm -it -v \$(pwd):/app fredericomartini/php-cs-fixer'" >> ~/.bashrc
$ source ~/.bashrc
```

3. Run php-cs-fixer as always:

```sh
$ php-cs-fixer --version-fixer
```