#!/bin/bash

# Radarr Settings
RADARR_HOST="http://x.x.x.x:7878"
RADARR_API_KEY=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

# Function to refresh Radarr monitored downloads
refresh_radarr() {
  echo "Aktualisiere Radarr überwachte Downloads..."
  curl -X POST "$RADARR_HOST/api/v3/command?apikey=$RADARR_API_KEY" \
       -H "Content-Type: application/json" \
       --data '{"name":"RefreshMonitoredDownloads"}'
}

refresh_radarr