
# ? Para crear un enviroment con anaconda debemos usar: 

`conda create -n <nombre_env> python=3.5 pandas` # * python=3.5, indica la version de python que se instalara; pandas, instala automaticamente la version mas actualizada de pandas


# ? Para listar y ver el enviroment en uso debemos usar: 

`conda env list`


# ? Activar el enviroment deseado: 

`conda activate <nombre_env>`


# ? Desactivar el enviroment: 

`conda deactivate`


# ? Ver los paquetes actuales instalados: 

`conda list`
`conda list <nombre_paquete>` # Muestra la version y detalles del paquete llamado


# ? Actulizar la libreria o paquete: 

`conda update <nombre_paquete>` # Actualiza a la version mas reciente del paquete llamado.


# ? Instalar la version deseada de un paquete: 

`conda install <nombre_paquete=1.1 >`  # Se puede seleccionar una version anterior, o bien una version futura del paquete


# ? Clonar las caracteristicas de un ambiente en otro: 

`conda create --name <nuevo_nombre> --copy --clone <ambiente_original>`  # e.g: conda create --name ambiente_prueba --copy --clone base_env


# ? Eliminar ambientes de conda

`conda env remove --name <nombre_ambiente>`


# ? Eliminar librerias: 

`conda remove <nombre_libreria>` # conda remove pandas


# ? Instalar un paquete especificando el canal: 

`conda install --channel nombre_canal nombre_paquete` # conda install --channel conda-forge bolton


# ? revisiones de ambientes: 

`conda list --revision`  # muestra las librerias recientemente instaladas 

`conda install --revision 0`  # todo: Podemos usar la revision "0" o la que deseemos. Toda libreria despues de esa revision sera desinstalada. 







# * ambientes virtuales con python: 

`python3 -m venv nombre_ambiente`


# * activar el ambiente: 

`source nombre_ambiente/bin/activate`


# * Desactivar el ambiente: 

`deactivate`


# * ver las librerias instaladas: 

`pip freeze` 
