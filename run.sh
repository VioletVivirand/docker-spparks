docker run -it --rm \
  -v $(pwd)/$1:/$1 \
  spparks-patched:latest \
  /$1