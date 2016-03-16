# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

wealthy = Project.create(name: 'Wealth Building')
wealthy.tasks.create(name: 'Get rich quick', complete: false, priority: 4)
wealthy.tasks.create(name: 'Write a book', complete: true, priority: 5)

happy = Project.create(name: 'Be Happy')
happy.tasks.create(name: 'Buy a puppy', complete: false, priority: 9)
happy.tasks.create(name: 'Dance in the rain', complete: true, priority: 7)
happy.tasks.create(name: 'Dance in the snow', complete: true, priority: 6)
happy.tasks.create(name: 'Walk on water', complete: true, priority: 7)
happy.tasks.create(name: 'Just Blog It', complete: true, priority: 5)
happy.tasks.create(name: 'Play tennis', complete: true, priority: 4)
happy.tasks.create(name: 'Make fun of Donald Trump', complete: true, priority: 3)
happy.tasks.create(name: 'Walk on moon', complete: true, priority: 2)

# User.create(first_name: 'Bugs', last_name: 'Bunny')
# User.create(first_name: 'Daffy', last_name: 'Duck')
# User.create(first_name: 'Donald', middle_initial: 'Jack Ass', last_name: 'Trump')
# User.create(first_name: 'David', middle_initial: 'Avacodo', last_name: 'Wolfe')

# p = Product.new(name: 'rug', price: 100)
# Product.create(name: 'bowl', price: 20.95)
# Product.create(name: 'pillow', price: 90)
# Product.create(name: 'light', price: 10.95)
#
# c = Category.create(name: 'Clothes')
# Category.create(name: 'Furniture')
# Category.create(name: 'Groceries')
# Category.create(name: 'Electronics')
#
# p.categories << c
# p.save!
