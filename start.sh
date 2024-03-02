# Don't Remove Credit @movie_file_20
# Subscribe YouTube Channel For Amazing Bot @movie_file_20
# Ask Doubt on telegram @KingVJ01

if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Ak129/Neha_koyeb.git /Neha_koyeb
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Neha_koyeb
fi
cd //Neha_koyeb
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
