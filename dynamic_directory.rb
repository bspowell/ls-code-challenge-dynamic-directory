require "tilt/erubis"
require "sinatra"
require "sinatra/reloader"

get "/" do
  @title = "Dynamic Directory"
  @files = Dir.glob("public/*").map {|file| File.basename(file) }.sort
  @files.reverse! if params[:sort] == "desc"
  erb :index
end
