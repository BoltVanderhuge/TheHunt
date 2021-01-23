level_1 = Hunt.create(level: 1, correct_answer: "Jump on the horse", points: 10)
hint_level_1 = Hint.create(hunt_id: level_1.id, hint_text: " You gotta click on the horse dumb dumb")
level_2 = Hunt.create(level: 2, correct_answer: "Something", points: 20)
hint_level_2 = Hint.create(hunt_id: level_2.id, hint_text: " You gotta click on the horse dumb dumb")

puts "🌱🌱🌱🌱🌱"