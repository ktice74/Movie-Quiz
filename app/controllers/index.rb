# enable :sessions
require 'json'

get '/' do
  @user = User.find(session[:current_user_id]) if session[:current_user_id]
  erb :index
end

get '/login' do
  erb :log_in
end

post '/login' do
  p params
  @user = User.find_by(username: params[:username])
    if @user.password == params[:password]
      session_set_current_user(@user)
      redirect '/'
    else
      redirect '/'
    end
end

delete '/logout' do
  session.delete :current_user_id
  session.delete :user_name
  redirect '/'
end

get '/logout' do
  session.delete :current_user_id
  session.delete :user_name
  redirect '/'
end

get '/register' do
  erb :register
end

post '/register' do
  @new_user = User.create(username: params[:user_name], password: params[:password])
  redirect '/login'
end

get '/movies/:year' do
  @year = params[:year]
  @movies = Movie.where(year: params[:year]).order(:box_office_ranking)
  @movies_json = @movies.map(&:imdb_fields)
  # p @movies_jsons
  @imdb_fields = @movies_json.map{|movie| JSON.parse(movie)}
  @best_movies = @imdb_fields.sort_by{|v| v["Metascore"]}.reverse
  # p @best_movies[0..2]
  # @movies = Movie.bo_rank_by_year(params[:year])
  # @best_movies = Movie.rank_by_metascore(params[:year])
  erb :years
end

post '/score' do
  user = User.find(session[:current_user_id])
  # year =
  # @user
  # @user.(params[:year]: params[:score])
  # puts "helloooooo"
  # year = the user year
  # score = the user score
  # user.user_name
  # user.
  # {year: "1996", score: "score"}.to_json
end


# get 'year/:year' do`
#   @year = params[:year]
#   @movies = Movie.where(year: params[:year])
#   erb :movies
# end

