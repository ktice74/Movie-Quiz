require "net/http"
require "uri"

class Movie < ActiveRecord::Base

  after_create :assign_imdb_fields

  def assign_imdb_fields
    api_call = "http://www.omdbapi.com/?i=" + self.imdb_id
    uri = URI.parse(api_call)
    response = Net::HTTP.get_response(uri)
    imdb_fields = Net::HTTP.get(uri)
    self.imdb_fields = imdb_fields
    self.save
    # imdb_fields = JSON.parse(json_obj)
  end
end







# movie[imdbRating]