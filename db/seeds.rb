# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Cities Static Data
cities = {
	new_york:   City.create(name: 'New York'), 
	london: 	City.create(name: 'London'),
	miami:      City.create(name: 'Miami'),
	dover:      City.create(name: 'Dover'),
	chicago:    City.create(name: 'Chicago'),
	paris:      City.create(name: 'Paris'),
}


# Customers
Customer.create(name: 'Steve', city: cities[:new_york])
Customer.create(name: 'Virginie', city: cities[:miami])
Customer.create(name: 'Fiona', city: cities[:new_york])
Customer.create(name: 'Fede', city: cities[:new_york])
Customer.create(name: 'Jenny', city: cities[:london])
Customer.create(name: 'James', city: cities[:dover])
Customer.create(name: 'Sara', city: cities[:chicago])
Customer.create(name: 'Tizi', city: cities[:london])
Customer.create(name: 'Thomas', city: cities[:paris])




    # 1. name: 'Steve', received_contents: ['1a', '1b', '3c'], delivery_city: 'New York'
    # 2. name: 'Virginie', received_contents: ['3a', '2b', '3c'], delivery_city: 'Miami'
    # 3. name: 'Fiona', received_contents: ['1b', '2a', '3b'], delivery_city: 'New York'
    # 4. name: 'Jenny', received_contents: ['3b', '2c', '1b'], delivery_city: 'London'
    # 5. name: 'James', received_contents: ['2b', '1b', '3a'], delivery_city: 'Dover'
    # 6. name: 'Fede', received_contents: ['2c', '3a', '1c'], delivery_city: 'New York'
    # 7. name: 'Sara', received_contents: ['3a', '2c', '3b'], delivery_city: 'Chicago'
    # 8. name: 'Tizi', received_contents: ['2b', '1b', '2a'], delivery_city: 'London'
    # 9. name: 'Thomas', received_contents: ['3c', '2b', '1a'], delivery_city: 'Paris'
