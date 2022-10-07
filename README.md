# OpenCAEPlus

[![Github pages](https://github.com/FaspDevTeam/OpenCAEPlus/actions/workflows/gh-page.yml/badge.svg)](https://github.com/FaspDevTeam/OpenCAEPlus/actions/workflows/gh-page.yml)

| Build | Test |
|:-----:|:----:|
|[![Linux GNU Build](https://github.com/FaspDevTeam/OpenCAEPlus/actions/workflows/linux_gnu_build.yml/badge.svg)](https://github.com/FaspDevTeam/OpenCAEPlus/actions/workflows/linux_gnu_build.yml)||

Welcome to the OpenCAEPlus project! The "CAEPlus" means numerical simulation with artificial intelligence. 

## Folder structure
- .vscode: project settings for vscode, which is our recommended code editor
- .github: the github configuration folder
- docs: the documentations
- src: the source code

## Files
- cli: command line interface for unix system to help you build the program and doc 
- cli.bat: command line interface for windows
- CMakeLists.txt: CMake file
- CMakePresets.json: CMake presets for different platforms and compilers

## CLI usage

``` sh
# make the cli executable
chmod 755 cli 
# build, check helper
./cli build
./cli build -b Debug -t all -c intel 
# test, check helper
./cli test
./cli test -b Release -c gnu --unit 
./cli test -b Release -c gnu --benchmark 
# doc, check helper
./cli doc 
./cli doc -b web

```