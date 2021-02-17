set -e

cd $(dirname "$0")

echo '::group::Update'
pkg update
yes | apt upgrade
echo '::endgroup::'

pkg install -y git

ls -la

mkdir -p ghdl
cd ghdl

git clone https://github.com/ghdl/ghdl
