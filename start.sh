kubectl apply -f mongo-secret.yaml
kubectl create secret generic frontend-secret --from-env-file=.env.frontend
kubectl create secret generic backend-secret --from-env-file=.env.backend

kubectl apply -f mongo.yaml
kubectl apply -f frontend.yaml
kubectl apply -f backend.yaml
