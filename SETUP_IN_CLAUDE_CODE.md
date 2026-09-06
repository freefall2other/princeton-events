# Push to GitHub from Claude Code

Unzip this archive into a folder, open it in Claude Code, and tell it:

> Initialise a git repo here, commit everything, create the public GitHub repo
> freefall2other/princeton-events (or use it if it already exists), push to main,
> and enable GitHub Pages from the main branch root.

Or run it yourself:

    git init -b main
    git add .
    git commit -m "Link-check page and source catalog"
    gh repo create princeton-events --public --source=. --push
    gh api -X POST repos/freefall2other/princeton-events/pages -f 'source[branch]=main' -f 'source[path]=/'

Then open https://freefall2other.github.io/princeton-events/
