# rust-tutorial

## 概要
こちらは2023年1月dd日に実施される技術講習会で使用する、Rustを実行するためのdevcontainerです。  
自習に利用できるように公開いたしましたので、ぜひご利用ください。

## 事前準備
devcontainer上に環境を構築しているのであらかじめdockerをインストールしていただく必要があります
```bash
docker --version
```
ならびに
```bash
docker-compose --version
```
でdocker,docker-composeが利用可能であることを確認ください。  
dockerのインストールに関しては記載しておりませんのでお調べください

## 導入方法
ここではWindows(WSL)での実行方法を記載します。
Macの方は適宜置き換えてください。

1. WSLを起動します
2. cloneしたい親フォルダに移動します。
3. このレポジトリをcloneします。
```bash
git clone git@github.com:hareya0622/rust-tutorial.git
```
4. clone結果を確認しcloneしたrust-tutorialに移動します。
```bash
$ ls 
rust-tutorial etc...
$ cd rust-tutorial
```
5. vscodeを起動します。
```bash
$ code .
```
6. vscodeの右下に「Reopen in Container」と表示されるのでクリックします。  
	この表示は数十秒経つと消えるのでそのときはF1ボタンを押してReload Windowで再度「Reopen in Container」を表示させてください
7. コンテナが起動しコンテナ上でvscodeが起動します。  
	初回起動時buildが走るため少し時間がかかります。
8. vscodeでターミナルを起動し以下のコマンドでrustやcargoのバージョンが確認できたら完了です。
```bash
$ cargo --version
cargo 1.74.0 (ecb9851af 2023-10-18)
$ rustc -V
rustc 1.74.0 (79e9716c9 2023-11-13)
$ rustup -V
rustup 1.26.0 (5af9b9484 2023-04-05)
info: This is the version for the rustup toolchain manager, not the rustc compiler.
info: The currently active `rustc` version is `rustc 1.74.0 (79e9716c9 2023-11-13)`
```

## 巻末
### 実行環境
以下の環境で動作確認済みです。

#### ホストPC
| system | バージョン                                         |
| ------ | -------------------------------------------------- |
| OS     | Windows 10 Pro                                     |
| CPU    | Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz  2.70 GHz |
| RAM    | 8.00GB                                             |

#### WSL
```bash
$ cat /etc/os-release
NAME="Ubuntu"
VERSION="20.04.6 LTS (Focal Fossa)"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 20.04.6 LTS"
VERSION_ID="20.04"
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
VERSION_CODENAME=focal
UBUNTU_CODENAME=focal
```
#### Docker
```powershell
PS C:\Users> docker version
Client:
 Cloud integration: v1.0.35+desktop.5
 Version:           24.0.6
 API version:       1.43
 Go version:        go1.20.7
 Git commit:        ed223bc
 Built:             Mon Sep  4 12:32:48 2023
 OS/Arch:           windows/amd64
 Context:           default

Server: Docker Desktop 4.25.2 (129061)
 Engine:
  Version:          24.0.6
  API version:      1.43 (minimum version 1.12)
  Go version:       go1.20.7
  Git commit:       1a79695
  Built:            Mon Sep  4 12:32:16 2023
  OS/Arch:          linux/amd64
  Experimental:     false
 containerd:
  Version:          1.6.22
  GitCommit:        8165feabfdfe38c65b599c4993d227328c231fca
 runc:
  Version:          1.1.8
  GitCommit:        v1.1.8-0-g82f18fe
 docker-init:
  Version:          0.19.0
  GitCommit:        de40ad0
```
