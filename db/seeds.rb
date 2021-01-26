level_1 = Hunt.create(level: 1, correct_answer: "Jump on the horse", points: 10)

hint_level_1 = Hint.create(hunt_id: level_1.id, hint_text: " You gotta click on the horse dumb dumb")

level_2 = Hunt.create(level: 2, correct_answer: "Marjoram", points: 20)

hint_level_2 = Hint.create(hunt_id: level_2.id, hint_text: "Scientific name: Origanum majorana")

level_3 = Hunt.create(level: 3, correct_answer: "Piccadilly Circus", points: 30)

hint_level_3 = Hint.create(hunt_id: level_3.id, hint_text: "51°30′36″N 0°8′4″W")

level_4 = Hunt.create(level: 4, correct_answer: "The Peasantry", points: 40)

hint_level_4 = Hint.create(hunt_id: level_4.id, hint_text: "Something about our URL does not reflect our utter disdain for commonfolk")


puts "🌱🌱🌱🌱🌱"