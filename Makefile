# Makefile para el test de AWS CloudFormation

# Variables
STACK_NAME= amv1
TEMPLATE_FILE=cloudformation-template.yml
AWS_REGION=us-east-1

# Reglas
deploy:
    @echo "Deploying CloudFormation stack..."
    aws cloudformation deploy \
        --stack-name $(STACK_NAME) \
        --template-file $(TEMPLATE_FILE) \
        --region $(AWS_REGION)

test: deploy
    @echo "Running CloudFormation tests..."

teardown:
    @echo "Deleting CloudFormation stack..."
    aws cloudformation delete-stack \
        --stack-name $(STACK_NAME) \
        --region $(AWS_REGION)

.PHONY: deploy test teardown
