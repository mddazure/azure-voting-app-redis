$KUBE_CLUSTER_NAME="DemoAKS-2-avset"
$AZURE_RESOURCE_GROUP="DemoAKS-RG"
$AZURE_REGION="westeurope"
$AZURE_NODE_MAX_PODS=20
$AZURE_NODE_SIZE="Standard_D2s_v3"
$AZURE_NODE_COUNT=3
$AZURE_VNET_SUBNET_ID="/subscriptions/0245be41-c89b-4b46-a3cc-a705c90cd1e8/resourceGroups/DemoAKS-RG/providers/Microsoft.Network/virtualNetworks/Demo-AKS-2/subnets/BEsubnet"
$AZURE_SERVICE_PRINCIPAL_USERNAME="ca8fc988-c847-4aca-868b-8a9d75915188"
$AZURE_SERVICE_PRINCIPAL_PASSWORD="/sFX_L3A[PDHMgEh5gtoDy]WdF71i=x@"

az aks create --name $KUBE_CLUSTER_NAME --resource-group $AZURE_RESOURCE_GROUP --location $AZURE_REGION --max-pods $AZURE_NODE_MAX_PODS --node-vm-size $AZURE_NODE_SIZE --node-count $AZURE_NODE_COUNT --network-plugin kubenet --vnet-subnet-id $AZURE_VNET_SUBNET_ID --docker-bridge-address 10.2.0.1/16 --dns-service-ip 10.17.0.10 --service-cidr 10.17.0.0/16 --pod-cidr 10.16.0.0/16 --service-principal $AZURE_SERVICE_PRINCIPAL_USERNAME --client-secret $AZURE_SERVICE_PRINCIPAL_PASSWORD --disable-rbac --load-balancer-sku standard --vm-set-type AvailabilitySet
