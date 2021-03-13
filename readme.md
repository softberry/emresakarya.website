# WebSite emresakarya.com / de

this is a private repo. Public content of the website is also on git hub and automated using plesk to deploy.

## HOW TO DEPLOY


  ```
    git checkout master
    npx gulp
    git commit -am "build public"
    git checkout website
    git checkout master -- dist/
    git commit -am "Publish changes"
    git push public website
  ```
