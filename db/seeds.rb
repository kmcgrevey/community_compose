# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

User.create(email: 'user_one@example.com',
            username:'areid.sj',
            flat_id: '5ecda42869109757b671ceaa')
User.create(email: 'user_two@example.com',
            username:'tylerpporter',
            flat_id: '5ecda8f84d6bf46345bcc4c9')
User.create(email: 'user_three@example.com',
            username:'dev.andrewreid',
            flat_id: '5ed2cb06ad6a5566efa7cfbd')
# for searching
User.create(email: 'kevin@example.com',
            username:'kevin_test',
            flat_id: '5ed08db2948cbd6d6daa972f',
            zipcode: '80222')
User.create(email: 'user4@example.com',
            username:'Denver 1',
            flat_id: '5ecda42869109757b671ceaa',
            zipcode: '80210')
User.create(email: 'user5@example.com',
            username:'Denver 2',
            flat_id: '5ecda8f84d6bf46345bcc4c9',
            zipcode: '80222')
User.create(email: 'user6@example.com',
            username:'LA Woman',
            flat_id: '5ed2cb06ad6a5566efa7cfbd',
            zipcode: '90001')

