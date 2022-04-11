# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create([
  {name: "Camden", email: "camden@gmail.com", phone: "4802716182", location: "Scottsdale, Arizona", password: "password", profile_pic: "https://m.media-amazon.com/images/M/MV5BOTNmZGU0MDYtNDE4Zi00NTE4LTg0ZGEtYzBjOWNjOTkwMzdlXkEyXkFqcGdeQXVyMTg3Nzg5ODY@._V1_.jpg"}, 
  {name: "Melanie", email: "melanie@gmail.com", phone: "1234561234", location: "Scottsdale, Arizona", password: "password", profile_pic: "https://nypost.com/wp-content/uploads/sites/2/2022/01/melanie-ham-dies-01.jpg?quality=80&strip=all&w=1024"}, 
  {name: "Toria", email: "toria@gmail.com", phone: "8906781234", location: "Scottsdale, Arizona", password: "password", profile_pic: "https://variety.com/wp-content/uploads/2018/03/victoria-parker.jpg?w=1000"},
  {name: "Sam", email: "sam@gmail.com", phone: "8906781234", location: "Scottsdale, Arizona", password: "password", profile_pic: "https://thewinchesterfamilybusiness.com/images/OtherArticles/SPNBike_Jeff_Interview/Jeff_Bike_Misha_crop_sm.jpg"},
  {name: "Mark", email: "mark@gmail.com", phone: "34572341233", location: "Scottsdale, Arizona", password: "password", profile_pic: "https://www.californiamuseum.org/sites/main/files/imagecache/medium/main-images/screen_shot_2012-07-27_at_6.32.28_pm.png?1578063880"},
  {name: "Aspen", email: "aspen@gmail.com", phone: "8038321234", location: "Mesa, Arizona", password: "password", profile_pic: "https://pbs.twimg.com/profile_images/1496206668060897280/uiQvQCGr_400x400.jpg"},
  {name: "Ryan", email: "ryan@gmail.com", phone: "8757461237", location: "Cave Creek, Arizona", password: "password", profile_pic: "https://athletics.georgefox.edu/images/2021/5/7//ryan_thistlewood_mbkb_2016_17.jpg"},
  {name: "Hannah", email: "hannah@gmail.com", phone: "3033218678", location: "Cave Creek, Arizona", password: "password", profile_pic: "https://typewriter.imgix.net/u/043c78ce-d0ca-4e85-acd8-0c7759b9a8d9/p/55750/Hannah_Stoner.jpg?fit=clip&w=800&h=800"},
  {name: "Michael", email: "michael@gmail.com", phone: "3033213425", location: "Phoenix, Arizona", password: "password", profile_pic: "https://ece.montana.edu/seniordesign/images/Michael.jpg"},
  {name: "Paris", email: "paris@gmail.com", phone: "4892341234", location: "Phoenix, Arizona", password: "password", profile_pic: "https://pbs.twimg.com/profile_images/1281071936605323266/wc1KRZLK_400x400.jpg"},
  {name: "Chance", email: "chance@gmail.com", phone: "8018234567", location: "Phoenix, Arizona", password: "password", profile_pic: "https://utahstateaggies.com/images/2018/8/15/31b_Parker_Chance.jpg"}
])


Listing.create([
  {user_id: 1, brand: "Honda", model: "CBR600", year: "2008", description: "this is a beautiful example of a fireblade", image_url: "https://upload.wikimedia.org/wikipedia/commons/6/67/Honda_CBR_600_RR_vr.jpg", location: "Scottsdale, Arizona"},
  {user_id: 2, brand: "Yamaha", model: "YZF600r", year: "2010", description: "this is a beautiful example of a sportBIKE", image_url: "https://pictures.topspeed.com/IMG/crop_webp/200910/yamaha-yzf-r6-32_1200x1200.webp", location: "Tempe, Arizona"}, 
  {user_id: 1, brand: "Kawasaki", model: "ZX9R", year: "2002", description: "perfect for speed without sacrificing comfort", image_url: "https://www.motorcycledaily.com/wp-content/uploads/2002/06/060302center.jpg", location: "Mesa, Arizona"}, 
  {user_id: 3, brand: "KTM", model: "Duke 350", year: "2016", description: "amazing beginner bike, lots of fun!", image_url: "https://www.motorcycle.com/blog/wp-content/uploads/2015/12/120215-2016-KTM-690-duke-duke-r-350-633x389.jpg", location: "Queen Creek, Arizona"}, 
  {user_id: 3, brand: "Honda", model: "CBR1000rr", year: "2021", description: "god tier bike", image_url: "https://gearopen.com/wp-content/uploads/2020/10/maxresdefault-1-1.jpg", location: "Scottsdale, Arizona"}
])


