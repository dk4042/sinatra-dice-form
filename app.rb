require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get ("/process_roll") do 
  @num_dice = params.fetch("dice").to_i
  @nums_sides = params.fetch("sides").to_i
  erb(:results)
end
