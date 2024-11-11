#!/bin/sh

generator_jar=${OPENAI_GENERATOR_PATH:-}

# check whether 'openapi-generator-cli' is available
if command -v openapi-generator-cli &> /dev/null; then
    CMD=openapi-generator-cli
elif [ ! -z "${generator_jar}" ]; then
    CMD="java -Dcolor -jar $generator_jar"
else
    echo "openapi-generator-cli is not available!"
    echo "Please install it or set OPENAI_GENERATOR_PATH to the path of the openapi-generator-cli.jar file."
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
eval $CMD generate \
    -g r \
    --input-spec $api_spec \
    --output . \
    --package-name $pkg_name \
    --additional-properties=packageName=$pkg_name,packageVersion=$pkg_ver,exceptionPackage=rlang

# Hack to fix the auto-generated documentation so that checks pass
sed -i 's/\[\*\*AnyType\*\*\](AnyType\.md)/AnyType/g' docs/DefaultApi.md
sed -i 's/\\link{AnyType}/AnyType/g' R/default_api.R
sed -i 's#${module}.\${model}#module + "." + model#g' R/default_api.R

echo "Styling package..."
Rscript -e "styler::style_pkg(include_roxygen_examples = TRUE)"

echo "Documenting package..."
Rscript -e "devtools::document()"

echo
echo "NEXT STEPS:"
echo "Copy updated documentation to 'README.qmd' and run 'quarto render README.qmd'"
