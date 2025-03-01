#!/usr/bin/env bash
# wait-for-it.sh - Wait for a host/port to become available

set -e

host="$1"
port="$2"
shift 2
cmd="$@"

until nc -z "$host" "$port"; do
    >&2 echo "Waiting for $host:$port..."
    sleep 2
done

>&2 echo "$host:$port is available — starting service"
exec $cmd