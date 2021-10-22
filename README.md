# README

* Deployment instructions<br>
locally, do this 2 cmds first: <br>
```rails db:migrate```<br>
```yarn```<br>
then<br>
```rails s```

* For an existing Heroku app<br>
```git add .```<br>
```git commit -am"update before push to heroku"```<br>
```heroku git:remote -a ror-blog-pochin```<br>
```git push heroku main```<br>
```heroku run rails db:migrate```<br>

* https://devcenter.heroku.com/articles/git

For an existing Heroku app
If you have already created your Heroku app, you can easily add a remote to your local repository with the heroku git:remote command. All you need is your Heroku app’s name:

heroku git:remote -a thawing-inlet-61413
set git remote heroku to https://git.heroku.com/thawing-inlet-61413.git"





This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)


* ...



