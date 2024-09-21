require_relative '../../config/environment'

articles = [
  { name: "AIT", url: "www.ait.com" },
  { name: "Rails", url: "www.rubyonrails.org" },
  { name: "Google", url: "www.google.com" }
]

articles.each do |article_data|
  article = Article.new(article_data)
  if article.save
    puts "Article #{article.name} saved successfully!"
  else
    puts "Error saving article #{article.name}: #{article.errors.full_messages.join(", ")}"
  end
end
