#!/bin/bash

# SONARR Settings
SONARR_HOST="http://x.x.x.x:7878"
SONARR_API_KEY=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

# Function to refresh Sonarr monitored downloads
refresh_sonarr() {
  echo "Aktualisiere Sonarr überwachte Downloads..."
  curl -X POST "$SONARR_HOST/api/v3/command?apikey=$SONARR_API_KEY" \
       -H "Content-Type: application/json" \
       --data '{"name":"RefreshMonitoredDownloads"}'
}

refresh_sonarr