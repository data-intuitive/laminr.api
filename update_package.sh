#!/bin/sh

GeneratorJar=${OPENAI_GENERATOR_PATH:-}

if [ -z "${GeneratorJar}" ]; then
    echo "OPENAI_GENERATOR_PATH is not set. Please set it to the path of the openapi-generator-cli.jar file."
    exit 1
fi

echo "Generating R client package using OpenAI Generator..."
java -Dcolor -jar $GeneratorJar generate \
    -g r \
    --input-spec https://us-west-2.api.lamin.ai/openapi.json \
    --output . \
    --package-name laminr.api \
    --additional-properties=packageName=laminr.api,exceptionPackage=rlang \

echo "Documenting package..."
R -e "devtools::document()"
