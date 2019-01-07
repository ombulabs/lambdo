require "./aws_support"

statement = <<EOS
  puts "howdy"
EOS

req_payload = { statement: statement }
payload = JSON.generate(req_payload)

resp = aws_client.invoke(
  function_name: 'irbLambda',
  invocation_type: 'RequestResponse',
  log_type: 'None',
  payload: payload
)

resp_payload = JSON.parse(resp.payload.string)

puts resp_payload
