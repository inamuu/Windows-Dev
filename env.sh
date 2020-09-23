# anyenv

echo "## リポジトリのアップデート"
sudo apt update
sudo apt install -y git

## git clone anyenv
echo "## anyenvのインストール"
if [ ! -d "/home/inamuu/.anyenv"  ];then
  git clone https://github.com/riywo/anyenv ~/.anyenv
else
  echo "すでにanyenvはインストールされています。"
fi

## install nodenv
echo "## noenvのインストール"
NODENVNUM=$(anyenv versions | grep nodenv | wc -l)
if [ ${NODENVNUM} -eq 0 ];then
  anyenv install nodenv 
fi

"## yarnのインストール. 次回nodeインストール時に実行されます"
git clone https://github.com/pine/nodenv-yarn-install.git "$(nodenv root)/plugins/nodenv-yarn-install"

## install pyenv
echo "## pyenvのインストール"
PYENVNUM=$(anyenv versions | grep pyenv | wc -l)
if [ ${PYENVNUM} -eq 0 ];then
  anyenv install pyenv 
fi

## install rbenv
echo "## rbenvのインストール"
RBENVNUM=$(anyenv versions | grep rbenv | wc -l)
if [ ${RBENVNUM} -eq 0 ];then
  anyenv install rbenv 
fi

