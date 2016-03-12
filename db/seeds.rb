# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Default Users creation

User.create(first_name: 'Cristian',   
            last_name: 'Georgescu',
            email: 'georgescu.cristi@gmail.com',
            role: :guest
            )
             
User.create(first_name: 'Cristian', 
            last_name: 'User',
            email: 'cristi.user@testing.com',
            role: :user
            )
             
User.create(first_name: 'Cristian',   
            last_name: 'Admin',
            email: 'cristi.admin@testing.com',
            role: :admin
            )
             
                          
             