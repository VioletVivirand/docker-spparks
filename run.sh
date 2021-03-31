docker run -it --rm \
  -v $(pwd)/$1:/$1 \
  spparks:latest \
  /$1