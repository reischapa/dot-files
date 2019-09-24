#alias vn='vim --cmd "let g:OpenNERDTree=1"'
#alias v=vim
#alias clc=clear

#alias mgs='git status'
#alias mgd='git diff --cached'
#alias mgaa='git add .'

function mgs() {
  git status;
}

function mgd() {
  git diff --cached;
}

function mgaa() {
  git add .;
}

function mgc() {
  git commit -m "$1";
} 

function mgp() {
  git push;
}

function mgu() {
  git pull;
}

