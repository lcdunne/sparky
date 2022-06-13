# sparky

Useful for learning spark without having to install it all, but also not just working out of notebooks.

In the same dir as the `Dockerfile`, build it with: `docker build -t sparky .` Run it with `docker run -it -v %cd%/src:/sparky/src sparky bash`. This will bind the src folder so that we can persist changes. 

If on mac/linux, replace the reference to current directory, as with the following: `$ docker run -it -v "$(pwd)"/src:sparky/src sparky bash`
