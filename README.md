# Lua-BigInt

**Lua-BigInt** is Big Interger library for Lua.

## Content

- [Content](#content)
- [Prerequisites](#prerequisites)
  - [Windows](#windows)
  - [Linux](#linux)
    - [APT](#apt)
    - [Pacman](#pacman)
  - [MacOS](#macos)
- [Installation](#installation)
- [Usage](#usage)
- [Documentation](#documentation)
  - [Constructors](#constructors)
  - [Methods](#methods)
- [Authors](#authors)
- [License](#license)

## Prerequisites

### Windows

Install Lua: https://sourceforge.net/projects/luabinaries/files/5.3.5/Tools%20Executables/lua-5.3.5_Win32_bin.zip/download

### Linux

#### APT

```
$ sudo apt update && sudo apt upgrade -y
$ sudo apt install lua5.3 -y
```

#### Pacman

```
$ sudo pacman -Syu --noconfirm
$ sudo pacman -S lua --noconfirm
```

### MacOS

```
$ brew update && brew upgrade
$ brew install lua
```

## Installation

Clone this repository:

`$ git clone "https://github.com/DeBos99/lua-bigint.git"`

## Usage

Move the file **bigint.lua** to your project directory and include it:

`require 'bigint'`

## Documentation

### Constructors

| Constructor                            | Description                                                         |
| :---                                   | :---                                                                |
| BigInt(number) <br> BigInt.new(number) | Translates decimal number representation of a BigInt into a BigInt. |
| BigInt(string) <br> BigInt.new(string) | Translates decimal string representation of a BigInt into BigInt.   |

### Methods

| Method                                                       | Description                                                                |
| :---                                                         | :---                                                                      |
| BigInt.clone(a) <br> a:clone()                               | Returns the deep copy of a BigInt.                                        |
| BigInt.\_\_tostring() <br> a:\_\_tostring() <br> tostring(a) | Returns the string representation of a BigInt.                            |
| BigInt.\_\_len(a) <br> a:\_\_len() <br> #a                   | Returns the number of digits in a BigInt.                                  |
| BigInt.\_\_unm(a) <br> a:\_\_unm() <br> -a                   | Returns negated value of a BigInt.                                        |
| BigInt.\_\_add(a, b) <br> a:\_\_add(b) <br> a + b            | Returns the sum of two BigInts.                                            |
| BigInt.\_\_sub(a, b) <br> a:\_\_sub(b) <br> a - b            | Returns the difference of two BigInts.                                    |
| Bigint.\_\_mul(a, b) <br> a:\_\_mul(b) <br> a \* b           | Returns the product of two BigInts.                                        |
| BigInt.\_\_div(a, b) <br> a:\_\_div(b) <br> a \/ b           | Returns the quotient of two BigInts.                                      |
| BigInt.\_\_pow(a, b) <br> a:\_\_pow(b) <br> a ^ b            | Returns the BigInt to the power of the another BigInt.                    |
| BigInt.\_\_mod(a, b) <br> a:\_\_mod(b) <br> a % b            | Returns the remainder of a division of two BigInts.                        |
| BigInt.\_\_eq(a, b) <br> a:\_\_eq(b) <br> a == b             | Returns **true** if two BigInts are equal.                                |
| BigInt.\_\_lt(a, b) <br> a:\_\_lt(b) <br> a < b              | Returns **true** if the first BigInt is less than the second BigInt. |
| BigInt.\_\_abs(a) <br> a:abs()                               | Returns the absolute value of a BigInt.                                    |

## Authors

* **Michał Wróblewski** - Main Developer - [DeBos99](https://github.com/DeBos99)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
