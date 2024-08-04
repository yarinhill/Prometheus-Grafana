#!/bin/bash
  
function cleanup {
    echo "Terminating SSH tunnel..."
    kill $SSH_PID
    wait $SSH_PID
    echo "SSH tunnel terminated."
    exit
}

trap cleanup SIGINT SIGTERM

function check_tunnel {
    while true; do
        kill -0 $SSH_PID >/dev/null 2>&1
        if [ $? -ne 0 ]; then
            echo "SSH tunnel process has terminated unexpectedly."
            cleanup
        fi
        sleep 5
    done
}

nohup ssh -i /root/.ssh/id_rsa -NT -o ServerAliveInterval=60 -oStrictHostKeyChecking=no -o ExitOnForwardFailure=yes -L 127.0.0.1:3309:127.0.0.1:3309 ec2-user@PUBLIC_IP &
nohup ssh -i /root/.ssh/id_rsa -NT -o ServerAliveInterval=60 -oStrictHostKeyChecking=no -o ExitOnForwardFailure=yes -L 127.0.0.1:3310:127.0.0.1:3310 ec2-user@PUBLIC_IP 


SSH_PID=$!

check_tunnel
