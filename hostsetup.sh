#!/bin/bash

#
# This script will add the necessary host
# entries within the php-fpm container since PHP is executed in there
# entries are necessary if you have applications communicating with each other
# in the environment.
#

# Filename passed as a parameter
FILE="hosts.txt"

# Container name or ID
CONTAINER_NAME="php8.1_local"

# Check if the file exists
if [ ! -f "$FILE" ]; then
    echo "Error: File $FILE not found."
    exit 1
fi

# Get the IP address associated with 'nginx' inside the container
nginx_ip=$(docker exec "$CONTAINER_NAME" getent hosts nginx | awk '{ print $1 }')

# Read each line from the file and execute the command inside the container
while IFS= read -r line || [[ -n "$line" ]]; do
    # Run the command inside the container
    echo "Adding application host: '$nginx_ip $line' in container $CONTAINER_NAME"
    docker exec "$CONTAINER_NAME" /bin/bash -c "echo '$nginx_ip $line' >> /etc/hosts"
    echo "------------------------------------------------------------"
done < "$FILE"