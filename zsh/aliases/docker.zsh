function docker_machine_checkout() {
    eval $(docker-machine env $1)
}

function remove_dangling_images() {
    docker rmi $(docker images -q --filter "dangling=true")
}

function list_dangling_volumes() {
    docker volume ls -f dangling=true
}

alias d="docker"
alias dma="docker-machine"
alias dmaco=docker_machine_checkout
alias dco="docker-compose"
alias dim="docker images"
alias ds="docker start"
alias dst="docker stop"

alias dps="docker ps"
alias dpsa="docker ps -a"
alias drm="docker rm"
alias drmi="docker rmi"
alias drmid=remove_dangling_images
alias dvd=list_dangling_volumes
