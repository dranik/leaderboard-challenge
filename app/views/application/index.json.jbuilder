json.array! @shows do |show|
  json.title show.title
  json.description show.description
  json.total (show.attributes["avg(reviews.score)"] + show.number).round(2)
end
