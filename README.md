# sparky

Useful for learning spark without having to install it all, but also not just working out of notebooks.

In the same dir as the `Dockerfile`, build it with: `docker build -t sparky .` Run it with `docker run -it -v %cd%/src:/sparky/src sparky bash`. This will bind the src folder so that we can persist changes. 

If on mac/linux, replace the reference to current directory, as with the following: `$ docker run -it -v "$(pwd)"/src:sparky/src sparky bash`.  

Test that it is up and running by navigating to the folder where pyspark is installed, `/usr/local/spark`, running the `pyspark` command to enter the PySpark REPL, and then running the command: `>>> sc.textFile("README.md").count()` (assuming that the readme is present). This should count the number of words in the readme file and output something like `108` (depending on if they update it).
