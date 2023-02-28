
# ? Asi se activa el adaptador de Red en fedora: 

# Ver el estado del servicio de red: 

sudo systemctl status NetworkManager.service

# Habilitar el servicio de red: 

sudo systemctl start NetworkManager.service
sudo systemctl enable NetworkManager.service

# Reiniciar el servicio de red: 

sudo systemctl restart NetworkManager.service


# ? Ver los adaptadores disponibles: 

sudo ip addr show

# En la terminal escribir el comando: 

sudo ip link set NOMBRE_INTERFACE up
sudo systemctl restart NetworkManager

# Ver el estatus de los adaptadores: 

sudo ip addr show 


# ? ahora la maquina fedora deberia tener una IpV4 y ser capaz de hacer ping a otras maquinas.
