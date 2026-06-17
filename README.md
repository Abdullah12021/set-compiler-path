---

# set-compiler-path

A lightweight PowerShell script designed for university students and developers to automate setting up the C++ compiler environment path.

## Why This Exists
In university computer labs, **Code::Blocks** is often installed by default, but its internal compiler (`MinGW`) is rarely added to the Windows environment `Path`. Because of this, you cannot use the compiler outside of Code::Blocks (such as compiling directly from the Windows Terminal, PowerShell, or VS Code). 

This script fixes that problem instantly by finding the default Code::Blocks installation path and permanently adding it to your **User Level Path**—no administrator/system rights required.

---

## How to Use It

### Step 1: Open PowerShell
Press the **Windows Key**, type **PowerShell**, and open it.

### Step 2: Unblock Script Execution
Windows blocks downloaded scripts by default. To temporarily bypass this security check for your current session, copy and paste this command and press **Enter**:
```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

```

### Step 3: Run the Script

Navigate to the folder where you downloaded the script (usually `Downloads`) and run it:

```powershell
cd ~\Downloads
.\add_path.ps1

```

### Step 4: Verify Installation

**Close your current PowerShell window** and open a brand new one to apply the changes. Test the compiler by typing:

```powershell
g++ --version

```

If you see version details, your compiler is ready to use from any terminal!
