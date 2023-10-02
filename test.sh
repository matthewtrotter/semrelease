COMMIT_MESSAGE="3.151.513-dev.234 as f23"
# COMMIT_MESSAGE=$(git log -1 --pretty=%B)
echo "Commit message: $COMMIT_MESSAGE"
# Exit if commit message starts with the word "merge" or "Merge" or starts with a version number like 3.0.25 or 3.0.25-dev.1 possibly with a carriage return at the end
if [[ $COMMIT_MESSAGE =~ ^[Mm]erge ]]; then
    echo "Commit message starts with the word 'merge'. Exiting job."
    # Exit the entire job
    exit 20
fi
if [[ $COMMIT_MESSAGE =~ ^[0-9]+\.[0-9]+\.[0-9]+(\n|.)*$ ]]; then
    echo "Commit message is a version number. Exiting job."
    exit 21
fi
if [[ $COMMIT_MESSAGE =~ ^[0-9]+\.[0-9]+\.[0-9]+-dev\.[0-9]+(\n|.)*$ ]]; then
    echo "Commit message is a dev version number. Exiting job."
    exit 22
fi
