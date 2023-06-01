resource "kubernetes_service_account" "service-account" {
  metadata {
    name = "aws-load-balancer-controller"
    namespace = "kube-system"
    labels = {
        "app.kubernetes.io/name"= "aws-load-balancer-controller"
        "app.kubernetes.io/component"= "controller"
    }
    annotations = {
      "eks.amazonaws.com/role-arn" = aws_iam_role.aws_load_balancer_controller_role.arn
      "eks.amazonaws.com/sts-regional-endpoints" = "true"
        "automountServiceAccountToken" = true
    }
  }
  depends_on = [ aws_eks_cluster.finalproject-eks,
 aws_iam_role.aws_load_balancer_controller_role ]
}