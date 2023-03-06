gcloud asset search-all-resources \
  --scope=organizations/<google organization number>
  --asset-types=compute.googleapis.com.Instance,cloudfunctions.googleapis.com.Function,appengine.googleapis.com.Application,\
run.googleapis.com.Service,container.googleapis.com.Cluster,sqladmin.googleapis.com.Instance,spanner.googleapis.com.Instance,\
bigtableadmin.googleapis.com.Instance,redis.googleapis.com.Instance,storage.googleapis.com.Bucket\
  --read-mask="name" \
  --format=json | jq '. | length'

# Si desean recibir el resultado en formato csv pueden agregar  >> resources_list.csv en la penúltima línea 
# También es necesario agregar el nombre de la organización si no tienen todos los proyectos en una sola carpeta o folder, para esto pueden cambiar el scope para representar las carpetas/folders --scope=folders/1234567
# Si quieren ver la lista de los recursos de la nube pueden eliminar la porción con jq y asi veran resultados en formato json. La porción jq '. | length' dará la cantidad de objetos encontrados.
