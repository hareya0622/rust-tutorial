#!/bin/bash

# sudo chsh -s /bin/bash rust_learner

# tab補完が動作するようにinstall
sudo apt update
sudo apt install -y bash-completion

# gitコマンド補完用スクリプトのダウンロード
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O /etc/bash_completion.d/git

echo 'source /etc/bash_completion' >> ~/.bashrc

# PS1にbranch名を追加
echo 'parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1)/"
}

export PS1="\u@\h \w\$(parse_git_branch) \$ "' >> ~/.bashrc

