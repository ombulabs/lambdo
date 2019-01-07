require "aws-sdk-lambda"
require "byebug"

def aws_client
  Aws::Lambda::Client.new(region: 'us-east-1')
end
