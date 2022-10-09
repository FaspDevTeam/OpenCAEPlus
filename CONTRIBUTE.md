# Guidelines

## Issue

- Follow the issue template

## Pull request

You should use a pull request to contribute your code for anything that you want to be included in the release log and change log, because github actions are setup to automatically include pull request title in the release log and change log.

- Follow the instruction
- Have a meaningful title, since it will be included in the log
- Label your pull request properly
- Your branch should have as short life time as possible ( < 2 days )
- Learn about squash and rebase, choose between them wisely

- Use the name "Release v1.0.0 (mn-dt-year)" for pull request to automatically generate the changelog.
- Use label *bug*, *documentation*, *enhancement* if you want to include the pull request in final release log, and change log.
- Use label *major*, *minor*, *patch* to create release draft for the corresponding version bump

## Commit

- commit should always be small

## Tag

- The release tag are automatically created, so do not create them manually

## Release

- Release draft is automatically created and updated on pull request
