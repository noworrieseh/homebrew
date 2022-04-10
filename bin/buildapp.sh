#!/bin/sh

NAME=$1
APP=$2

cat << EOF > "${NAME}"
#!/bin/sh
open -a "${APP}"
EOF
chmod +x "${NAME}"

