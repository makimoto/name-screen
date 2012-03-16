# vim:encoding=utf-8
require 'rubygems'
require 'bundler'
require 'net/http'
Bundler.require

get '/' do
  if params[:body]
    @body = params[:body].split rescue []
    @ruby = params[:ruby].split rescue []
    @name = @body.join
    haml :show
  else
    haml :index
  end
end

