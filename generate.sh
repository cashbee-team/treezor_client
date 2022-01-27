#!/usr/bin/env bash

docker run --rm -it -v $(pwd):/swagger-api/out \
	-v $(pwd):/swagger-api/yaml \
	public.ecr.aws/l8y7v9n3/swagger-codegen-cli:2.4.19 generate \
	-i /swagger-api/yaml/treezor_api_spec.yaml \
	-c /swagger-api/yaml/config.json \
	-l ruby \
	-o /swagger-api/out

