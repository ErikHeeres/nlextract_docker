# nlextract_docker
Docker for running NLextract 

## Build image
From the Dockerfile, create the image using: 
> docker build nlextract -t nlextract

## Set configfile
Change configfile in NLExtract code. This file is located in:
> /nlextract-1.4.0/bag/extract.conf

MacOS example:

```bash
[DEFAULT]
database = gis
schema = bag
host = host.docker.internal
user = nlextract
password = extract2345
port = 5432
```

For linux, it should work with host = localhost.

## Run container interactive

Maps current location to the docker. Make sure that the code from NLextract is in your path + the zipfile from the extract. You can download the latest data from: 
http://geodata.nationaalgeoregister.nl/inspireadressen/extract/inspireadressen.zip 

```bash
docker run -it --rm -v $(pwd):/data --network="host" nlextract
```

## Run code

From here on it's just running the python code: `/nlextract-1.4.0/bag/src/bagextract.py`
