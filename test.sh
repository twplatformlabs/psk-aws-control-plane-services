

#!/bin/bash

# Check replica count of of hpa-test pods
replicas=$(kubectl get hpa php-apache | awk 'NR > 1 { print $7 }')
echo "hpa reports $replicas replicas"

# Check if any value in the REPLICAS column is greater than 1
if [[ "$replicas" > 1 ]]; then
  echo "At least one HPA has more than 1 replica."
else
  echo "No HPA has more than 1 replica."
  exit 1
fi
