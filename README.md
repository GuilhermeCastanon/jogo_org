# Template project for the ICMC Processor Simulator (Linux)

### Dependencies
In order to clone this repository with the needed submodules you should clone it with ``` git clone --recurse-submodules -b no-preprocessor https://github.com/cirillom/icmc-assembly-template-repo.git ```.

If you cloned it without passing the desired branch you're going to need to checkout to the ``` no-preprocessor ``` branch using ``` git checkout no-preprocessor```.

If you also forgot to run the ``` --recurse-submodules ``` you can download the submodule with ```git submodule update --init --recursive```.

You'll also need the simulator binarie files, in order to install it just type ``` make simulator ``` and everything will be done for you.

<br />
### Usage
You can create any _.asm_ and _.vars_ files under _src/_, including files under new subdirectories.

<br />
<br />
<br />
