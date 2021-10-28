# Interview questions response for nic-lin

## a. warm-up

## b. non-tech

## c. rails tech
  * Which routes will resource :users create?
    * index, show, new, edit, create, update, and destroy
    * Ans: https://guides.rubyonrails.org/routing.html#resource-routing-the-rails-default <br> "Resource routing allows you to quickly declare all of the common routes for a given resourceful controller. A single call to resources can declare all of the necessary routes for your index, show, new, edit, create, update, and destroy actions."

  * The difference between rails "helper" and "partial"
    * So in short, logic should go into helpers and reusable html snippets (with minimal embedded logic) should be in partials. <br> https://stackoverflow.com/questions/633484/whats-the-difference-between-a-helper-and-a-partial <br> https://medium.com/@tienshunlo_32785/rails-partial-vs-helpers-1e75cf56ab53
  
  * What's Gemfile for?
    * The Gemfile is where you specify which gems you want to use, and lets you specify which versions.
    The Gemfile.lock file is where Bundler records the exact versions that were installed. This way, when the same library/project is loaded on another machine, running bundle install will look at the Gemfile.lock and install the exact same versions, rather than just using the Gemfile and installing the most recent versions. (Running different versions on different machines could lead to broken tests, etc.) You shouldn't ever have to directly edit the lock file. <br> https://stackoverflow.com/a/6927553/720276
    * Most of the version specifiers, like >= 1.0, are self-explanatory. The specifier ~> has a special meaning, best shown by example. ~> 2.0.3 is identical to >= 2.0.3 and < 2.1. ~> 2.1 is identical to >= 2.1 and < 3.0. ~> 2.2.beta will match prerelease versions like 2.2.beta.12. ~> 0 is identical to >= 0.0 and < 1.0.  <br> https://bundler.io/gemfile.html

  * What's migration for? Why use migration?
    * The main purpose of Rails' migration feature is to issue commands that modify the schema using a consistent process. Migrations can also be used to add or modify data. This is useful in an existing database that can't be destroyed and recreated, such as a production database. <br> https://guides.rubyonrails.org/active_record_migrations.html#migrations-and-seed-data

  * What problems does MVC framework solved? How rails differ MVC?
  * What's ERB for? Do you know any template engine other than ERB?

  * What does ||= operator do?
    * This is saying, set @_current_user to {SOMETHING} if it is nil, false, or undefined. Otherwise set it to @_current_user, or in other words, do nothing. An expanded form:
    <br> @_current_user || @_current_user = {SOMETHING}
    <br> https://stackoverflow.com/questions/5691390/when-do-we-use-the-operator-in-rails-what-is-its-significance


## d. general tech
  * Explain
  * Your previous
