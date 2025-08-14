helm upgrade \
  --install kubernetes-dashboard ./codekraton-kubernetes-dashboard \
  -f ./codekraton-kubernetes-dashboard/values.yaml \
  --namespace kubernetes-dashboard --create-namespace --wait
