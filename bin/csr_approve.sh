#! /usr/bin/env bash
# normally this is handled by the 'auto-approve-csrs' chart
# which will possibly will be coreos/kapprover in the future
kubectl get csr -o custom-columns=name:.metadata.name,status:.status | \
    grep 'map\[\]' | awk '{ print $1 }' | xargs kubectl certificate approve