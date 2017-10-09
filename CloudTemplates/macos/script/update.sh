#!/bin/bash -eux

echo "==> Disable automatic update check"
defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticCheckEnabled -bool FALSE

if [[ -z ${http_proxy} ]] ; then
	echo "No proxy exists..."
else
	echo "Proxy is ${http_proxy}"
    export HTTP_PROXY=http://${http_proxy}
	export HTTPS_PROXY=http://${https_proxy}
fi

if [[ "$UPDATE" =~ ^(true|yes|on|1|TRUE|YES|ON])$ ]]; then

    echo "==> Running software update"
    softwareupdate --install --all --verbose &
    wait $!  # Wait for the softwareupdate process (last backgrounded command) to finish...

    echo "==> Rebooting the machine"
    reboot

fi

exit 0
