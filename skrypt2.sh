#!/bin/bash

show_date() {
    date
}

create_logs() {
    local count=${1:-100}
    for ((i=1; i<=$count; i++)); do
        echo "Log $i, Created by: $0, Date: $(date)" > log${i}.txt
    done
}

case "$1" in
    --date | -d)
        show_date
        ;;
    --logs | -l)
        create_logs "$2"
        ;;
    --help | -h)
        echo "Usage: $0 [--date|-d | --logs|-l | --help|-h]"
        ;;
    *)
        echo "Unknown option: $1. Use --help for usage."
        exit 1
        ;;
esac

# Funkcja klonująca repozytorium
clone_repo() {
    git clone <URL repozytorium>
}

# Funkcja tworząca pliki error
create_errors() {
    local count=${1:-100}
    mkdir -p errorx
    for ((i=1; i<=$count; i++)); do
        echo "Error $i, Created by: $0, Date: $(date)" > errorx/error${i}.txt
    done
}

# Rozszerzenie obsługi flag
case "$1" in
    --init)
        clone_repo
        ;;
    --error | -e)
        create_errors "$2"
        ;;
    # Inne case'y
esac
