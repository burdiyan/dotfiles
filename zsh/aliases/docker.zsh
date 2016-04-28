function docker_machine_checkout() {
    eval $(docker-machine env $1)
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