Conversation.create([
  #1
  {leaser_id: 1, renter_id: 2},
  #2
  {leaser_id: 1, renter_id: 3},
  #3
  {leaser_id: 2, renter_id: 1},
  #4
  {leaser_id: 3, renter_id: 1},
  #5
  {leaser_id: 3, renter_id: 2},
  #6
  {leaser_id: 4, renter_id: 5},
  #7
  {leaser_id: 5, renter_id: 4},
  #8
  {leaser_id: 6, renter_id: 7},
  #9
  {leaser_id: 7, renter_id: 6},
  #10
  {leaser_id: 8, renter_id: 9},
  #11
  {leaser_id: 9, renter_id: 8},
  #12
  {leaser_id: 10, renter_id: 9},
  #13
  {leaser_id: 1, renter_id: 10},
  #14
  {leaser_id: 2, renter_id: 6},
  #15
  {leaser_id: 3, renter_id: 5},
  #16
  {leaser_id: 4, renter_id: 8},
  #17
  {leaser_id: 5, renter_id: 7},
  #18
  {leaser_id: 6, renter_id: 5},
  #19
  {leaser_id: 7, renter_id: 3},
  #20
  {leaser_id: 8, renter_id: 1},


])


Message.create([
  {conversation_id: 1, body: "Hey thats a way cool bike", user_id: 2},
  {conversation_id: 1, body: "You are going to have to hold on for dear life", user_id: 1},
  {conversation_id: 1, body: "Can I come see your bikee", user_id: 2},
  {conversation_id: 1, body: "When can you meet? I am way interested", user_id: 2},
  {conversation_id: 1, body: "Meet me at the walmart in tempe", user_id: 1},

  {conversation_id: 2, body: "How do you like the YZFr6?", user_id: 1},
  {conversation_id: 2, body: "Best track bike ever", user_id: 3},
  {conversation_id: 2, body: "When can I come see the bike", user_id: 1},
  {conversation_id: 2, body: "Meet me tomorrow at the mcdonalds", user_id: 3},

  {conversation_id: 3, body: "Hey how do you like your honda?", user_id: 1},
  {conversation_id: 3, body: "Not the fastest but definitely the smoothest", user_id: 2},
  {conversation_id: 3, body: "Sounds like my kind of bike", user_id: 1},
  {conversation_id: 3, body: "Defintely sounds the best to meet me tomorrow to check it out", user_id: 2},

  # new seed data get messages right
  {conversation_id: 4, body: "Hi! Reaching out because I love your bike", user_id: 1},
  {conversation_id: 4, body: "Thanks, glad someone likes it besides me", user_id: 3},
  {conversation_id: 4, body: "Any chance it is available this weekend", user_id: 1},
  {conversation_id: 4, body: "I would love to have it for some fun", user_id: 1},
  {conversation_id: 4, body: "Yeah, lets meet Friday at 5:00", user_id: 3},

  {conversation_id: 5, body: "Alright the paint on that bike is insane!", user_id: 2},
  {conversation_id: 5, body: "Glad you like it, cost me 2k", user_id: 3},
  {conversation_id: 5, body: "Wow thats the most expensive bike paint job", user_id: 2},
  {conversation_id: 5, body: "Yeah, so do you want to ride it", user_id: 3},
  {conversation_id: 5, body: "I would love to, when can I come pick it up", user_id: 2},

  {conversation_id: 6, body: "Can I use your bike two weekends from now", user_id: 5},
  {conversation_id: 6, body: "Im going to need actual dates", user_id: 4},
  {conversation_id: 6, body: "Oh yeah, weekend of the 28th", user_id: 5},
  {conversation_id: 6, body: "Yeah, should be available", user_id: 4},
  {conversation_id: 6, body: "Alright ill be there on the 28th!", user_id: 5},

  {conversation_id: 7, body: "Super clean bike, how much for me to use it?", user_id: 4},
  {conversation_id: 7, body: "Well depends how long do you want it?", user_id: 5},
  {conversation_id: 7, body: "I would love to have it for the weekend", user_id: 4},
  {conversation_id: 7, body: "Yeah, that will be $25 a day", user_id: 5},
  {conversation_id: 7, body: "Ehhh to expensive sorry man I can't do that", user_id: 4},

  {conversation_id: 8, body: "What a cool bike, love at first sight for me", user_id: 7},
  {conversation_id: 8, body: "Exactly how I felt when I first saw it", user_id: 6},
  {conversation_id: 8, body: "Can I take it off you for the weekend?", user_id: 7},
  {conversation_id: 8, body: "Yeah, that will be $50 a day", user_id: 6},
  {conversation_id: 8, body: "Sounds good I will see you on Friday to get it", user_id: 7},

  {conversation_id: 9, body: "Okay so I see you have a bike of your own", user_id: 6},
  {conversation_id: 9, body: "Yeah its no where near as cool as yours", user_id: 7},
  {conversation_id: 9, body: "You want to swap for a few days", user_id: 7},
  {conversation_id: 9, body: "Great minds think a like, I was thinking that", user_id: 6},
  {conversation_id: 9, body: "Well then bike swap for Friday", user_id: 7},
  
  {conversation_id: 10, body: "Super clean bike, how long have you had it?", user_id: 9},
  {conversation_id: 10, body: "Ive had it for about 2 years", user_id: 8},
  {conversation_id: 10, body: "I would love to have it for the weekend", user_id: 9},
  {conversation_id: 10, body: "Works for me its $30 a day, does that work?", user_id: 8},
  {conversation_id: 10, body: "Yep no problem, can't wait to take it out", user_id: 9},

  {conversation_id: 11, body: "Now that is what I call a cool bike!", user_id: 8},
  {conversation_id: 11, body: "Why do you think I bought it....", user_id: 9},
  {conversation_id: 11, body: "True, ha well can I take it on Thursday", user_id: 8},
  {conversation_id: 11, body: "Yeah, that will be $25 for the day", user_id: 8},
  {conversation_id: 11, body: "Hell yeah cool and cheap", user_id: 9},

  {conversation_id: 12, body: "Is this bike available on Tuesday", user_id: 9},
  {conversation_id: 12, body: "Well depends how long do you want it?", user_id: 10},
  {conversation_id: 12, body: "Just on Tuesday, have it back that evening", user_id: 9},
  {conversation_id: 12, body: "Works for me, its $30", user_id: 10},
  {conversation_id: 12, body: "Great price, where should I meet you?", user_id: 9},

  {conversation_id: 13, body: "Hey is your bike available for a week?", user_id: 10},
  {conversation_id: 13, body: "Well depends how long do you want it?", user_id: 1},
  {conversation_id: 13, body: "I would love to have it for the weekend", user_id: 10},
  {conversation_id: 13, body: "Yeah, that will be $25 a day", user_id: 1},
  {conversation_id: 13, body: "Perfect, ill come pick it up on Friday", user_id: 10},

  {conversation_id: 14, body: "Super clean bike, how much for me to use it?", user_id: 6},
  {conversation_id: 14, body: "Well depends when you want it?", user_id: 2},
  {conversation_id: 14, body: "The 3rd week of April", user_id: 6},
  {conversation_id: 14, body: "Yeah, that will be $40 a day", user_id: 2},
  {conversation_id: 14, body: "Perfect, ill come pick it up on Sunday", user_id: 6},

  {conversation_id: 15, body: "Is this a good beginner bike?", user_id: 5},
  {conversation_id: 15, body: "Yep no chance it overpowers you", user_id: 3},
  {conversation_id: 15, body: "Oh great then can I use your bike on Monday", user_id: 5},
  {conversation_id: 15, body: "Sure, when you get here we can go over payment", user_id: 3},
  {conversation_id: 15, body: "Sounds like a plan to me", user_id: 5},

  {conversation_id: 16, body: "Is this bike good for cruising", user_id: 8},
  {conversation_id: 16, body: "Hell yeah it is, I road trip it all the time", user_id: 4},
  {conversation_id: 16, body: "Perfect! I would love to have it next weekend if it is available.", user_id: 8},
  {conversation_id: 16, body: "Its open then, its going to be $40 a day for the bike", user_id: 4},
  {conversation_id: 16, body: "Works for me, when should I come pick up the bike?", user_id: 8},

  {conversation_id: 17, body: "Does this thing really live up to the expectation", user_id: 7},
  {conversation_id: 17, body: "Once you hit 11k rmp its game over thats for sure", user_id: 5},
  {conversation_id: 17, body: "Thats exactly what I wanted to hear, when can I come see the bike", user_id: 7},
  {conversation_id: 17, body: "Tomorrow and then we can hash out the other details", user_id: 5},
  {conversation_id: 17, body: "Perfect Ill see you tomorrow", user_id: 7},

  {conversation_id: 18, body: "I've been dreaming of riding this bike since I was 5, when is it available", user_id: 5},
  {conversation_id: 18, body: "It will be free on friday", user_id: 6},
  {conversation_id: 18, body: "Put me down for the weekend then.", user_id: 5},
  {conversation_id: 18, body: "You got it, the bike is $80 per day", user_id: 6},
  {conversation_id: 18, body: "No price to high to ride my dream bike", user_id: 5},

  {conversation_id: 19, body: "Is this bike good with two people?", user_id: 3},
  {conversation_id: 19, body: "Yep, passenger can ride comfortably for hours.", user_id: 7},
  {conversation_id: 19, body: "I would love to have it for the week then", user_id: 3},
  {conversation_id: 19, body: "Ill mark you down, that will be $45 a day", user_id: 7},
  {conversation_id: 19, body: "Pretty decent price, how early on Friday can I pick it up?", user_id: 3},

  {conversation_id: 20, body: "Does this bike have abs?", user_id: 8},
  {conversation_id: 20, body: "Yep this has the optional abs to save you from lock ups.", user_id: 1},
  {conversation_id: 20, body: "Is the bike available this week on Tuesday", user_id: 8},
  {conversation_id: 20, body: "Ill mark you down for Tuesday!You can pick it up at 6:30am", user_id: 1},
  {conversation_id: 20, body: "Thank you, I will be there at 6:30 for the bike!", user_id: 8},


])