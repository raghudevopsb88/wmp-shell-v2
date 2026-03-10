app_prereq() {
  id appuser &>/dev/null
  if [ $? -ne 0 ]; then
    useradd -r -s /bin/false appuser
  fi
  mkdir -p /app
  curl -L -o /tmp/${service_name}.tar.gz https://raw.githubusercontent.com/raghudevopsb88/wealth-project/main/artifacts/${service_name}.tar.gz
  cd /app
  tar xzf /tmp/${service_name}.tar.gz
}

YC="\e[33m"
NC="\e[0m"
OUTPUT=/tmp/wmp.log
rm -f $OUTPUT

