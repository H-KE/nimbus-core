# Nimbus-core
Premier cannabis delivery SERVER
    IN PROGRESS MOTHAFUCKA

Getting started:
* Install homebrew if you don't have it: ```ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"```
* Install x-code (app store) then it's CLI: ```xcode-select --install```
* Install GPG with brew: ```brew install gpg```
* Install portgresql: ```brew install postgresql```
* Install security keys: ```command curl -sSL https://rvm.io/mpapis.asc | gpg --import -```

Server setup:
* Install RVM (ruby package manager): ```\curl -L https://get.rvm.io | bash -s stable``` (switch to new terminal after)
* Install ruby rvm install: ```ruby-2.3.1```
* Update gem manager: ```gem update --system```
* Install bundler and nokogiri: ```gem install bundler```, ```gem install nokogiri```
* Install rails on our project gemset: ```rvm use ruby-2.3.1@rails5.0 --create```, ```gem install rails```
