require 'Faker'

50.times do
  color = "#" + ("%06x" % (rand * 0xffffff))
  email = Faker::Internet.email
  password = Faker::Internet.password
  salt = BCrypt::Engine.generate_salt
  hash = BCrypt::Engine.hash_secret(password, salt)
  User.create(color: color, email: email, salt: salt, pw_hash: hash)
end

100.times do
  content = Faker::Lorem.sentence
  Splash.create(content: content, user_id: rand(1..50), original_splash_id: rand(1..5))
end

30.times do

end
