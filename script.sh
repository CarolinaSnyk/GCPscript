gcloud asset search-all-resources \
  --scope=organizations/<google organization number>
  --asset-types=compute.googleapis.com.Instance,cloudfunctions.googleapis.com.Function,appengine.googleapis.com.Application,\
run.googleapis.com.Service,container.googleapis.com.Cluster,sqladmin.googleapis.com.Instance,spanner.googleapis.com.Instance,\
bigtableadmin.googleapis.com.Instance,redis.googleapis.com.Instance,storage.googleapis.com.Bucket\
  --read-mask="name"
