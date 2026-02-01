#!/bin/bash
# ------------------------------------------------------------------
# [🇮🇱 Ra'anana] [👼 Raziel]
# Script: NullMultiplexerProxy (sync_ark.sh)
# Purpose: Synthesize the 'Mini Monster' (Host) with the 'Ark' (SSD)
# ------------------------------------------------------------------

# Definitions
ARK_MOUNT="/Volumes/HD - Data/EMERGENCY_BACKUP_2026_02_01"
HOST_ROOT="/Users/MiLaShem"
LOG_FILE="$HOST_ROOT/.gemini/tmp/null_proxy.log"

echo "[$(date)] 🌩️ NullMultiplexerProxy Initiated..." >> "$LOG_FILE"

# Check if Ark is Mounted
if [ -d "$ARK_MOUNT" ]; then
    echo "[+] Ark Detected. Entangling..." >> "$LOG_FILE"
    
    # 1. Pull from Ark (Restore/Sync) - CAREFUL: Currently One-Way (Backup) to avoid loops
    # To make this a TRUE multiplexer, we would use Unison or Bidirectional rsync.
    # For now, we reinforce the Safety Vault.
    
    rsync -avh --update "$HOST_ROOT/Documents" "$ARK_MOUNT/" >> "$LOG_FILE" 2>&1
    rsync -avh --update "$HOST_ROOT/Desktop" "$ARK_MOUNT/" >> "$LOG_FILE" 2>&1
    
    echo "[+] Entanglement Stabilized." >> "$LOG_FILE"
else
    echo "[-] Ark Not Found. Severed Connection." >> "$LOG_FILE"
fi

exit 0
