if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/aafusam/SAIQ-MOVIE-BOT /SAIQ-MOVIE-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SAIQ-MOVIE-BOT
fi
cd /SAIQ-MOVIE-BOT
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
