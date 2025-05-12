# KiCad Containerized

!WORK-IN-PROGRESS!

KiCad containerized for replicable development environment.


## Run on Ubuntu Host Computer

Prerequisite(s):
- Install Docker (Recommend Docker Engine for Ubuntu): https://docs.docker.com/engine/install/ubuntu/

Setup
- Open terminal and pull this repo: `git pull <repo-link>`
- Change current directory to the `.container`-folder in the repo: `cd kicad_containerized/.container`
- Spin up the container: `docker compose up -d`
    - Alterantively: `sudo chmod +x ./start.sh` and `./start.sh`
- Make a new project e.g. in the `project`-folder.
- To spin down the container: `docker compose down`
    - Alterantively: `sudo chmod +x ./stop.sh` and `./stop.sh`

## Run on Windows 11 Host Computer

Prerequisite(s):
- Docker (e.g. Docker Desktop)
- WSL2 + integrated with Docker (e.g. **Use the WSL 2 based engine** in Docker Desktop).
- Setup a Linux Distro (e.g. Ubuntu) in WSL2

**NB!** Recommend to work from the WSL2 ubuntu file system and Ubuntu terminal

Setup
- Open terminal and pull this repo: `git pull <repo-link>`
- Change current directory to the `.container`-folder in the repo: `cd kicad_containerized/.container`
- Spin up the container: `docker compose up -d`
    - Alterantively: `sudo chmod +x ./start.sh` and `./start.sh`
- Make a new project e.g. in the `project`-folder.
- To spin down the container: `docker compose down`
    - Alterantively: `sudo chmod +x ./stop.sh` and `./stop.sh`



## To-Dos

- Test with Ubuntu as host computer
- Figure out if I can integrate into VS code with the tasks in `tasks.json` (requires to be "run as adminsitrator" in Windows?)
- Make an easy way to pull projects?
- Figure out how to integrate good solutions for getting EDA/CAD models from webpage such as digikey, mouser, etc..
- Figure out how to store EDA/CAD models libraries separately and easy to add

