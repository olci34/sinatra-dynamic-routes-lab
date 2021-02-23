require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    reversename = params[:name].reverse
    reversename
  end

  get '/square/:number' do
    square = params[:number].to_i ** 2
    "#{square}"
  end
  
  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    result = ''
    number.times do
      result += phrase
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = params.values.join(" ")
    words + "."
  end

  get '/:operation/:number1/:number2' do
    num1, num2 = params[:number1].to_i, params[:number2].to_i
    case params[:operation]
    when "add"
      (num1 + num2).to_s
    when "subtract"
      (num1 - num2).to_s
    when "multiply"
      (num1*num2).to_s
    when "divide"
      (num1/num2).to_s
    end
  end
end