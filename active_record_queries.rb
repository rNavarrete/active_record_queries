1.) Author.find(9)

2.) Author.where(:last_name => "Brown")

3.) Author.find_by(:last_name => "Brown")

4.) Author.where(created_at:(5.days.ago..Date.today.end_of_day))

5.) Author.where(:last_name = > "Brown", :first_name => "Nancy").first