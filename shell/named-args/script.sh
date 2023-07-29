#!/bin/bash

# Function to display usage instructions
function display_usage {
    echo ""
    echo "Usage: $0 -client-name <arg1> -db-username <arg2> -db-pass <arg3> -image <arg4> -addons-path <arg5> -admin-pass <arg6>"
    echo "Required named arguments:"
    echo "  -client-name <value1> : Client name which will be used as prefix."
    echo "  -db-username <value2> : DB username that will attached to the container."
    echo "  -db-pass <value3> : DB password that will attached to the container."
    echo "  -image <value1> : Image name of the container."
    echo "  -addons-path <value2> : Addon paths."
    echo "  -admin-pass <value3> : Admin password for container."
    echo ""
    echo "Sample:"
    echo "./script.sh -client-name client101  -db-username client101-db-username  -db-pass client101-db-pass  -image postgres:15  -addons-path \\/opt\\/demo  -admin-pass client101-admin-pass"
}

# Initialize variables to store argument values
client_name=""
db_name=""
db_pass=""
image=""
addons_path=""
admin_pass=""

# Loop through the arguments and their values
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        -client-name)
            client_name="$2"
            shift # shift past the argument key
            ;;
        -db-username)
            db_name="$2"
            shift
            ;;
        -db-pass)
            db_pass="$2"
            shift
            ;;
        -image)
            image="$2"
            shift
            ;;
        -addons-path)
            addons_path="$2"
            shift
            ;;
        -admin-pass)
            admin_pass="$2"
            shift
            ;;
        *)
            # Unknown argument
            echo "Unknown argument: $key"
            display_usage
            exit 1
            ;;
    esac
    shift # shift past the argument value
done

# Check if all required arguments are provided
if [[ -z "$client_name" || -z "$db_name" || -z "$db_pass" || -z "$image" || -z "$addons_path" || -z "$admin_pass" ]]; then
    echo "Error: Missing arguments."
    display_usage
    exit 1
fi

# Your script logic using the arguments goes here
# For example, you can echo the arguments:
echo ""
echo "client_name: $client_name"
echo "db_name: $db_name"
echo "db_pass: $db_pass"
echo "image: $image"
echo "addons_path: $addons_path"
echo "admin_pass: $admin_pass"


