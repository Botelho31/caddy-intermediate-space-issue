# Issue "blank intermediate key"

If the program runs out of space before writing the intermediate key ( in real production conditions this would mostly be due to log piling up ). You could have a blank intermediate key with no way to handle it afterwards.

## How to Use

Just run the docker compose as it`s setup to crash on initial setup of PKI

- docker-compose up 
