# Learning Flex and Bison

## Description

This repository was created to keep track of my personal learning material for [Flex and Bison][flexandbison].
The source code is provided in the [src](src/) directory, the explanations and notes are stored inside the [notes](notes/) directory.

## Build

You can generate the lexcial analyzer using the [build script](build.sh) in the root directory.
It expects exactly one parameter, which is the path to the lexical analyzer description.
After hitting enter the script will delete the `build` directory if existing, generate a new one and save the lexical analyzer just there.
Last but not least **gcc** will create an executable you can run afterwards.

**Note:** The build script was created for a MacOS system and may not work on other systems. Furthermore, be sure to have Flex and Bison installed!


[flexandbison]: https://en.wikipedia.org/wiki/GNU_Bison
