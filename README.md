# Google-Removal-ADB
A bash script that use ADB to uninstall/remove non-essential/bloat oogle packages.
Apps like google office , wellbeing, family tracking, fitness will be removed.


# Usage
1. Download the branch zip file.
2. Extract the downloaded zip file.
3. Open terminal in the new directory.
4. Run the following code in the terminal
''''md
./google-removal.sh

''''

5. The script will complete itself and also complete post clean-up.

# Precaution
Read and edit the script file before hand to prevent removal of important packages. 
In case of accidental removal of an  important package, do:

''''md
adb shell cmd package install-existing <package_name>
