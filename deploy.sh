if [ -z "$(git status --porcelain)" ]; then 
  git checkout master
else 
  echo "Branch has uncommited changes"
  exit 1
fi

if [ -z "$(git status --porcelain)" ]; then 
  git checkout master
  git commit -am "build public"
  git checkout website
  git checkout master -- dist/
  git commit -am "Publish changes"
  git push public website
else 
  echo "Branch has uncommited changes"
  exit 1
fi
echo "❤️❤️❤️Deploy done❤️❤️❤️❤️"
exit 0
