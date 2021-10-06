#!/bin/bash
# userslistinthesystem.sh

# count and Lists existing “real” users in the system.

echo
echo "[*] Existing users (sorted alphabetically):"
echo
grep /bin/bash /etc/passwd | grep -v ‘root’ | cut -f1 -d ':' | sort
echo

echo "[*] Number of real users found:"
grep /bin/bash /etc/passwd | grep -v ‘root’ | wc -l
echo
