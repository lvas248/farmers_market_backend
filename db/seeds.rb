# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  {
    name: 'Apple',
    description: 'A crisp and juicy fruit',
    price: 0.99,
    image: '',
    qty: 10,
    season: 'fall, winter, spring',
    produce_type: 'fruit',
  },
  {
    name: 'Banana',
    description: 'A sweet and yellow fruit',
    price: 0.49,
    image: '',
    qty: 10,
    season: 'summer',
    produce_type: 'fruit',
  },
  {
    name: 'Orange',
    description: 'A tangy and citrusy fruit',
    price: 0.79,
    image: '',
    qty: 10,
    season: 'winter, spring',
    produce_type: 'fruit',
  },
  {
    name: 'Grapes',
    description: 'Small and juicy berries',
    price: 2.99,
    image: '',
    qty: 10,
    season: 'fall',
    produce_type: 'fruit',
  },
  {
    name: 'Strawberry',
    description: 'Sweet and juicy red berries',
    price: 1.49,
    image: '',
    qty: 10,
    season: 'spring, summer',
    produce_type: 'fruit',
  },
  {
    name: 'Pineapple',
    description: 'Tropical and sweet',
    price: 1.99,
    image: '',
    qty: 10,
    season: 'summer',
    produce_type: 'fruit',
  },
  {
    name: 'Kiwi',
    description: 'Small and tangy',
    price: 1.29,
    image: '',
    qty: 10,
    season: 'winter, spring',
    produce_type: 'fruit',
  },
  {
    name: 'Watermelon',
    description: 'Refreshing and hydrating',
    price: 3.49,
    image: '',
    qty: 10,
    season: 'summer',
    produce_type: 'fruit',
  },
  {
    name: 'Cherry',
    description: 'Sweet and tart berries',
    price: 2.49,
    image: '',
    qty: 10,
    season: 'spring, summer',
    produce_type: 'fruit',
  },
  {
    name: 'Blueberry',
    description: 'Tiny and packed with flavor',
    price: 1.99,
    image: '',
    qty: 10,
    season: 'summer',
    produce_type: 'fruit',
  },
  {
    name: 'Pear',
    description: 'Sweet and pear-shaped',
    price: 1.29,
    image: '',
    qty: 10,
    season: 'fall',
    produce_type: 'fruit',
  },
  {
    name: 'Plum',
    description: 'Sweet and juicy',
    price: 1.39,
    image: '',
    qty: 10,
    season: 'summer',
    produce_type: 'fruit',
  },
  {
    name: 'Lemon',
    description: 'Tart and sour citrus',
    price: 0.79,
    image: '',
    qty: 10,
    season: 'winter, spring',
    produce_type: 'fruit',
  },
  {
    name: 'Grapefruit',
    description: 'Tangy and refreshing',
    price: 0.89,
    image: '',
    qty: 10,
    season: 'winter, spring',
    produce_type: 'fruit',
  },
  {
    name: 'Cantaloupe',
    description: 'Sweet and orange inside',
    price: 2.29,
    image: '',
    qty: 10,
    season: 'summer',
    produce_type: 'fruit',
  },
  {
    name: 'Raspberry',
    description: 'Small and intensely flavorful',
    price: 2.19,
    image: '',
    qty: 10,
    season: 'summer',
    produce_type: 'fruit',
  },
  {
    name: 'Carrot',
    description: 'Orange and crunchy',
    price: 0.69,
    image: '',
    qty: 10,
    season: 'fall, winter, spring',
    produce_type: 'veggie',
  },
  {
    name: 'Broccoli',
    description: 'Green and nutritious',
    price: 1.29,
    image: '',
    qty: 10,
    season: 'fall, winter, spring',
    produce_type: 'veggie',
  },
  {
    name: 'Spinach',
    description: 'Leafy and rich in iron',
    price: 1.19,
    image: '',
    qty: 10,
    season: 'fall, winter, spring',
    produce_type: 'veggie',
  },
  {
    name: 'Cucumber',
    description: 'Cool and refreshing',
    price: 0.79,
    image: '',
    qty: 10,
    season: 'summer',
    produce_type: 'veggie',
  },
  {
    name: 'Zucchini',
    description: 'Versatile and mild',
    price: 1.09,
    image: '',
    qty: 10,
    season: 'summer',
    produce_type: 'veggie',
  },
  {
    name: 'Eggplant',
    description: 'Purple and hearty',
    price: 1.49,
    image: '',
    qty: 10,
    season: 'summer, fall',
    produce_type: 'veggie',
  },
  {
    name: 'Tomato',
    description: 'Red and juicy',
    price: 0.99,
    image: '',
    qty: 10,
    season: 'summer, fall',
    produce_type: 'veggie',
  },
  {
    name: 'Potato',
    description: 'Starchy and versatile',
    price: 0.89,
    image: '',
    qty: 10,
    season: 'fall, winter',
    produce_type: 'veggie',
  },
  {
    name: 'Onion',
    description: 'Sharp and aromatic',
    price: 0.69,
    image: '',
    qty: 10,
    season: 'fall, winter,spring',
    produce_type: 'veggie',
  },
  {
    name: 'Bell Pepper',
    description: 'Colorful and crunchy',
    price: 0.99,
    image: '',
    qty: 10,
    season: 'summer, fall',
    produce_type: 'veggie',
  },
].each {|p| Product.create!(p)}