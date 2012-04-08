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
    <p>あなたの名前は？</p>
    <form action='/hello' method='POST'>
    <input type='text' name='name'>
    <br>
    <input type='submit' value='送信'>
    </form>
  }
end

post '/hello' do
  erb:index
end

=begin
post '/hello' do
  erb %{
    <p>おまえが<%= h params[:name] %>か… </p>
    <a href='/'>戻る</a>
  }
end
=end
