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

