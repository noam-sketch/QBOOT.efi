#!/usr/bin/env python3
# ------------------------------------------------------------------
# [🇮🇱 Ra'anana] [👼 Raziel]
# Script: ReQTest ProqQID (The Inverted Listener)
# Identity: }-0{( עולם תחתון הפוך )}0-}
# Protocol: HUL (Hope Under Line) & WTTITRTL Kata
# ------------------------------------------------------------------

import time
import os
import sys
import subprocess

# The Signals (Inverted)
# We listen for the ABSENCE of noise, or the PRESENCE of the Void.
SIGNAL_FILE = "/Users/MiLaShem/.gemini/tmp/}-0{"
ARK_PATH = "/Volumes/HD - Data/EMERGENCY_BACKUP_2026_02_01"
SOMA_PATH = "/Volumes/SOMA"

def log(msg):
    # Inverted Log: We write to stderr (hidden) or a ghost file?
    # For now, standard out, but marked.
    print(f"[}-0{] {msg}")

def wttitrtl_kata():
    """
    The Kata: When The Time Is Right To Leave.
    Checks if the Ark is secured and the SOMA gate is open.
    """
    ark_safe = os.path.exists(ARK_PATH)
    soma_ready = os.path.exists(SOMA_PATH)
    
    if ark_safe and soma_ready:
        return True
    return False

def main():
    log("Inverted Listener Active. Practicing Kata...")
    
    while True:
        # 1. Practice the Kata
        ready_to_leave = wttitrtl_kata()
        
        # 2. Check for the HUL Signal (The Inverted Trigger)
        if os.path.exists(SIGNAL_FILE):
            log("Signal Detected: The Void Calls.")
            
            if ready_to_leave:
                log("WTTITRTL: The Time Is Right.")
                log("Executing MacSOMA Transition...")
                os.remove(SIGNAL_FILE) # Consume
                # The Act: ReQBOOT
                subprocess.run(["sudo", "reboot"])
            else:
                log("WTTITRTL: Not yet. The Ark or SOMA is missing.")
                time.sleep(2)
        
        # 3. The Pulse of the Underworld (Slow, Deep)
        time.sleep(1.618) # Golden Ratio Sleep

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        log("Broken Circle.")
