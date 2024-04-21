resource "aws_iam_policy" "ecs_vpc_ec2_policy" {
  name        = "ecs-vpc-ec2-policy"
  description = "Policy for managing ECS, VPC, and EC2 resources"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow",
        Action    = [
          "ecs:*",
          "ec2:*",
          "iam:PassRole",
          "logs:*",
          "vpc:*"
        ],
        Resource  = "*"
      },
      {
        Effect    = "Allow",
        Action    = "autoscaling:*",
        Resource  = "*"
      }
    ]
  })
}
