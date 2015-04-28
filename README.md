# Bash-Config
My bash config,  using this to pull to remote servers

![Screenshot](https://raw.githubusercontent.com/Jiggins/Bash-Config/master/images/Terminology.png)

## Installation
```bash
git clone https://github.com/Jiggins/Bash-Config.git
cd Bash-Config && ./install
```

## Features
### Vim
- Toggle background transparency

## Bash Scripts
| Script                                                                         | Author         | Function                       |
| :----------------------------------------------------------------------------: | :------------- | :----------------------------- |
| [`git-forest`](https://github.com/jwiegley/git-scripts/blob/master/git-forest) | Jan Engelhardt | Alternative `git log` function |

## Vim Key Binds
### General
| Shortcut | Function                      |
| :------: | :---------------------------- |
| `Ctrl /` | Comment line                  |
| `Ctrl a` | Increment number under cursor |
| `Ctrl x` | Decrement number under cursor |
| `Ctrl p` | Open fuzzy file finder        |
| `;;`     | Show recent commands          |

### Tabs
| Shortcut | Function         |
| :------: | :--------------- |
| `Ctrl t` | New tab          |
| `Ctrl n` | Next tab         |
| `⇧ tab`  | Next tab         |
| `Ctrl b` | Previous tab     |
| `Ctrl w` | Close tab (quit) |

### Toggle Options
| Shortcut | Function                                                          |
| :------: | :---------------------------------------------------------------- |
| `;t`     | Toggle Background transparency                                    |
| `;p`     | Toggle Paste Mode                                                 |
| `;l`     | Toggle show hidden characters (:list)                             |
| `;L`     | Remove trailing whitespace - leaves one blank line at end of file |
| `;n`     | Toggle line numbers and gitGutter                                 |

### Splitting Windows
| Shortcut | Function                     |
| :------: | :--------------------------- |
| `;Up`    | Open File explorer on top    |
| `;Down`  | Open File explorer on bottom |
| `;Left`  | Open File explorer on left   |
| `;Right` | Open File explorer on left   |

## Plugins included
| Name                              | Description                                                                              |
| :-------------------------------- | :----------                                                                              |
| [gmarik/Vundle.vim][1]            | Vundle, the plug-in manager for Vim                                                      |
| [airblade/vim-gitgutter][2]       | A Vim plugin which shows a git diff in the gutter (sign column) and stages/reverts hunks |
| [bling/vim-airline][3]            | lean & mean status/tabline for vim that's light as air                                   |
| [flazz/vim-colorschemes][4]       | One colorscheme pack to rule them all!                                                   |
| [godlygeek/tabular][5]            | Vim script for text filtering and alignment                                              |
| [kien/ctrlp.vim][6]               | Fuzzy file, buffer, mru, tag, etc finder                                                 |
| [plasticboy/vim-markdown][7]      | Markdown Vim Mode                                                                        |
| [SirVer/ultisnips][8]             | UltiSnips - The ultimate snippet solution for Vim                                        |
| [terryma/vim-multiple-cursors][9] | True Sublime Text style multiple selections for Vim                                      |
| [tomtom/tcomment_vim][10]         | An extensible & universal comment vim-plugin that also handles embedded filetypes        |
| [tpope/vim-repeat][11]            | repeat.vim: enable repeating supported plugin maps with "."                              |
| [tpope/vim-surround][12]          | Surround.vim: quoting/parenthesizing made simple                                         |

[1]: https://github.com/gmarik/Vundle.vim
[2]: https://github.com/airblade/vim-gitgutter
[3]: https://github.com/bling/vim-airline
[4]: https://github.com/flazz/vim-colorschemes
[5]: https://github.com/godlygeek/tabular
[6]: https://github.com/kien/ctrlp.vim
[7]: https://github.com/plasticboy/vim-markdown
[8]: https://github.com/SirVer/ultisnips
[9]: https://github.com/terryma/vim-multiple-cursors
[10]: https://github.com/tomtom/tcomment_vim
[11]: https://github.com/tpope/vim-repeat
[12]: https://github.com/tpope/vim-surround

## To-do
- [x] install bashrc
- [x] install vimrc
  - [x] copy preferences
  - [x] copy keymap
  - [x] auto install plugins
  - [x] fix vim-airline theme

- [ ] git config
- [ ] Documentation
