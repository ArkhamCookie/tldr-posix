#!/bin/sh
# https://github.com/tldr-pages/tldr/blob/main/contributing-guides/git-terminal.md

[ ! "$(command -v git)" ] && printf "Error: git not installed.\n"

base_repo='tldr-pages/tldr'
fork=false

error() {
	printf "Error %s" "$1"
}

## Fork Repo (requires gh-cli)
if [ "$(command -v gh)" ] && [ "$fork" ]; then
	gh "$base_repo" fork --default-branch-only --clone=false
fi

# git user (if not set with args)
if [ -z "$git_username" ] && [ "$(git config user.name)" ]; then
	git_username="$(git config user.name)"
else
	git_username='tldr-pages' # Couldn't get git username
fi

curl -L -H 'Accept: application/vnd.github+json' https://api.github.com/repos/"$git_username"/tldr # Confirm repo exists (for when trying to clone your own fork)

## Clone Repo
# if [ -n "$git_username" ]; then
# 	printf "foo\n"
# elif [ "$(git config user.name)" ]; then
# 	git clone "$(git config user.name)"/tldr
# else
# 	git clone https://github.com/"$base_repo" --single-branch # I think I want single branch, I can't remember...
# fi
