# Capybara + Cucumber web automation  workshop
Web Automation project using Ruby+Cucumber+Capybara frameworks
## Getting Started
1) Install any IDE
2) Install Ruby 2.5.1 using RVM OR use the provided VM
    * https://rvm.io/rvm/install
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
