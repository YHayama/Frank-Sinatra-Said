# -*- coding: utf-8 -*-
require 'rubygems'
require 'sinatra'
require 'date'
require 'erb'

helpers do
  include Rack::Utils; alias_method :h, :escape_html
end

template :layout do
  "<html><body><h1>Hello World</h1><%= yield %></body></html>"
end


get '/' do
  erb %{
    <p>2012年の何月のカレンダーを見る？</p>
    <form action='/result' method='POST'>
    <input type='text' name='name'>
    <br>
    <input type='submit' value='送信'>
    </form>
  }
end

post '/result' do
erb:cal
end
