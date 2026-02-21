action="$1"
echo "executing script for $action"

case "$action" in
    "git")
        git fetch --all -p; git pull; git status;
        git merge origin/main;
        # git push;
        ;;
    "install_nvm")
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
        ;;
    *)
        echo "Not a valid command - $action"
        # Default action
        ;;
esac
