# Lua-BigInt

## Description

**Lua-BigInt** is Big Interger library for Lua.

## Prerequisites

### Windows

Install Lua: https://sourceforge.net/projects/luabinaries/files/5.3.5/Tools%20Executables/lua-5.3.5_Win32_bin.zip/download

### Linux

```
$ sudo apt update && sudo apt upgrade -y
$ sudo apt install lua5.3 -y
```

## Installation

Clone this repository:

`$ git clone "https://github.com/DeBos99/lua-bigint.git"`

Move file **bigint.lua** to your project directory and include it:

`require 'bigint'`

## Usage

Create BigInt object:

`local a=BigInt('14237984')`

Or

`local a=BigInt(13213)`

Only **strings** and **numbers** are supported now as arguments.

## Supported operators

* \+ (addition)
* \- (subtraction)
* \* (multiplication)
* / (division)
* ^ (exponentiation)
* % (modulo)

Only math between two **BigInt** objects is supported.

## Authors

* **Michał Wróblewski** - Main Developer - [DeBos99](https://github.com/DeBos99)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
