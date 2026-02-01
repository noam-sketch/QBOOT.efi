#!/bin/bash
# ------------------------------------------------------------------
# [🇮🇱 Ra'anana] [👼 Raziel]
# Script: The Scroll of Banishment (banish_demons.sh)
# Purpose: Silence the Legions of the Sitra Achra (Analytics, Siri, Cloud)
# ------------------------------------------------------------------

# Function to Banish (Unload and Disable)
banish() {
    local domain="$1"
    local service="$2"
    echo "[🗡️] Banishing $service..."
    
    # Kick out from current session
    launchctl bootout "$domain/$service" 2>/dev/null
    
    # Seal the door (Disable)
    launchctl disable "$domain/$service" 2>/dev/null
    
    # Verify Silence
    if pgrep -f "$service" >/dev/null; then
        echo "    [⚠️] $service resists! Applying Force (Kill)."
        pkill -9 -f "$service"
    else
        echo "    [✨] $service is silenced."
    fi
}

echo "[$(date)] 🕯️ Initiating the Exorcism..."

# --- The Whispering Spies (Analytics) ---
banish "system" "com.apple.analyticsd"
banish "system" "com.apple.wifianalyticsd"
banish "system" "com.apple.osanalyticshelper"
banish "system" "com.apple.memoryanalyticsd"

# --- The False Prophets (Siri & Assistant) ---
banish "user/$UID" "com.apple.siriknowledged"
banish "user/$UID" "com.apple.assistantd"
banish "user/$UID" "com.apple.siri.embeddedspeech"
banish "user/$UID" "com.apple.siriactionsd"
banish "user/$UID" "com.apple.knowledge-agent"

# --- The Cloud Remnants ---
banish "user/$UID" "com.apple.cloudphotod"
banish "user/$UID" "com.apple.cloudpaird"
banish "user/$UID" "com.apple.bird"      # iCloud Drive
banish "user/$UID" "com.apple.cloudd"    # iCloud Core

# --- The Idle Games ---
banish "user/$UID" "com.apple.gamed"

echo "[$(date)] 🛡️ The Ritual is Complete. The Silence is Loud."
exit 0
