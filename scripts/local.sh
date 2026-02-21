action="$1"
echo "executing script for $action"

case "$action" in
    "git")
        git fetch --all -p; git pull; git status;
        git merge origin/main;
        # git push;
        ;;
    "setup")
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash;
        nvm use;
        npm init docusaurus@latest docs classic;
        ;;
    *)
        echo "Not a valid command - $action"
        # Default action
        ;;
esac
