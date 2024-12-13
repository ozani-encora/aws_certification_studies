aws s3 sync ./templates/ s3://ozani-aws-certification-project
aws cloudformation deploy --template-file './templates/main-stack.yml' --stack-name 'AWS-Certification-Stack' --role-arn 'arn:aws:iam::241533131033:role/CloudformationServiceRole' --parameter-overrides TemplatesBucketBaseURL=https://ozani-aws-certification-project.s3.us-east-1.amazonaws.com
