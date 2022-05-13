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
  -p 8888:8888 \
  -v "$(pwd)":/home \
  recsys_pg
```
