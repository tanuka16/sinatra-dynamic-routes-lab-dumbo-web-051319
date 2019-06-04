require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    user_name = params[:name].reverse
    "#{user_name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    # @square = params[:number].to_i.square!
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    str = []
    @num = params[:number].to_i
    @phrase = params[:phrase]
     str << "#{@phrase * @num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # str []
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    # binding.pry
    # @num1 = params[:number1].to_i
    # @num2 = params[:number2].to_i
    if params[:operation] == 'add'
      oper = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == 'subtract'
      oper = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == 'multiply'
      oper = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == 'divide'
      oper = params[:number1].to_i / params[:number2].to_i
    end
    oper.to_s
  end

end
