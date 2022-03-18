FILE=~/firefox.tar.bz2
if [ -f "$FILE" ]; then
  echo "firefox installed"
else
  curl -L -o ~/firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64"
  echo "installing..."
  tar xjf ~/firefox.tar.bz2
fi
echo "running"
./firefox/firefox