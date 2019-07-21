# Lua-BigInt

![Made with Lua](https://img.shields.io/badge/made%20with-lua-0.svg?color=cc2020&labelColor=ff3030&logo=lua&logoColor=white&style=for-the-badge)

![GitHub](https://img.shields.io/github/license/DeBos99/lua-bigint.svg?color=2020cc&labelColor=5050ff&style=for-the-badge)
![GitHub followers](https://img.shields.io/github/followers/DeBos99.svg?color=2020cc&labelColor=5050ff&style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/DeBos99/lua-bigint.svg?color=2020cc&labelColor=5050ff&style=for-the-badge)
![GitHub stars](https://img.shields.io/github/stars/DeBos99/lua-bigint.svg?color=2020cc&labelColor=5050ff&style=for-the-badge)
![GitHub watchers](https://img.shields.io/github/watchers/DeBos99/lua-bigint.svg?color=2020cc&labelColor=5050ff&style=for-the-badge)
![GitHub contributors](https://img.shields.io/github/contributors/DeBos99/lua-bigint.svg?color=2020cc&labelColor=5050ff&style=for-the-badge)

![GitHub commit activity](https://img.shields.io/github/commit-activity/w/DeBos99/lua-bigint.svg?color=ffaa00&labelColor=ffaa30&style=for-the-badge)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/DeBos99/lua-bigint.svg?color=ffaa00&labelColor=ffaa30&style=for-the-badge)
![GitHub commit activity](https://img.shields.io/github/commit-activity/y/DeBos99/lua-bigint.svg?color=ffaa00&labelColor=ffaa30&style=for-the-badge)
![GitHub last commit](https://img.shields.io/github/last-commit/DeBos99/lua-bigint.svg?color=ffaa00&labelColor=ffaa30&style=for-the-badge)

![GitHub issues](https://img.shields.io/github/issues-raw/DeBos99/lua-bigint.svg?color=cc2020&labelColor=ff3030&style=for-the-badge)
![GitHub closed issues](https://img.shields.io/github/issues-closed-raw/DeBos99/lua-bigint.svg?color=10aa10&labelColor=30ff30&style=for-the-badge)

[![Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=NH8JV53DSVDMY)

**Lua-BigInt** is Big Interger library for Lua.

## Content

- [Content](#content)
- [Installation](#installation)
  - [Windows](#windows)
  - [Unix](#unix)
    - [Debian/Ubuntu](#apt)
    - [Arch Linux/Manjaro](#pacman)
    - [CentOS](#yum)
    - [MacOS](#homebrew)
- [Usage](#usage)
- [Documentation](#documentation)
  - [Constructors](#constructors)
  - [Methods](#methods)
- [Authors](#authors)
- [Contact](#contact)
- [License](#license)

## Installation

### Windows

* Install [Lua](https://sourceforge.net/projects/luabinaries/files/5.3.5/Tools%20Executables/lua-5.3.5_Win32_bin.zip/download).
* Run following command in the command prompt:
```
git clone "https://github.com/DeBos99/lua-bigint.git"
```

### Unix

#### <a name="APT">Debian/Ubuntu based

* Run following commands in the terminal:
```
sudo apt install git lua -y
git clone "https://github.com/DeBos99/lua-bigint.git"
```

#### <a name="Pacman">Arch Linux/Manjaro

* Run following commands in the terminal:
```
sudo pacman -S git lua --noconfirm
git clone "https://github.com/DeBos99/lua-bigint.git"
```

#### <a name="YUM">CentOS

* Run following commands in the terminal:
```
sudo yum install git lua -y
git clone "https://github.com/DeBos99/lua-bigint.git"
```

#### <a name="Homebrew">MacOS

* Run following commands in the terminal:
```
brew install git lua
git clone "https://github.com/DeBos99/lua-bigint.git"
```

## Usage

* Move the file [bigint.lua](bigint.lua) to your project directory.
* Add following line at the top of your source file:
```
require 'bigint'
```

## Documentation

### Constructors

| Constructor                            | Description                                                         |
| :------------------------------------- | :------------------------------------------------------------------ |
| BigInt(number) <br> BigInt.new(number) | Translates decimal number representation of a BigInt into a BigInt. |
| BigInt(string) <br> BigInt.new(string) | Translates decimal string representation of a BigInt into BigInt.   |

### Methods

| Method                                                       | Description                                                          |
| :----------------------------------------------------------- | :------------------------------------------------------------------- |
| BigInt.clone(a) <br> a:clone()                               | Returns the deep copy of a BigInt.                                   |
| BigInt.\_\_tostring() <br> a:\_\_tostring() <br> tostring(a) | Returns the string representation of a BigInt.                       |
| BigInt.\_\_len(a) <br> a:\_\_len() <br> #a                   | Returns the number of digits in a BigInt.                            |
| BigInt.\_\_unm(a) <br> a:\_\_unm() <br> -a                   | Returns negated value of a BigInt.                                   |
| BigInt.\_\_add(a, b) <br> a:\_\_add(b) <br> a + b            | Returns the sum of two BigInts.                                      |
| BigInt.\_\_sub(a, b) <br> a:\_\_sub(b) <br> a - b            | Returns the difference of two BigInts.                               |
| Bigint.\_\_mul(a, b) <br> a:\_\_mul(b) <br> a \* b           | Returns the product of two BigInts.                                  |
| BigInt.\_\_div(a, b) <br> a:\_\_div(b) <br> a \/ b           | Returns the quotient of two BigInts.                                 |
| BigInt.\_\_pow(a, b) <br> a:\_\_pow(b) <br> a ^ b            | Returns the BigInt to the power of the another BigInt.               |
| BigInt.\_\_mod(a, b) <br> a:\_\_mod(b) <br> a % b            | Returns the remainder of a division of two BigInts.                  |
| BigInt.\_\_eq(a, b) <br> a:\_\_eq(b) <br> a == b             | Returns **true** if two BigInts are equal.                           |
| BigInt.\_\_lt(a, b) <br> a:\_\_lt(b) <br> a < b              | Returns **true** if the first BigInt is less than the second BigInt. |
| BigInt.\_\_abs(a) <br> a:abs()                               | Returns the absolute value of a BigInt.                              |

## Authors

* **Michał Wróblewski** - Main Developer - [DeBos99](https://github.com/DeBos99)

## Contact

Discord: DeBos#3292

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
