data "aws_iam_policy_document" "ecs_policy" {
  statement {
    actions = [
      "ecr:GetAuthorizationToken",
      "ecr:BatchCheckLayerAvailability",
      "ecr:GetDownloadUrlForLayer",
      "ecr:GetRepositoryPolicy",
      "ecr:DescribeRepositories",
      "ecr:ListImages",
      "ecr:DescribeImages",
      "ecr:BatchGetImage"
    ]

    resources = ["*"]
  }
}

resource "aws_iam_policy" "ecs_policy" {
  name        = "ecs-policy"
  description = "Policy for ECS to access ECR"

  policy = data.aws_iam_policy_document.ecs_policy.json
}

