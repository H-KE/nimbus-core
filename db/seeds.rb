# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

retailers = Retailer.create([
  {
    image_url: 'http://cdn.theweedblog.com/wp-content/uploads//Medical-Marijuana2.jpg',
    name: 'Modern Apothecarium',
    address: '474 Victoria Park Ave, M4A 2M5',
    description: 'This is a made up dispensary for demo purposes. We specialize in all kinds of medicinal cannabis products including edibles, extracts, flowers, as well as accessories and apparatus.',
    mail: true,
    delivery: false,
    pickup: true,
    email: "demo@nimbusfly.co",
    phone_number: "9999999999"
  },
  {
    image_url: 'http://www.cannabistherapyinstitute.com/images/cross.only.gif',
    name: 'The Green Cross',
    address: '2012 Neilson Avenue, M1M 1V1',
    description: 'This is a made up dispensary for demo purposes. We specialize in all kinds of medicinal cannabis products including edibles, extracts, flowers, as well as accessories and apparatus.',
    mail: true,
    delivery: true,
    pickup: true,
    email: "demo@nimbusfly.co",
    phone_number: "9999999999"
  },
  {
    image_url: 'http://sites.middlebury.edu/middmag/files/2012/10/high-line-logo.jpeg',
    name: 'The High Line',
    address: '170 Islington Ave, M9V 2X5',
    description: 'This is a made up dispensary for demo purposes. We specialize in all kinds of medicinal cannabis products including edibles, extracts, flowers, as well as accessories and apparatus.',
    mail: true,
    delivery: true,
    pickup: true,
    email: "demo@nimbusfly.co",
    phone_number: "9999999999"
  },
  {
    image_url: 'http://static1.squarespace.com/static/50414a88e4b0b97fe5a56a39/t/53695564e4b0e9a5f9b53913/1399412070542/',
    name: 'Shambhala Healing',
    address: '2792 Adelaide St, M5H 1P6',
    description: 'This is a made up dispensary for demo purposes. We specialize in all kinds of medicinal cannabis products including edibles, extracts, flowers, as well as accessories and apparatus.',
    mail: true,
    delivery: false,
    pickup: false,
    email: "demo@nimbusfly.co",
    phone_number: "9999999999"
  }
])
