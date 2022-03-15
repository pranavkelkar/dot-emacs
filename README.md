# dot-emacs
Emacs Configuration file

## First Time Setup

- Clone this repo. `git clone https://github.com/pranavkelkar/dot-emacs.git .`
  **OR**
  Get init.el file. ` wget https://raw.githubusercontent.com/pranavkelkar/dot-emacs/master/init.el`

- Create custom-file.el file. `touch ~/.emacs.d/custom-file.el`
- Start emacs from terminal. Observed issue for emacs on my setup when started from UI- dosen't read configuration in .bashrc file. Thus, it fails finding required Go tools.

## Go

1. Check value of GOPATH with `go env`.

2. Add GOPATH to PATH
```bash
# .bashrc
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
```
3. Install

- gopls - Go language server - provides IDE features to IDE compatible editors
- godef - Prints the source location of definitions in Go programs

```bash
go install golang.org/x/tools/gopls@latest
go install github.com/rogpeppe/godef@latest
```

## Reference
[Configuring Emacs from Scratch](https://medium.com/helpshift-engineering/configuring-emacs-from-scratch-intro-3157bed9d040)
