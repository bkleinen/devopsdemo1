== README

[![Build Status](https://travis-ci.org/bkleinen/devopsdemo1.png)](https://travis-ci.org/bkleinen/devopsdemo1)

The App on Heroku:

* [Ideas](http://immense-meadow-2688.herokuapp.com/ideas)
* [Notes](http://immense-meadow-2688.herokuapp.com/notes)
* [Users](http://immense-meadow-2688.herokuapp.com/users)


This is a small demo for showing how to do Continuous Integration
with GitHub and Travis CI and Continuous Deployment with Heroku.

These are the commands I ran:

    rails new Ideas
    cd Ideas/
    git init
    git add .
    git commit -m "new app"
    rails g scaffold idea title:string idea:text
    rake db:migrate
    git add .
    git commit -m "new resource ideas"
    rake
    git remote add origin git@github.com:bkleinen/devopsdemo1.git
    git status
    git push origin master
    subl .travis.yml
    git add .
    git commit -m "travis.yml"
    git push origin master
    heroku login
    heroku create
    subl Gemfile
    bundle
    git add .
    git commit -m "heroku db<"
    git push origin master
    git push heroku master
    gem install travis
    travis setup heroku
    git status
    git diff .travis.yml
    git add .
    git commit -m "deployment to heroku"
    git status
    git push origin master
    rails g scaffold note title:string text:text
    rake db:migrate
    git push origin master
    git add .
    git commit -m "resource note"
    git push origin master
    heroku open
    heroku run rake db:migrate
    subl .travis.yml
    git status
    git add .
    git commit -m "added heroku migration"
    rails g scaffold user name:string
    rake db:migrate
    git add .
    git commit -m "resource user"
    git push origin master
    history
