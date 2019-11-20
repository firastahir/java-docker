#!/bin/bash

echo "Executing the Create Order agent"
/opt/yantra/eoprt01/smcfs93local/bin/agent.sh CREATEORDER
echo "Sleeping forever.."
for (( ; ; )); do sleep 1; done
