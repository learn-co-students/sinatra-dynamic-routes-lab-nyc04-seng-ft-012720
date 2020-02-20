require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse!}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number**2}"
  end

  get "/say/:number/:phrase" do
    output = ''
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      output += @phrase
    end
    output
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    if params[:operation] == "subtract"
      return "#{params[:number2].to_i - params[:number1].to_i}"
    elsif params[:operation] == "divide"
      return "#{params[:number1].to_i / params[:number2].to_i}"
    elsif params[:operation] == "add"
      return "#{params[:number1].to_i + params[:number2].to_i}"
    else
      return "#{params[:number1].to_i * params[:number2].to_i}"
    end
  end

end