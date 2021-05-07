# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Goal.destroy_all
ListItem.destroy_all
Appointment.destroy_all
FinanceItem.destroy_all
Trip.destroy_all


user1 = User.create(name: "Cori", username: "cori", password: "cori")
user2 = User.create(name: "Adri", username: "adri", password: "adri")
user3 = User.create(name: "Udenna", username:"udenna", password: "udenna")

goal1 = Goal.create(name:"Work Out", start_date: "January 2021", completion_date: "January 2022", user_id: user1.id)
goal2 = Goal.create(name: "Pass Test", start_date: "May 2021", completion_date: "May 2021", user_id: user2.id)
goal3 = Goal.create(name: "New Car", start_date: "January 2021", completion_date: "June 2021", user_id: user3.id)

list_item1 = ListItem.create(name: "meditate", user_id: user2.id)
list_item2 = ListItem.create(name: "walk dog", user_id: user1.id)
list_item3 = ListItem.create(name: "code", user_id: user3.id)

appointment1 = Appointment.create(name: "Doctor follow-up", date: "June 2021", time: 1, user_id: user1.id)
appointment2 = Appointment.create(name: "Veterinarian Appointment", date: "June 2021", time: 3, user_id: user2.id)
appointment3 = Appointment.create(name: "Tech Meet-Up", date: "May 2021", time: 4, user_id: user3.id)

finance_items1 = FinanceItem.create(name: "rent", amount: "700", month: "May", user_id: user1.id)
finance_items2 = FinanceItem.create(name: "trip" , amount:"200", month: "June", user_id: user2.id)
finance_items3 = FinanceItem.create(name: "new monitor", amount:"700", month:"May", user_id: user3.id)

trip1 = Trip.create(name:"girls trip", date:"july 2021", destination:"miami", user_id: user2.id )
trip2 = Trip.create(name: "business trip", date:"may 2021", destination:"san francisco", user_id: user1.id )
trip3 = Trip.create(name:"visit family", date:"june 2021", destination:"hawaii", user_id: user3.id )




