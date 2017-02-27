
## install cmigemo, migemo.el by apt

sudo apt install migemo

## for golang

- go get -u -v github.com/nsf/gocode
- go get -u -v github.com/rogpeppe/godef
- go get -u -v github.com/zmb3/gogetdoc
- go get -u -v github.com/golang/lint/golint
- go get -u -v github.com/lukehoban/go-outline
- go get -u -v sourcegraph.com/sqs/goreturns
- go get -u -v golang.org/x/tools/cmd/gorename
- go get -u -v github.com/tpng/gopkgs
- go get -u -v github.com/newhook/go-symbols
- go get -u -v golang.org/x/tools/cmd/guru
- go get -u -v github.com/cweill/gotests/...

and for go-direx.el
- go get -u github.com/jstemmer/gotags

addition to code formatting, also fixes imports.
- go get golang.org/x/tools/cmd/goimports

# for markdown preview

```sh
# install nodejs,npm by apt
sudo apt install -y nodejs npm

# install n by npm
sudo npm cache clean
sudo npm install n -g
sudo n stable

sudo ln -sf /usr/local/bin/node /usr/bin/node

# uninstall nodejs,npm installed by apt
sudo apt-get purge -y nodejs npm

# install marked to global
sudo npm install marked -g

# make directory for temporary html file
mkdir ~/.emacs.d/tmp
```

# for plantuml-mode

```sh
# already installed java

# install required library
sudo apt-get install graphviz

# place plantuml.jar in ~/bin
cd ~/bin
wget http://jaist.dl.sourceforge.net/project/plantuml/plantuml.jar
```
# for powerline

## font patching

https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher

# for helm-ag (ripgrep)

## install ripgrep

https://github.com/BurntSushi/ripgrep
