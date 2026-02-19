# catalog/units/app/terragrunt.hcl
dependency "s3" {
    config_path = values.s3
    mock_outputs = {
        bucket_name = "mock-s3-output"
    }
}

dependency "sqs" {
    config_path = values.sqs
    mock_outputs = {
        queue_name = "mock-sqs-output"
    }
}

inputs = {
    region = values.region
    bucket_name = dependency.s3.outputs.bucket_name
    queue_name = dependency.sqs.outputs.queue_name
}
