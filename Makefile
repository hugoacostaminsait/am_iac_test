# Makefile para el test de AWS CloudFormation

# Variables
STACK_NAME=amv1
TEMPLATE_FILE=template.yml
AWS_REGION=us-east-1
TEMPLATE_PATH=C:/Users/jjimenezz/Documents/GitHub/am_iac_test/template.yaml
AWS_EXECUTABLE=C:/path/to/aws-cli/aws

# Reglas
deploy:
	@echo "Deploying CloudFormation stack..."
	$(AWS_EXECUTABLE) cloudformation deploy \
	    --stack-name $(STACK_NAME) \
	    --template-file $(TEMPLATE_FILE) \
	    --region $(AWS_REGION)

test: deploy
	@echo "Running CloudFormation tests..."

validate:  ## Validate CloudFormation template
	$(AWS_EXECUTABLE) cloudformation validate-template --template-body file://$(TEMPLATE_PATH)

teardown:
	@echo "Deleting CloudFormation stack..."
	$(AWS_EXECUTABLE) cloudformation delete-stack \
	    --stack-name $(STACK_NAME) \
	    --region $(AWS_REGION)

.PHONY: deploy test validate teardown
