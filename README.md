gitGuard
========

Perl wrapper for git to restrict branching and merging

## Installation:

- `git clone git@github.com:neuland/gitGuard.git` to clone this repository
- `ln -s <CLONED_REPOSITORY_PATH> ~/.gitGuard`
- `echo ". ~/.gitGuard/git.sh" >> ~/.bashrc` to 'activate' gitGuard (other configuration files may apply).

## Configuration:
- set up `@forbiddenMergeBranches` to include the names of branches that are never allowed to be merged into other branches.
- set up `@allowedBranchBranches` to include the names of branches that git should be allowed to branch off of.

- If you do not want gitGuard to write branching infos into a specified file (`.branched_from1` by default) set `$branchFromFeature = 0;`
- Example: If you would want to disallow merging branches 'foo' and 'bar' into other branches,
you would define: `my @forbiddenMergeBranches = ("foo","bar");`.

- If you use gitGuard in conjunction with [multigit](https://github.com/neuland/multigit), be sure to set `gitCommand = . ~/.gitGuard/git.sh && git` in your `.multigit.conf`,
so that multigit uses the gitGuard wrapper.

## Usage example:

There is nothing you have to change in your usage of git.

In case you want to merge a 'forbidden' branch you will be denied to do it (with an explanation).

In case you want to branch off of a branch not specifically included in the `@allowedBranchBranches` you will be asked whether that is 'really' what you want to to...

Now have fun!
