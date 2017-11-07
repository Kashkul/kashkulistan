# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


12.times do 
	Person.create!(name: 'Roger Clayton', role: 'Does Stuff', about: 'Savan A. Ahmad is an undergraduate in the Administration and Economic Department at the University of Sulaimani where she majors in Accounting. Ahmad is the Translation Supervisor at DidiMn as well as a member of 68, a youth organization. She also subtitles movies for Salim cinema. She participated in gallery shows for her paintings at a very young age and continues to draw and paint today. She currently works as a translator at Kashkul where she focuses on bringing the fifteen major Kurdish classical poets of the 19th century into English, an on-going project.', facebook: 'http://facebook.com', twitter: 'http://twitter.com', instagram: 'http://instagram.com')
end