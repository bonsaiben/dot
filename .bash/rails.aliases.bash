cite 'about-alias'
about-alias 'rails abbreviations'

# Rails Commands
alias r='rails'
alias b='bundle'
alias rg='bundle exec rails g'
alias rs='bundle exec rails s'
alias rc='bundle exec rails c'
#alias rn='bundle exec rails new'
#alias rd='bundle exec rails dbconsole'
#alias rp='bundle exec rails plugin'
#alias ra='bundle exec rails application'
#alias rd='bundle exec rails destroy'
alias migrate='bundle exec rake db:migrate; bundle exec rake db:migrate RAILS_ENV=test'
alias rollback='bundle exec rake db:rollback; bundle exec rake db:rollback RAILS_ENV=test'

#alias ss='script/server'
#alias ts="thin start"     # thin server
#alias sc='script/console'
alias restartapp='touch tmp/restart.txt'
alias restart='touch tmp/restart.txt'  # restart passenger
alias devlog='tail -f log/development.log'
alias taild='tail -f log/development.log' # tail dev log
alias fs='foreman start'
#alias t='bundle exec rspec'
alias tsp='bundle exec rspec spec'

