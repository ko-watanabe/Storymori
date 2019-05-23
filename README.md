# README
This README explains how I am going to plan to port the Storymori backend from Node to Rails.
StoryMori frontend(Vue) : https://github.com/ko-watanabe/cohort.dena-001.storymori-app_vue

## checkpoint
- Checkpoint 1 : Modify Default port 3001  
[x] Try bash-command "`rails server`" and check whether the port is 3001

- Checkpoint 2-1 : Add stories-controller  
[x] Try "`bundle exec rails generate controller stories getStories`"

- Checkpoint 2-2 : Add pages-controller  
[x] Try "`bundle exec rails generate controller pages getPage`"

- Checkpoint 3 : Add database  
[] Try "`rails db:create db:migrate`"

- Checkpoint 4 : Test port connection 3000 -> 3001 -> database  
[] Connect port 3000 and port 3001 and show any data from database

- Checkpoint 5-1 : Add methods (getStories)  
[] add getStories method

- Checkpoint 5-2 : Add methods (saveStory)  
[] add saveStory method

- Checkpoint 5-3 : Add methods (getPage)  
[] add getPage method

- Checkpoint 5-4 : Add methods (savePage)  
[] add savePage method

- Checkpoint 6 : Add and run testcase  
[] Test case all succeed