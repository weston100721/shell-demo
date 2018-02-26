#!/bin/bash

usage() {
cat << EOF
Usage: $0 [options]
options:
    gencsv    Generate CSV, schema, datamapper
    import    Import CSV to CocoDB
EOF
exit 1
}

usage