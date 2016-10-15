# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = user = User.create! :email => 'admin@nimbusfly.co', :password => 'topsecret', :password_confirmation => 'topsecret', :first_name => 'Admin', :last_name => 'Test'

retailers = Retailer.create!([
  {
    image_url:"http://purereleaf.ca/images/logo-pr.png",
    name: 'Pure Releaf',
    address: '897 dundas st w, Toronto, ON CA',
    description: 'Dedicated to the betterment of our fellow neighbours, we source and distribute medicinal cannabis products of the utmost quality. We specialize in a variety of products including flowers, concentrates, Pre-rolls, and others.',
    mail: true,
    delivery: false,
    pickup: false,
    email: "peter@nimbusfly.co",
    phone_number: "6477485323"
  }
])

retailers.each do |retailer|
  if retailer.name == 'Pure Releaf'
    retailer.products.create!([
      {
        name: "OCTOBER'S VERY OWN",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [11, 35, 70, 130, 250],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "LINDSAY O.G.",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [11, 35, 70, 130, 250],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "DEATH BUBBA",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "Purple Candy",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [8, 25, 50, 95, 190],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "FIRE O.G",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [8, 25, 50, 95, 190],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "BUBBA OG",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [8, 25, 50, 95, 190],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "MATARO BLUE",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [8, 25, 50, 95, 190],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "PURPLE KUSH",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [8, 25, 50, 95, 190],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "PURPLE GOD",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "ROCKSTAR",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [8, 25, 50, 95, 190],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "MASTER KUSH",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [6, 20, 40, 75, 150],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "DIAMOND OG",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "UBC CHEMO KUSH",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [6, 20, 40, 75, 150],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "MOBY DICK",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "KISH",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "BUBBA KUSH",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [6, 20, 40, 75, 150],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "UBC CHEMO",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "NUKEN",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "VIPER",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Super_Silver_Haze_2_DSC_3998.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Sativa"
      },
      {
        name: "MANGO HAZE",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Super_Silver_Haze_2_DSC_3998.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Sativa"
      },
      {
        name: "MOBY DICK",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Super_Silver_Haze_2_DSC_3998.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Sativa"
      },
      {
        name: "MANGO HAZE",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Super_Silver_Haze_2_DSC_3998.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Sativa"
      },
      {
        name: "HAWAIIAN",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Super_Silver_Haze_2_DSC_3998.jpg"],
        prices: [6, 20, 40, 75, 150],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Sativa"
      },
      {
        name: "SUPER LEMON HAZE",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Super_Silver_Haze_2_DSC_3998.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Sativa"
      },
      {
        name: "PURP VOODOO",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Moby_DSC_3759.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "AK-47",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Moby_DSC_3759.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "SHISKABERRY",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Moby_DSC_3759.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "ORANGE KUSH",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Moby_DSC_3759.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "SUPER LEMON HAZE",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Moby_DSC_3759.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "SKUNK BERRY",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Moby_DSC_3759.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "BURMESE KUSH",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Moby_DSC_3759.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "WHITE WIDOW",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Moby_DSC_3759.jpg"],
        prices: [10, 30, 60, 110, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "Candy Kush",
        images: ["./assets/img/shatter_hover.png"],
        prices: [25],
        price_labels: ["per gram"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Concentrates"
      },
      {
        name: "Ambrosia",
        images: ["./assets/img/shatter_hover.png"],
        prices: [25],
        price_labels: ["per gram"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Concentrates"
      },
      {
        name: "Green Crack",
        images: ["./assets/img/shatter_hover.png"],
        prices: [35],
        price_labels: ["per gram"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Concentrates"
      },
      {
        name: "Madonna",
        images: ["./assets/img/shatter_hover.png"],
        prices: [35],
        price_labels: ["per gram"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Concentrates"
      },
      {
        name: "Phyto: AF GOO",
        images: ["./assets/img/shatter_hover.png"],
        prices: [50],
        price_labels: ["per gram"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Concentrates"
      },
      {
        name: "Pre-Rolled",
        images: ["./assets/img/prerolls.jpg"],
        prices: [5],
        price_labels: ["each"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Pre-rolls"
      },
      {
        name: "Pre-Rolled",
        images: ["./assets/img/prerolls.jpg"],
        prices: [5],
        price_labels: ["each"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Pre-rolls"
      },
      {
        name: "Pre-Rolled",
        images: ["./assets/img/prerolls.jpg"],
        prices: [5],
        price_labels: ["each"],
        description: "There's no description for this item",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Pre-rolls"
      }
    ])
  end
end
