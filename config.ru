require 'sinatra/base'

dir.glob('./{controllers,models}*.rb').each {
  |file| require file
}

map('/') {run HomeController}
map('/students') {run StudentsController}
