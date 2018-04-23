require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"

  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2

    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @final = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]

    @number.times do
      @final+= @phrase
    end
    @final
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{ params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
      return @final = "#{@number1 + @number2}"
    elsif @operation == "subtract"
      return @final = "#{@number1 - @number2}"
    elsif @operation == "multiply"
      return @final = "#{@number1 * @number2}"

    else
      return @final = "#{@number1/@number2}"
    end
    @final

    # @total = @number1 @operation @number2

  end



end
