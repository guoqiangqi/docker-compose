cd DX/test-bot
git pull origin master
docker build -t guoqiangqi/test-bot:$1 .
docker push guoqiangqi/test-bot:$1
if ["$2" == "init"]; then
  gcloud config set compute/zone asia-east1-c
  gcloud container clusters get-credentials cluster-1
  gcloud container clusters get-credentials cluster-1 --zone asia-east1-c --project dark-granite-329402
  #kubectl create clusterrolebinding cluster-admin-binding   --clusterrole cluster-admin   --user $(gcloud config get-value account)
  kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.44.0/deploy/static/provider/cloud/deploy.yaml
fi
kubectl apply -f google-k8s:
