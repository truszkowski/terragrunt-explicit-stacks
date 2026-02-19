
unit "s3" {
  source = "../../units/s3"
  path   = "s3"
  values = {
    region = "us-west-1"
  }
}

unit "sqs" {
  source = "../../units/sqs"
  path   = "sqs"
  values = {
    region = "us-west-1"
  }
}

unit "app" {
    source = "../../units/app"
    path = "app"
    values = {
        region = "us-west-1"
        s3 = "../s3"
        sqs = "../sqs"
    }
}