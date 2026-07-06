# 03. Rancher Prime のインストール

## 前提

- Rancher Desktop の Kubernetes を有効化
- Kubernetes v1.35 系を利用
- cert-manager を先に導入

## cert-manager

```bash
helm repo add jetstack https://charts.jetstack.io
helm repo update

helm install cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --set crds.enabled=true
```

## Rancher Prime

```bash
helm repo add rancher-prime https://charts.rancher.com/server-charts/prime
helm repo update

helm install rancher rancher-prime/rancher \
  --namespace cattle-system \
  --create-namespace \
  --set hostname=rancher.localhost \
  --set bootstrapPassword=admin \
  --set replicas=1 \
  --set registration.enabled=true
```

## 確認

```bash
kubectl -n cattle-system get pods
```

`rancher` Pod が `1/1 Running` になればOKです。
