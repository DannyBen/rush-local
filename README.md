Rush - Linux Workstation Bootstrapper
==================================================

```
_______                       ______  
____  /  ___________  ___________  /_ 
___  /   __  ___/  / / /_  ___/_  __ \
__  /    _  /   / /_/ /_(__  )_  / / /
_  /     /_/    \__,_/ /____/ /_/ /_/ 
/_/      Linux Workstation Bootstrapper
```


This is a local version of [Rush][1]. It works by running scripts from a local
folder rather than from a GitHub repository.


Install
--------------------------------------------------

    $ bash <(curl -s https://raw.githubusercontent.com/DannyBen/rush-command/master/setup)

Or, manually place the [rush](rush) script anywhere in your `PATH`.


Usage
--------------------------------------------------

Step 1: Create a rush repo. You can start with teh sample [repo](/repo) folder.

Step 2: Set `RUSH_PATH` to point to the repo path.

    $ export RUSH_PATH=./repo

Step 3: Execute a package:

    $ rush hello


Building your own Rush repository
--------------------------------------------------

You can download the [example repo folder](/repo), as a baseline rush repo.

Keep this points in mind:

1. Each folder you create in this repository is considered a package.
2. Each package needs to have a bash script named `main`, and optionally
   a plain text file called `info`.
4. In the `main` script, you have access to the `$SELF` environment variable
   which contains the path of the package (== `$RUSH_PATH/$PACK`)



[1]: https://github.com/dannyben/rush-command
