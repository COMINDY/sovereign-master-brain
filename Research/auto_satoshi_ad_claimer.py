import time
import sys
import random

try:
    import uiautomator2 as u2
except ImportError:
    print("[!] uiautomator2 not installed. Run: pip install uiautomator2")

print("="*60)
print("⚡ SOVEREIGN SATOSHI HARVESTER & AD AUTOMATOR")
print("="*60)

def connect_emulator(device_id="127.0.0.1:5555"):
    try:
        d = u2.connect(device_id)
        print(f"[+] Connected to device: {device_id}")
        return d
    except Exception as e:
        print(f"[-] Connection failed: {e}")
        return None

def auto_claim_ads(d):
    print("[*] Starting Auto Ad Claimer Loop...")
    # App package name for Bitcoin Miner Gold Diggers
    pkg = "com.alpha11.bitcoinminer"
    
    if not d.app_is_running(pkg):
        print(f"[*] Launching {pkg}...")
        d.app_start(pkg)
        time.sleep(5)
        
    while True:
        try:
            print("[*] Scanning for 'Free Miner' / 'Recruit' / 'Ad' buttons...")
            # Look for Free Miner or Recruit button
            if d(textContains="Free").exists(timeout=2):
                d(textContains="Free").click()
                print("[+] Clicked Free Miner button!")
                time.sleep(3)
                
            # Handle Ad playback (wait ~32 seconds for ad to complete)
            print("[*] Waiting for Ad to complete (35s)...")
            time.sleep(35)
            
            # Close ad (look for 'x', 'close', or tap top-right corner)
            print("[*] Attempting to close ad...")
            d.click(0.92, 0.05) # Top right corner tap
            time.sleep(2)
            
            # Tap back if overlay pops up
            d.press("back")
            time.sleep(2)
            
        except KeyboardInterrupt:
            print("\n[!] Stopped by user.")
            break
        except Exception as e:
            print(f"[-] Loop error: {e}")
            time.sleep(5)

if __name__ == "__main__":
    dev = connect_emulator()
    if dev:
        auto_claim_ads(dev)
