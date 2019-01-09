This is a client project for AWS Lambda functions.

## Setup

You can quickly set me up like this:

    ./bin/setup

And add your AWS credentials in `~/.aws/credentials`:
```
[default]
aws_access_key_id = <Replace with your aws_access_key_id>
aws_secret_access_key = <Replace with your aws_secret_access_key>
```

## IRB

You can test `irbLambda` running this:

    ruby irb.rb
    {"statusCode"=>200, "return"=>nil, "stdout"=>"howdy\n"}

`irbLambda` runs the statement/s you send and it returns the `stdout` output
and the return value of the statement/s.

You can test different statements if you change the statement within `irb.rb`

## Bench

You can test `benchLambda` running this:

    ruby bench.rb
    ...
