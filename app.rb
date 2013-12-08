require 'sinatra'
require 'sinatra-partial'
require 'Haml'


class BookmarkManager < Sinatra::application

end

require_relative 'models/init'
require_relative 'helpers/init'
require_relative 'controllers/init'