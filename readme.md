# Intro
This is a quick demonstration of hot code reloading in a docker container.
The setup includes a Docker host, mounting the current working directory into the Docker Container.

# Requirements
Have a set up Docker system.

## Running in GitHub Codespace
- Create new venv
   - `python -m venv myenv`
   - `source myenv/bin/activate`
   - `pip install requirements.txt`

# Build the container f

Run the Command:
```docker build -t demo .```

This builds the container and ads the image name "demo".

# Run the container
Run the following command: ```docker run -p 5000:5000 -v .:/flask demo```

- ```-p 5000:5000```: Tells to bind the Port 5000 of the Docker Container to the port 5000 of the current host system
- ```-v .:/flask```: mounts the current directory into the "/flask" directory of the container
- ```demo```: Name of the docker image previously built

# Test it
Now while the container is running, you can edit and safe the ```main.py``` file. Especially the output in Line 7 can be changed.

You should now see, how the hot reloading is performed on your command line.

Also, you can check the output of http://127.0.0.1:5000/.

# Wind down
Stop the running container with Ctrl+C.
