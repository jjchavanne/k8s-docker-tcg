# Initial attempt to manually create - however skipping since mirrored from original below.
gcloud compute instances create kind-johnc-uscent1-c-8g \
  --zone=us-central1-c \
  --machine-type=e2-standard-2 \
  --network-interface= \
  --boot-disk-size=20GB \
  --boot-disk-type=pd-balanced \
  --tags=http-server,https-server,ssh \
  --image-family=ubuntu-1804-lts \
  
# Clone from original
gcloud beta compute --project=johnc-999 instances create kind-johnc-uscent1-c-8g --zone=us-central1-c \
  --machine-type=e2-standard-2 --subnet=default-net1-us-central1 --network-tier=PREMIUM --maintenance-policy=MIGRATE \
  --service-account=971426382099-compute@developer.gserviceaccount.com \
  --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append \
  --tags=ssh,http-server,https-server --image=ubuntu-1804-bionic-v20210315a --image-project=ubuntu-os-cloud \
  --boot-disk-size=20GB --boot-disk-type=pd-balanced --boot-disk-device-name=kind-johnc-uscent1-c-8g-1 \
  --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --reservation-affinity=any
  
# Trimmed down clone & swapped image for image family
gcloud beta compute --project=johnc-999 instances create kind-johnc-uscent1-c-8g --zone=us-central1-c \
    --machine-type=e2-standard-2 --subnet=default-net1-us-central1 --network-tier=PREMIUM --maintenance-policy=MIGRATE \
    --service-account=971426382099-compute@developer.gserviceaccount.com \
    --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append \
    --tags=ssh,http-server,https-server --image-family=ubuntu-1804-lts --image-project=ubuntu-os-cloud \
    --boot-disk-size=20GB --boot-disk-type=pd-balanced \
    --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --reservation-affinity=any
