require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    string = params[:phrase].split("%20").join(" ")
    string *= params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = ""
    params.each do |key, value|
      string += value + " "
    end
    string.chop + "."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      (params[:number1].to_i + params[:number2].to_i).to_s
    when "subtract"
      (params[:number1].to_i - params[:number2].to_i).to_s
    when "multiply"
      (params[:number1].to_i * params[:number2].to_i).to_s
    when "divide"
      (params[:number1].to_i / params[:number2].to_i).to_s
    end
  end
end
