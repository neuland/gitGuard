gitGuard
========

Perl wrapper for git to restrict branching and merging

## Installation:

- `mkdir ~/.gitGuard`
- `cp gitGuard git.sh ~/.gitGuard`
- add `. ~/.gitGuard/git.sh` into your .bashrc (or whatever shell / configuration you use) to 'activate' gitGuard.

- Configure gitGuard:
- set up `@forbiddenMergeBranches` to include the names of those branches that are never allowed to be merged into other branches.
- set up `@allowedBranchBranches` to include the names of those branches that git should be allowed to branch off of.

If you use gitGuard in conjunction with [multigit](https://github.com/neuland/multigit), be sure to set `gitCommand = . ~/.gitGuard/git.sh && git` in your `.multigit.conf`, so that multigit uses gitGuard.

## Usage example:

There is nothing you have to change in your usage of git.

In case you want to merge a 'forbidden' branch you will be denied to do it (with an explanation).

In case you want to branch off of a branch not specifically included in the `@allowedBranchBranches` you will be asked whether that is 'really' what you want to to...

Now have fun!
