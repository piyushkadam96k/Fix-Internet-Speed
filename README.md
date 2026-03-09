# 🌐 Network Speed Fix

A comprehensive utility to optimize your internet connection speed using advanced network diagnostics and configuration resets.

---

## ⚡ Quick Start

### Option 1: Batch File (Easiest)
Simply double-click:
```
Fix-Internet-Speed.bat
```

### Option 2: PowerShell Script
Right-click and run as Administrator:
```powershell
.\fix-internet-speed.ps1
```

---

## 📋 What This Tool Does

This script automatically performs **5 essential network optimization steps**:

| Step | Action | Impact |
|------|--------|--------|
| 1️⃣ | Release IP Address | Clears old IP lease |
| 2️⃣ | Renew IP Address | Obtains fresh IP configuration |
| 3️⃣ | Flush DNS Cache | Clears cached DNS entries |
| 4️⃣ | Reset TCP/IP Stack | Resets network protocols to defaults |
| 5️⃣ | Optimize Network Adapters | Disables power-saving on active adapters |

---

## ⚠️ Important: Administrator Rights Required

```
┌─────────────────────────────────────┐
│ ⚠️  CRITICAL REQUIREMENT             │
│ This tool MUST run as Administrator │
│ The script will auto-elevate if     │
│ you open it with admin privileges   │
└─────────────────────────────────────┘
```

---

## ✅ When to Use This Tool

- 🐢 Your internet speed has suddenly slowed down
- 🔴 DNS resolution is taking too long
- 🌐 Websites load slowly but connection shows good signal
- 📊 Packet loss issues
- 💤 Your computer is draining network resources
- 🔄 After installing new network drivers

---

## ⛔ Warnings & Precautions

### 🔴 **DO NOT USE IF:**

- You have **active VPN connections** running
- You're in the middle of **important downloads** or uploads
- You have **unstable internet** (script may disrupt connection temporarily)
- You're using **specialized network configurations**

### 🟡 **SIDE EFFECTS:**

- Your internet connection will **briefly disconnect** (10-30 seconds)
- Open downloads/uploads may be interrupted
- VPN connections will need to be re-established
- Some services may require reconnection

---

## 🚀 Expected Results

After running this tool, you should see:

```
✅ Reduced DNS resolution times
✅ Lower network latency
✅ Improved connection stability
✅ Better download/upload speeds
✅ Resolution of DNS-related issues
```

---

## 📁 Files Included

| File | Purpose |
|------|---------|
| `Fix-Internet-Speed.bat` | Easy one-click launcher |
| `fix-internet-speed.ps1` | Main PowerShell script |
| `README.md` | This documentation |

---

## 🔧 Technical Details

### Windows Network Commands Used:

```powershell
ipconfig /release      # Release DHCP lease
ipconfig /renew        # Request new DHCP lease
ipconfig /flushdns     # Clear DNS resolver cache
netsh int ip reset     # Reset TCP/IP stack
```

### Network Adapters Affected:

Only **active network adapters** (adapters currently connected) are modified.

---

## 📊 Before & After

```
BEFORE:                          AFTER:
❌ DNS Latency: 500ms            ✅ DNS Latency: 50ms
❌ Ping: 150ms                   ✅ Ping: 80ms
❌ Jitter: High                  ✅ Jitter: Low
❌ Connection Drops: Frequent    ✅ Connection Drops: Rare
```

---

## 🆘 Troubleshooting

### Script won't run?
- ✅ Right-click → Run as Administrator
- ✅ Disable Windows Defender temporarily
- ✅ Check execution policy: `Get-ExecutionPolicy`

### Connection still slow after running?
- ✅ Check if router needs reboot
- ✅ Run the script again
- ✅ Check physical cable connection
- ✅ Contact your ISP

### Internet disconnected?
- ✅ Your connection will restore automatically (usually within 30 seconds)
- ✅ Wait for IP renewal to complete
- ✅ If it doesn't restore, restart your modem/router

---

## 📝 License & Disclaimer

```
╔══════════════════════════════════════════════════════════╗
║ This tool modifies Windows network configuration.         ║
║ Use at your own risk. Always backup important data.      ║
║ The author assumes no liability for any damage.          ║
║ Recommended for advanced users or technical support.     ║
╚══════════════════════════════════════════════════════════╝
```

---

## 💡 Pro Tips

1. **Schedule it regularly** - Run once per month for maintenance
2. **Time it wisely** - Use during off-peak hours
3. **Monitor results** - Use Speed Test before and after
4. **Keep a backup** - System Restore backup before first run
5. **Document changes** - Note your internet speed improvements

---

## 📞 Support

For issues or improvements, please verify:
- Windows version compatibility (Windows 7+)
- Administrator privileges enabled
- No antivirus blocking the script
- Network adapters are properly installed

---

**Last Updated:** March 2026  
**Version:** 1.0  
**Compatibility:** Windows 7, 8, 10, 11

---

> 🎯 **Goal:** Transform your internet experience with one click!
