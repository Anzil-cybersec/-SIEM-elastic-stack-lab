#!/bin/bash

# Inform the user about the download
echo "Downloading Kali Linux..."

# Suggest how to download Kali Linux (if using ISO for manual install)
echo "If you want to install Kali manually, go to: https://www.kali.org/get-kali/#kali-iso"
echo "Download the appropriate ISO file for your system (64-bit recommended)."

# Provide download link for VM images (if using VirtualBox/VMware)
echo "Alternatively, if you want to download a pre-configured Kali VM for VirtualBox/VMware, go to:"
echo "https://www.kali.org/get-kali/#kali-virtual-machines"

echo "If you want to automate the download of the Kali VM for VirtualBox (this can take time depending on your internet speed), execute the following command:"
echo "wget https://images.kali.org/virtualbox/kali-linux-<version>-virtualbox-amd64.7z"
echo "Replace <version> with the correct version number (e.g., kali-linux-2023.3-virtualbox-amd64.7z)."

# Reminder to unzip after downloading
echo "After downloading, extract the .7z file using a tool like '7zip' (on Windows) or 'p7zip' (on Linux)."

echo "Download instructions complete!"
