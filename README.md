# Json Services
## ~~Depricated~~
This is the part of the platform that hold all the data, stories, questions, quests and you name it. Everything lives here!

## Versions
Make sure you have at least these versions installed.

- Ruby version => ruby 2.0.0p481
- Rails version => Rails 4.1.6

## Getting started local

If you want to work local you need to do the following to get started.

### Setting up rails

First of all you need to have the proper environment set up.
If you are working on a Mac:

    gem install rails

and you are done.
If you are running linux, I strongly suggest you use [RVM](http://rvm.io/) to install Ruby.
Once you have done that, you can say:

    sudo gem install rails

### Clone

You will need the code to get it use:

    git clone git@bitbucket.org:mindfulmeerkats/json-service.git

And make sure you have an ssh-key added to your account. If you want to use git over HTTPS:

    git clone https://RamonGebben@bitbucket.org/mindfulmeerkats/json-service.git

### Bundle
You need to install all the dependencies you need for running the service.
Luckly we have a program called bundler, which is integrated with Rails.
So to install all the dependencies we say:

    bundle install

And this will install everything thats in the Gemfile

### Database

To get use an empty testing database on your local environment, you use:

    rake db:create
    rake db:migrate


### Rails server

To start the service on your local environment use:

  rails server

And go to [localhost:3000](http://localhost:3000)


## Model ands relations

- Mini quest
  - Title(Main objective)
  - Description
  - Completed_text
  - Status


- Quest
  - Title(Main objective)
  - Description
  - Completed_text
  - Status


- Quiz
  - Title
  - Story/Description
  - Status
  - has_many Questions
    - Question
      - belong_to quiz
      - question
      - answer_1
      - answer_2
      - answer_3
      - answer_4
      - correct_answer
      - quiz_id


- Random Questions
  - question
  - answer_1
  - answer_2
  - answer_3
  - answer_4
  - correct_answer
  - status
