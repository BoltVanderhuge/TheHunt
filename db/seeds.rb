level_1 = Hunt.create(level: 1, correct_answer: "Jump on the horse")

hint_level_1 = Hint.create(hunt_id: level_1.id, hint_text: " You gotta click on the horse, dumb dumb!")

level_2 = Hunt.create(level: 2, correct_answer: "Marjoram")

hint_level_2 = Hint.create(hunt_id: level_2.id, hint_text: "Take a look in your cookies! Scientific name: Origanum majorana!")

level_3 = Hunt.create(level: 3, correct_answer: "Piccadilly Circus")

hint_level_3 = Hint.create(hunt_id: level_3.id, hint_text: "The phrase is hidden somewhere near the gate! If you're too thick for that, you can find the answer here: 51°30′36″N 0°8′4″W!")

level_4 = Hunt.create(level: 4, correct_answer: "The Peasantry")

hint_level_4 = Hint.create(hunt_id: level_4.id, hint_text: "Something about our URL rings fasle about our reverance for nobility! Correct the value within and proceed to the next level!")

level_5 = Hunt.create(level: 5, correct_answer: "5")

hint_level_5 = Hint.create(hunt_id: level_5.id, hint_text: "Count the huntsman in the video! Carousel horse riders do not count!")

level_6 = Hunt.create(level: 6, correct_answer: "351")

hint_level_6 = Hint.create(hunt_id: level_6.id, hint_text: "Inspect those boxes with development tools!")

level_7 = Hunt.create(level: 7, correct_answer: "vixen")

hint_level_7 = Hint.create(hunt_id: level_7.id, hint_text: "You'll need to login another user with the hidden attributes!")

User.create(your_name: "Shunt McGupin", username: "Lord Governor Chasslesworth", password: "rulebritannia", horse_name: "Pepper")

win_screen = Hunt.create(level: 8, correct_answer: "You Beat The Game!")

puts "🌱🌱🌱🌱🌱"