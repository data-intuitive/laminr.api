#!/bin/sh

generator_jar=${OPENAI_GENERATOR_PATH:-}

if [ -z "${generator_jar}" ]; then
    echo "OPENAI_GENERATOR_PATH is not set. Please set it to the path of the openapi-generator-cli.jar file."
    exit 1
fi

api_spec=https://us-west-2.api.lamin.ai/openapi.json
pkg_name=laminr.api
pkg_ver=$(curl $api_spec | jq -r '.info.version')

echo "Generating R client package using OpenAI Generator..."
echo "Generator JAR: $generator_jar"
echo "API Spec: $api_spec"
echo "Package Name: $pkg_name"
echo "Package Version: $pkg_ver"
java -Dcolor -jar $generator_jar generate \
    -g r \
    --input-spec $api_spec \
    --output . \
    --package-name $pkg_name \
    --additional-properties=packageName=$pkg_name,packageVersion=$pkg_ver,exceptionPackage=rlang

echo "Documenting package..."
Rscript -e "devtools::document()"
# Hack to fix the auto-generated documentation so that checks pass
sed -i 's/\\link{AnyType}/AnyType/g' man/DefaultApi.Rd

echo
echo "NEXT STEPS:"
echo "Copy updated documentation to 'README.qmd' and run 'quarto render README.qmd'"
