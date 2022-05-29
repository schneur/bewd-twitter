json.tweets do
  json.array! @tweet do |tweet|
    json.id               tweet.id
    json.username         tweet.user.username
    json.message          tweet.message
  end
end