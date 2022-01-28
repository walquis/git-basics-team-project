sh=`basename $SHELL`
profile=~/.${sh}_profile
if ! grep -l 'alias adog' $profile >> /dev/null
then
  echo >> $profile  # In case the profile doesn't end with a newline
  cat `dirname ${BASH_SOURCE[0]}`/git-aliases.sh >> $profile
  echo Appended git aliases to $profile
else
  echo "Found 'adog' alias already in $profile, assuming the rest are there too."
fi
