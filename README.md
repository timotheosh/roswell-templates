# roswell-templates
Templates for creating Common Lisp projects
## How to use
Check out this repo:

``` shellsession
git clone https://github.com/timotheosh/roswell-templates.git
```
then run:

``` shellsession
cd roswell-templates && ros template import
```
For starting a base command line program that compiles into a binary, you can just run

``` shellsession
cd ~/quicklisp/local-projects && ros init cli my-prog
```
and then:

``` shellsession
cd my-prog && chmod 0755 build.sh
./build.sh
```
the executable will be found at `target/my-prog`

## Current list of available projects
- *cli* Command line program that compiles to a single binary.
