resource "aws_iam_group_policy" "eng_group_policy" {
  name  = var.group_policy_name
  group = aws_iam_group.eng.id

  policy = <<EOF
{
	"Version": "2012-10-17",
	"Statement": [
		{
			"Effect": "Allow",
			"Action": [
				"account:*",
				"backup:*",
				"autoscaling-plans:*",
				"billing:*",
				"billingconductor:*",
				"aws-portal:*",
				"bcm-data-exports:*",
				"budgets:*",
				"cloudwatch:*",
				"applicationinsights:*",
				"evidently:*",
				"logs:*",
				"rum:*",
				"synthetics:*",
				"workspaces:*",
				"signin:*",
				"servicequotas:*",
				"vpc-lattice:*",
				"vpc-lattice-svcs:*",
				"ec2:*",
				"autoscaling:*",
				"imagebuilder:*",
				"ec2-instance-connect:*",
				"ec2messages:*",
				"cur:*",
				"compute-optimizer:*",
				"eks:*",
				"eks-auth:*",
				"elasticloadbalancing:*",
				"iam:*",
				"rds-db:*",
				"rds:*",
				"rds-data:*",
				"ssm:*",
				"notifications:*",
				"resource-explorer:*",
				"signer:*",
				"ebs:*",
				"ecr:*",
				"ecr-public:*",
				"freetier:*",
				"payments:*",
				"ssm:*",
				"access-analyzer:*",
				"organizations:*",
				"ce:*",
				"consolidatedbilling:*",
				"cur:*",
				"pricing:*",
				"aws-portal:ViewBilling",
				"aws-portal:ModifyBilling",
				"billing:*",
				"internetmonitor:*",
				"kms:*",
				"s3:*",
				"acm:*",
				"acm-pca:*",
				"tag:*"
			],
			"Resource": "*"
		}
	]
}
EOF
}