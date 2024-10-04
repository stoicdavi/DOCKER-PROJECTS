# Docker project that calculates the area and perimeter of a circle using javascript
## To build the image
- docker build -t areaperimer:v1 .
- docker run --rm areaperimer:v1
- docker run --rm -e perimeter=21 areaperimer:v1