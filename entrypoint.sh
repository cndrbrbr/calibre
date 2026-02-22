#!/bin/bash
set -e

echo "Fixing permissions..."

# Falls abc nicht existiert → abbrechen
if ! id abc &>/dev/null; then
  echo "User abc does not exist!"
  exit 1
fi

# Ordnerliste
DIRS=(
  /books
  /config
)
echo "Setting ownership on /books and /config"
chown -R abc:abc /books
chmod -R u+rwX /books
chown -R abc:abc /config
chmod -R u+rwX /config




echo "Permissions fixed."

# Original LinuxServer init starten
exec /init
