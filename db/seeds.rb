require 'json'
require 'open-uri'

movies = JSON.load(open("json_files/1996.json").read)

@i = 0


# movies['1998movies'].each do |movie|
#   Movie.create(title: movie["title"]["text"], imdb_id: movie["title"]["href"], year: movie["year"][1..-2].to_i, box_office_total: movie["box_office_total"], box_office_ranking: @i+=1);
# end

# movies['1997movies'].each do |movie|
#   Movie.create(title: movie["title"]["text"], imdb_id: movie["title"]["href"], year: movie["year"][1..-2].to_i, box_office_total: movie["box_office_total"], box_office_ranking: @i+=1);
# end

# movies['1996movies'].each do |movie|
#   Movie.create(title: movie["title"]["text"], imdb_id: movie["title"]["href"], year: movie["year"][1..-2].to_i, box_office_total: movie["box_office_total"], box_office_ranking: @i+=1);
# end



movies['1999movies'].each do |movie|
  Movie.create(title: movie["title"]["text"], imdb_id: movie["title"]["href"], year: movie["year"][1..-2].to_i, box_office_total: movie["box_office_total"], box_office_ranking: @i+=1);
end

# movies['2000movies'].each do |movie|
#   Movie.create(title: movie["title"]["text"], imdb_id: movie["title"]["href"], year: movie["year"][1..-2].to_i, box_office_total: movie["box_office_total"], box_office_ranking: @i+=1);
# end

# movies['2001movies'].each do |movie|
#   Movie.create(title: movie["title"]["text"], imdb_id: movie["title"]["href"], year: movie["year"][1..-2].to_i, box_office_total: movie["box_office_total"], box_office_ranking: @i+=1);
# end

# movies['2002movies'].each do |movie|
#   Movie.create(title: movie["title"]["text"], imdb_id: movie["title"]["href"], year: movie["year"][1..-2].to_i, box_office_total: movie["box_office_total"], box_office_ranking: @i+=1);
# end

# movies['2003movies'].each do |movie|
#   Movie.create(title: movie["title"]["text"], imdb_id: movie["title"]["href"], year: movie["year"][1..-2].to_i, box_office_total: movie["box_office_total"], box_office_ranking: @i+=1);
# end

# movies['2004movies'].each do |movie|
#   Movie.create(title: movie["title"]["text"], imdb_id: movie["title"]["href"], year: movie["year"][1..-2].to_i, box_office_total: movie["box_office_total"], box_office_ranking: @i+=1);
# end

# movies['2005movies'].each do |movie|
#   Movie.create(title: movie["title"]["text"], imdb_id: movie["title"]["href"], year: movie["year"][1..-2].to_i, box_office_total: movie["box_office_total"], box_office_ranking: @i+=1);
# end

# movies['1996_2005movies'].each do |movie|
#   Movie.create(title: movie["title"]["text"], imdb_id: movie["title"]["href"], year: movie["year"][1..-2].to_i, box_office_total: movie["box_office_total"], box_office_ranking: @i+=1);
# end