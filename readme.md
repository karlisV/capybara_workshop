# Capybara + Cucumber web automation  workshop
Web Automation project using Ruby+Cucumber+Capybara frameworks
## Getting Started
1) Install any IDE
2) Install Ruby 2.5.1 OR use the VM provided
    * `sudo apt update`
    * `sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev`
    * `curl -sL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash -`
    * `echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc`
    * `echo 'eval "$(rbenv init -)"' >> ~/.bashrc`
    * `source ~/.bashrc`
    * `rbenv install 2.5.1`
    * `rbenv global 2.5.1`
3) Clone/download this project
4) `cd /path-to-project`
5) `gem install bundler`
6) `bundle install`

## Running
### Command line

####To run tests:
In the project's directory run command:
```
cucumber
```
####To run tests with built in reporter:
```
cucumber --format pretty --format html -o report.html
```
####To run tests with specific tags('@wip' tag in example):
```
cucumber -t @wip
```
