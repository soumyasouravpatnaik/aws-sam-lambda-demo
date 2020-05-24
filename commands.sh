# Create a bucket
aws s3 mb s3://soumyas-sam-demo-bucket

# Cloudformation Package
aws cloudformation package --template-file template.yaml --s3-bucket soumyas-sam-demo-bucket --output-template-file output/template-generated.yaml

#sam package...
aws cloudformation deploy --template-file output/template-generated.yaml --stack-name hello-world-sam --capabilities CAPABILITY_IAM
