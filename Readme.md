### This is Reamde for Introduction to RecSys class for Politechnika Gliwicka Y22

Instructions:
1. Build docker on your host system:
```
docker build . -t recsys_pg
```

2. Run docker from this directory
```
docker run --rm -it \
  --ipc=host \
  --net=host \
  -v "$(pwd)":/home \
  recsys_pg \
  bash
```

3. In the docker run jupyter lab
```
jupyter lab --ip 0.0.0.0
```