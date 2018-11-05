# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Reservation.destroy_all
Event.destroy_all
Venue.destroy_all
User.destroy_all

########################## Users ##########################

cindy = User.create(username: "cindaay", email: 'cindy@email.com', password:'cindy123', bio:'Food? Yes, please.')

carlos = User.create(username: "carlos", email: 'carlos@email.com', password:'carlos12', bio:'Been a chef for 10 years now and currently work at Restaurante La Abadia in Merida, Venezuela. I am here in Houston to visit and learn about different cuisines. I am also here to share my culinary experience with the rest of the world.')

daniel = User.create(username: "daniel", email: 'daniel@email.com', password:'daniel12', bio:'I just graduated from culinary school, and I specialize in cooking stamppot. Just stamppot. I make the best stamppot.')

dobie = User.create(username: "dobie", email: 'dobie@email.com', password:'dobie123', bio:'I will eat anything! Anything I say! ... except chocolate, please do not feed me chocolate.')

kevin = User.create(username: "phin", email: 'phin@email.com', password:'phin1234', bio:'I am the owner of Siphon Coffee. I would love to offer up my café for young chefs to showcase their talents! Cannot wait to see ')  

humzah = User.create(username: "humzah", email: 'humzah@email.com', password:'humzah12', bio:'I absolutely adore Mala style food. Make me Dan Dan Noodles! or whatever I guess, I would eat anything.')

catherine = User.create(username: 'Catherine', email: 'catherine@email.com', password:'catherine', bio:'I am a stay-at-home mom and have 3 beautiful boys ages 4-13. In my spare time, I love to bake sweets for everyone. I am aspiring to open up my own bakery in the near future.')

########################## Venues ##########################

v1 = Venue.create(name: 'Siphon Coffee', street_address:'701 W Alabama St', city: 'Houston', state: 'Texas', zip_code: 77006, booking_price: 350.00, user_id: 5)

v2 = Venue.create(name: 'Flatiron School', street_address:'708 S Main St', city: 'Houston', state: 'Texas', zip_code: 77002, booking_price: 400.00, user_id: 6)

########################## Events ##########################

e1 = Event.create(title: 'Comida de Venezuela', description: 'Come join us for a very exclusive one-night event with Chef Carlos Salazar from Restaurante La Abadia in Merida, Venezuela! You will be served a 10-course meal with recommended beverages. 21+ event only!', date_time: '2018-12-14 17:30:00', capacity: 20, ticket_price: 135, has_paid: true, user_id: 2, venue_id: 2)

e2 = Event.create(title: 'Sweetie Pie', description: 'Please join us for a very sweet event. Catherine will be providing various baked goods for everyone to taste and give feedback for.', date_time: '2018-11-17 19:00:00', capacity: 40, ticket_price: 20, has_paid: true, user_id: 7, venue_id: 1)

e3 = Event.create(title: 'Pasta-licious', description: 'Chef Daniel Soetanto and his team will be cooking us various pasta dishes with a twist! We cannot ruin the twist surprise, you will just have to come and find out what it is!', date_time: '2018-12-21 18:00:00', capacity: 100, ticket_price: 75, has_paid: true, user_id: 3, venue_id: 2)

########################## Reservations ##########################

r1 = Reservation.create(no_of_tickets: 2, is_active: true, user_id: 1, event_id: 1)

r2 = Reservation.create(no_of_tickets: 2, is_active: true, user_id: 1, event_id: 2)

r3 = Reservation.create(no_of_tickets: 2, is_active: true, user_id: 1, event_id: 3)

r4 = Reservation.create(no_of_tickets: 6, is_active: true, user_id: 4, event_id: 3)

r5 = Reservation.create(no_of_tickets: 5, is_active: true, user_id: 7, event_id: 1)

r6 = Reservation.create(no_of_tickets: 1, is_active: true, user_id: 3, event_id: 1)

r7 = Reservation.create(no_of_tickets: 4, is_active: true, user_id: 2, event_id: 3)
