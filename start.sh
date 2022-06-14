if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/DarkDevilBoy/MW-RENAMER-V1.git /MW-RENAMER-V1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MW-RENAMER-V1
fi
cd /MW-RENAMER-V1
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
