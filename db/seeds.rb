kid = Kid.create(name: 'Imani', discipline_level: 2, image_url:'https://images.trueafrica.co/mone_davis.jpg')

first_review = Review.create(kid_id: 1, points: 40, score: 5, agreeable: 'Aye!', date:Faker::Date.between(from: 2.days.ago, to: Date.today), title:'Yess!', description: 'Cleaned the whole kitchen without being told')

second_review = Review.create(kid_id: 1, points: 30, score: 4, agreeable: 'Nah Fam!', date:Faker::Date.between(from: 2.days.ago, to: Date.today),title: 'Oops!', description: 'Did not scoop up the dog poop')

third_review = Review.create(kid_id: 1, points: 20, score: 3, agreeable: 'Nah Fam!', date:Faker::Date.between(from: 2.days.ago, to: Date.today), title:'Bruh!', description: 'Came home 2 hours after curfew')

fourth_review = Review.create(kid_id: 1, points: 10, score: 2, agreeable: 'Nah Fam!', date:Faker::Date.between(from: 2.days.ago, to: Date.today), title:'Yess!', description: 'Hid report card from me...grades were trash')

fifth_review = Review.create(kid_id: 1, points: 0, score: 1, agreeable: 'Nah Fam!', date:Faker::Date.between(from: 2.days.ago, to: Date.today), title:'Yess!', description: 'Borrowed the car and did not put gas in it...I ran out of gas')
