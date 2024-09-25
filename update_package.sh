#!/bin/sh

GeneratorJar=${OPENAI_GENERATOR_PATH:-}

if [ -z "${GeneratorJar}" ]; then
    echo "OPENAI_GENERATOR_PATH is not set. Please set it to the path of the openapi-generator-cli.jar file."
    exit 1
fi

spec=https://us-west-2.api.lamin.ai/openapi.json
pkgname=laminr.api
pkgver=$(curl $spec | jq -r .info.version)

echo "Generating R client package using OpenAI Generator..."
java -Dcolor -jar $GeneratorJar generate \
    -g r \
    --input-spec $spec \
    --output . \
    --package-name $pkgname \
    --additional-properties=packageName=$pkgname,exceptionPackage=rlang,packageVersion=$pkgver

echo "Documenting package..."
Rscript -e "devtools::document()"
# Hack to fix the auto-generated documentation so that checks pass
sed -i 's/\\link{AnyType}/AnyType/g' man/DefaultApi.Rd

echo
echo "NEXT STEPS:"
echo "Copy updated documentation to 'README.qmd' and run 'quarto render README.qmd'"
