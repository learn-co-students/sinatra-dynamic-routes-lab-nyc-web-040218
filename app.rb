require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.to_s.reverse
  end

  get '/square/:number' do
    @user_number = params[:number]
    @user_number = @user_number.to_i**2
    @user_number.to_s
  end

  get '/say/:number/:phrase' do
    string = ''
    params[:number].to_i.times do
      string += params[:phrase]
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    case params[:operation]
    when 'add'
      response = (number1 + number2).to_s
    when 'subtract'
      response = (number1 - number2).to_s
    when 'multiply'
      response = (number1 * number2).to_s
    when 'divide'
      response = (number1 / number2).to_s
    end
  end
end
