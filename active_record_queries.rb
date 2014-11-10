"How well do you know Rails?
Without looking for help online write the following queries:
Find an author with an id of 9.
Find all authors with a last_name of Brown.
Find the first author with a last_name of Brown.
Find all articles created in the last 5 days.
Using only one call to the database:
Find all users with a last_name of 'Brown' and return the first user with a first_name of 'Nancy'.
Find all articles created in the last 5 days. Display the article title and author's last_name for each article.
Bonus Round
What's the danger of using update_attribute vs update_attributes?
Imagine we are creating and loading users based on data received from an external service (attributes in this example). Refactor the method below to use .first_or_initialize and .tap:"



def self.find_or_create_from_external_service(attributes = {})
  user = User.find_by_login(attributes[:login])
  if user.nil?
    user = User.create(login: attributes[:login], email: attributes[:email])
  end

  user
end





1.) Author.find(9)

2.) Author.where(:last_name => "Brown")

3.) Author.find_by(:last_name => "Brown")

4.) Author.where(created_at:(5.days.ago..Date.today.end_of_day))

5.) Author.where(:last_name = > "Brown", :first_name => "Nancy").first

6.) @articles = Article.includes(:author).where(created_at: (5.days.ago..Date.today.end_of_day))
    @articles.each {|article| puts "#{article.title}: #{article.author_name}"}


 update_attribute (skips validations)
 update_attributes (doesnt skip validations)


"https://gist.github.com/jmejia/4cf4c806f362fb108398"



