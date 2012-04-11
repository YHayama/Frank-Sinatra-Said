# -*- coding: utf-8 -*-
require 'rubygems'
require 'sinatra'

helpers do
  include Rack::Utils; alias_method :h, :escape_html
end

template :layout do
  "<html><body><h1>Hello World</h1><%= yield %></body></html>"
end


get '/' do
  erb %{
    <p>hありの入力欄</p>
    <form action='/test1' method='POST'>
    <input type='text' name='name'>
    <br>
    <input type='submit' value='送信'>
    </form>
    <br>
    <br>
    <p>hなしの入力欄</p>
    <form action='/test2' method='POST'>
    <input type='text' name='name'>
    <br>
    <input type='submit' value='送信'>
    </form>
  }
end

post '/test1' do
  erb:test1
end
post '/test2' do
  erb:test2
end
