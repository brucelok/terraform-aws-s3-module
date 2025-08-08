run "s3_bucket_test" {
  command = apply

  variables {
    bucket_name = "my-test-bucket-titus"
  }

  assert {
    condition     = startswith(output.bucket_arn, "arn:aws:s3:::my-test-bucket-")
    error_message = "S3 bucket ARN did not match expected format"
  }
}
