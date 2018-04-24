require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse!
    "#{@name}"
  end

  get '/square/:number' do
    @sqnumber = params[:number].to_i ** 2
    "#{@sqnumber}"
  end

  get '/say/:number/:phrase' do

    @num = params[:number].to_i
    @phrase = params[:phrase]
    string = ""
    (1..@num).each do
      string = string + "#{@phrase}"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    a = params.map {|key, value| value }
    a = a.join" "
    a + "."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if params[:operation] == "add"
       "#{num1 + num2}"
    elsif params[:operation] == "subtract"
       "#{num1 - num2}"
    elsif params[:operation] == "divide"
       "#{num1 / num2}"
    elsif params[:operation] == "multiply"
       "#{num1 * num2}"
    else
      "oops"
    end
  end

end
