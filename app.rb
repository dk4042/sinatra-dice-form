require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/process_roll") do 
  @num_dice = params.fetch("dice").to_i

  @nums_sides = params.fetch("sides").to_i

  @rolls = []

  @num_dice.times do 
    @rolls.push(rand(1..@nums_sides))
  end



  erb(:results)
end

get("/home") do 
  "Homepage"
  erb(:homepage)
end
