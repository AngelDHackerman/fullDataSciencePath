-- ? comandos PSQL para trabajar en la consola de postgres:

`sudo -u postgres psql`

`\l` -- Lista todas las bases de datos 

`\h` -- lista todos los comandos disponibles 

`\h command_name` -- Muestra como funciona el comando mencionado 

`\c dataBase_name` -- cambia a la base de datos deseada. 

`SELECT version();` -- Nos da la version utilizada en postgres. 

`\g` -- ejecuta el comando ejecutado previamente. 

`\timing` -- muestra el tiempo que tomo ejecutar los comandos 

`\dt` -- Listar las tablas de la base de datos

`\d` -- <nombre_tabla> Describir una tabla

`\dn` -- Listar los esquemas de la base de datos actual

`\df` -- Listar las funciones disponibles de la base de datos actual

`\dv` -- Listar las vistas de la base de datos actual

`\du` -- Listar los usuarios y sus roles de la base de datos actual





SHOW config_file; -- ? Esto nos muestra donde estan los archivos de configuracion.

`cd more /etc/postgresql/12/main/` -- Es donde se pueden encontrar los archivos de configuracion.

`postgresql.conf` -- ! Este archivo de configuracion es muy importante antes de arrancar cualquier proyecto, con eso podemos ver la cantidad de parametros que se pueden modificar.
`pg_hba.conf` -- ! Este archivo configura las entradas de usuarios linux, y que permisos tienen en la base de datos.

