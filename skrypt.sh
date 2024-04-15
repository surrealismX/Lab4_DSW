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
    --date)
        show_date
        ;;
    --logs)
        create_logs "$2"
        ;;
    --help)
        echo "Usage: $0 [--date|--logs|--help]"
        ;;
    *)
        echo "Unknown option: $1. Use --help for usage."
        exit 1
        ;;
esac
