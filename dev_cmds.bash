alias mage="docker-compose exec magento mage"

function dsh {
  if [ -z $1 ]; then
    echo "provide the service name
    ex: dsh mage_nginx"
  else
    docker-compose exec $1 /bin/sh
  fi
}