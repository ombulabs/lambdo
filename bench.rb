require "./aws_support"

a_version = <<EOS
  str = "aBc"
  str.downcase == 'abc'
EOS

b_version = <<EOS
  str = "aBc"
  'abc'.casecmp(str).zero?
EOS

req_payload = { a: a_version, b: b_version }
payload = JSON.generate(req_payload)

resp = aws_client.invoke(
  function_name: 'benchLambda',
  invocation_type: 'RequestResponse',
  log_type: 'None',
  payload: payload
)

resp_payload = JSON.parse(resp.payload.string)

puts resp_payload
