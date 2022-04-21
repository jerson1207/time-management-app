AdminUser.create( email: "admin@test.com",  
        password: "123456", 
        password_confirmation: "123456", 
        first_name: "Boss", 
         last_name: "Chief" )
puts "1st admin created"

@user1 = User.create( email: "user1@test.com", 
        password: "123456",         
        password_confirmation: "123456", 
        first_name: "Lisa", 
        last_name: "Black" )
puts "1st user created"

5.times do |post|
	Post.create!(date: Date.today + post, body: "#{post} Overtime request", user_id: @user1.id, request: 2)
end
puts "5 Posts from user1 have been created"  

@user2 = User.create( email: "user2@test.com", 
        password: "123456",         
        password_confirmation: "123456", 
        first_name: "James", 
        last_name: "Bond" )
puts "2st user created"

5.times do |post|
	Post.create!(date: Date.today + post, body: "#{post} Overtime request", user_id: @user2.id, request: 2)
end
puts "5 Posts from user1 have been created"  


User.create( email: "juantest10@gmail.com", 
        password: "qwerty@1",         
        password_confirmation: "qwerty@1", 
        first_name: "Juan", 
        last_name: "Tester" )
puts "3rd user created"





