#!/bin/sh
MODPATH=${0%/*}
PATH=$PATH:/data/adb/ap/bin:/data/adb/magisk:/data/adb/ksu/bin

# log
exec 2> $MODPATH/logs/utils.log
set -x

function check_frida_is_up() {
    [ ! -z "$1" ] && timeout="$1" || timeout=4
    counter=0

    while [ $counter -lt $timeout ]; do
        local result="$(busybox pgrep 'frida-server')"
        if [ $result -gt 0 ]; then
            echo "[-] Frida-server is running... 💉"
            string="description=Run frida-server on boot: ✅ (active)"
            break
        else
            echo "[-] Checking Frida-server status: $counter"
            counter=$((counter + 1))
        fi
        sleep 1.5
    done

    if [ $counter -ge $timeout ]; then
        string="description=Run frida-server on boot: ❌ (failed)"
    fi

    sed -i "s/^description=.*/$string/g" $MODPATH/module.prop
}

wait_for_boot() {
  while true; do
    local result="$(getprop sys.boot_completed)"
    if [ $? -ne 0 ]; then
      exit 1
    elif [ "$result" = "1" ]; then
      break
    fi
    sleep 3
  done
}

#EOF
