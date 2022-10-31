-- comando para iniciar postgres:
`sudo -u postgres psql`

`\l` -- Lista todas las bases de datos 

`\h` -- lista todos los comandos disponibles 

`\h command_name` -- Muestra como funciona el comando mencionado 

`\c dataBase_name` -- cambia a la base de datos deseada. 

`SELECT version();` -- Nos da la version utilizada en postgres. 

`\g` -- ejecuta el comando ejecutado previamente. 

`\timing` -- muestra el tiempo que tomo ejecutar los comandos 




SHOW config_file; -- ? Esto nos muestra donde estan los archivos de configuracion.

`cd more /etc/postgresql/12/main/` -- Es donde se pueden encontrar los archivos de configuracion.

`postgresql.conf` -- ! Este archivo de configuracion es muy importante antes de arrancar cualquier proyecto, con eso podemos ver la cantidad de parametros que se pueden modificar.

