require 'sinatra'
require 'sinatra/reloader' if development?

require_relative './controllers/aryas_list_controller.rb'

use Rack::MethodOverride

run AryasListController