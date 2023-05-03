# Browser DNS Query Trail

## Example

### Start container

    docker compose up -d

### Window 1: Monitor DNS queries

   sh querylog.sh

### Window 2: Fetch page

    sh fetch.sh https://svd.se

### Stop container

    docker compose down
