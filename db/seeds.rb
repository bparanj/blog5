# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

wealthy = Project.create(name: 'Wealth Building')
wealthy.tasks.create(name: 'Get rich quick', complete: false, priority: 4)
wealthy.tasks.create(name: 'Write a book', complete: true, priority: 5)

happy = Project.create(name: 'Be Happy')
happy.tasks.create(name: 'Buy a puppy', complete: false, priority: 9)
happy.tasks.create(name: 'Dance in the rain', complete: true, priority: 7)

# User.create(first_name: 'Bugs', last_name: 'Bunny')
# User.create(first_name: 'Daffy', last_name: 'Duck')
# User.create(first_name: 'Donald', middle_initial: 'Jack Ass', last_name: 'Trump')
# User.create(first_name: 'David', middle_initial: 'Avacodo', last_name: 'Wolfe')
