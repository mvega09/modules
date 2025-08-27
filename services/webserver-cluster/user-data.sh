#!/bin/bash
apt-get update -y
apt-get install -y apache2 php
systemctl enable apache2
systemctl start apache2

private_ip=$(hostname -I | awk '{print $1}')

cat <<EOF > /var/www/html/index.html
<h1>¡Hola desde Terraform y AWS!</h1>
<p>Instancia creada automáticamente con user_data.</p>
<p>IP privada de la instancia: $private_ip</p>
<p>Conectada a la base de datos en: ${db_address} </p>
<p>Puerto de la base de datos: ${db_port} </p>
EOF