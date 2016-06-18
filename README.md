# node-cron  
Docker image that runs node scheduled tasks

## Usage  
Create your own `Dockerfile` with the following contents.

```
FROM kejace/node-cron:latest

COPY . /usr/src/app
```

Make sure to have a `package.json` with a `start` script in it.

When executing your own image pass the `TASKSCHEDULE` environment variable in the following fashion:

```
docker run --env-file=.env -e TASKSCHEDULE='* * * * *' -it <YOUR_IMAGE_NAME>
```


## Development  

Building the image

```
docker build --no-cache=true -t kejace/node-cron .
```

[Tag and Push](https://docs.docker.com/mac/step_six/)
