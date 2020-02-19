require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name].reverse!
    "#{@user_name}"
  end
  get "/square/:number" do
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end
  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
     @w1 = params[:word1]
     @w2 = params[:word2]
     @w3 = params[:word3]
     @w4 = params[:word4]
     @w5 = params[:word5]
     "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end
  get "/:operation/:number1/:number2" do
     @operation = params[:operation]
     if @operation == "multiply"
        @product = params[:number1].to_i * params[:number2].to_i
        "#{@product.to_s}"
     
     elsif @operation == "add"
        @product = params[:number1].to_i + params[:number2].to_i
        "#{@product.to_s}"
     
     elsif @operation == "subtract"
        @product = params[:number1].to_i - params[:number2].to_i
        "#{@product.to_s}"
     
     elsif @operation == "divide"
        @product = params[:number1].to_i / params[:number2].to_i
        "#{@product.to_s}"
     end
  end

end

# 1. Create a dynamic route at `get '/reversename/:name'` that accepts a name and renders the name backwards.

# 2. Create a dynamic route at `get '/square/:number'` that accepts a number and returns the square of that number. **Note:** Remember that values in params always come in as strings, and your return value for the route should also be a string (use `.to_i` and `.to_s`).

# 3. Create a dynamic route at `get '/say/:number/:phrase'` that accepts a number and a phrase and returns that phrase in a single string the number of times given.

# 4. Create a dynamic route at `get '/say/:word1/:word2/:word3/:word4/:word5'` that accepts five words and returns a string containing all five words 
# (i.e. `word1 word2 word3 word4 word5`).

# 5. Create a dynamic route at `get '/:operation/:number1/:number2'` that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided, returning a `String`. For example, going to `/add/1/2` should render `3` as a `String`.