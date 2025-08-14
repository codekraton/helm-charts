helm upgrade \
  --install kubernetes-dashboard ./codekraton-kubernetes-dashboard \
  -f ./codekraton-kubernetes-dashboard/values.yaml \
  --namespace kubernetes-dashboard --create-namespace \
  --set certificateKey="$(cat ./codekraton-kubernetes-dashboard/certs/dashboard.key)" \
  --set certificate="$(cat ./codekraton-kubernetes-dashboard/certs/dashboard.crt)" --wait
