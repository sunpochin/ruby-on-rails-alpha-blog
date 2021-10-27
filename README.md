# README
* Demo site: https://ror-blog-pochin.herokuapp.com/
* This is a code-along project of "The Complete Ruby on Rails Developer Course" by Mashrur Hossain et al. on udemy.
* This projects demos a blog with basic CRUD operation and basic unit test, integration test.
* The frontend is bootstrap and backend using SQLite for development and PostgreSQL for production on heroku.
* Deployment instructions:<br>
  * locally, do this 2 cmds first: <br>
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

