resource "aws_iam_role" "management-role" {
  name               = "management-role"
  assume_role_policy = jsonencode({
    Version   = "2012-10-17",
    Statement = [{
      Effect    = "Allow",
      Principal = {
        Service = "ec2.amazonaws.com"
      },
      Action    = "sts:AssumeRole"
    },
    {
      Effect    = "Allow",
      Principal = {
        Service = "ecs.amazonaws.com"
      },
      Action    = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "ecr_policy_attachment" {
  role       = aws_iam_role.management-role.name
  policy_arn = aws_iam_policy.ecs_policy.arn
}
