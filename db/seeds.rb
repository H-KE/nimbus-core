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
    image_url: 'https://static1.squarespace.com/static/56ad28197da24fafb23f972c/56ad32b3f8baf35958c26d38/56b93a2f01dbae64ff7226d5/1456210131673/279A6571.jpg?format=500w',
    name: 'Alair Vaporizer',
    address: '588 Dufferin Street, M4A 2M5',
    description: 'Extend the good life to the air you breathe. With a subtle profile and a joyful disposition, an Alair vaporizer is enjoyable, portable and rarely out of place. Whatever your lifestyle, just plug, vape and play.',
    mail: true,
    delivery: true,
    pickup: true,
    shipping_fee: 10,
    email: "peter@nimbusfly.co",
    phone_number: "6474624663"
  },
  {
    image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbdSNJNo93KSBu2IJZSZSD_4EDCVpVHdh7a39exPGrQC_6pfpMVA",
    name: 'The Green Cross',
    address: '170 Islington Ave, M9V 2X5',
    description: 'Dedicated to the betterment of our fellow neighbours, we source and distribute medicinal cannabis products of the utmost quality. We specialize in a variety of products including flowers, capsules, tinctures, and edibles.',
    mail: true,
    delivery: false,
    pickup: false,
    shipping_fee: 10;
    email: "peter@nimbusfly.co",
    phone_number: "6474624663"
  },
  {
    image_url:"https://d3ix816x6wuc0d.cloudfront.net/i/357531/w768",
    name: 'Pure Releaf',
    address: '897 Dundas ST W, Toronto',
    description: 'Dedicated to the betterment of our fellow neighbours, we source and distribute medicinal cannabis products of the utmost quality. We specialize in a variety of products including flowers, concentrates, Pre-rolls, and others.',
    mail: true,
    delivery: false,
    pickup: false,
    shipping_fee: 15;
    email: "peter@nimbusfly.co",
    phone_number: "6477485323"
  },
  {
    image_url: 'https://pbs.twimg.com/media/CVaQybOXIAAPrwG.png',
    name: 'The High Line',
    address: '2012 Neilson Avenue, M1M 1V1',
    description: 'No description found for this dispensary.',
    mail: true,
    delivery: true,
    pickup: true,
    shipping_fee: 18;
    email: "peter@nimbusfly.co",
    phone_number: "9999999999"
  },
  {
    image_url: 'https://d2kxqxnk1i5o9a.cloudfront.net/uploads/avatars/deliveries/14283/large_Medical-Marijuana.jpg',
    name: 'MC Medical',
    address: 'Oshawa, ON',
    description: 'We are a mobile medical dispensary that has compassion we deliver in the durham region within 1 hour!! we offer mail order to anywere in Canada please call or email to place an order we offer a range of different strains edibles concentrates and more. Accepted verification documents includes government issued photo ID, MMPR , LP card or doctor prescription.',
    mail: true,
    delivery: true,
    pickup: true,
    shipping_fee: 21;
    email: "peter@nimbusfly.co",
    phone_number: "647-853-8697"
  },
])

retailers.each do |retailer|
  if retailer.name == 'Alair Vaporizer'
    retailer.products.create!([
      {
        name: "Vaporizer Starter Kit",
        images: ["https://static1.squarespace.com/static/56ad28197da24fafb23f972c/56ad354489a60aa6dae3a3c8/56b93c5662cd942d9bbe7c5e/1454980185264/279A61491.jpg?format=1500w", "https://static1.squarespace.com/static/56ad28197da24fafb23f972c/56ad354489a60aa6dae3a3c8/56b93c568a65e27e69cd08f2/1456207918261/279A61411.jpg?format=1500w", "https://static1.squarespace.com/static/56ad28197da24fafb23f972c/56ad354489a60aa6dae3a3c8/56cbf7f11bbee05e52d8373e/1456207918075/279A6219.jpg?format=1500w", "https://static1.squarespace.com/static/56ad28197da24fafb23f972c/56ad354489a60aa6dae3a3c8/56b93c578a65e27e69cd08f6/1456207918264/279A60111.jpg?format=1500w"],
        prices: [125],
        price_labels: ["each"],
        description: "Dressed all in black with a touch of gold, the classic ALAIR Vaporizers are well-suited to any occasion. Each vaporizer comes with a filled cartridge that will last 150+ draws and USB charger adaptor.
(THC) Tetrahydrocannabinol: 274mg(68%) 1.82mg Per Draw
(CBD) Cannabidiol: 1.4mg(0.35%) 0.01mg Per Draw
(CBN) Cannabinol: 0mg(0%) 0.00mg Per Draw

Ingredients: Pure CO2 Extracted Cannabis Oil Processed with Food Grade Ethanol.",
        thc: 68,
        cbd: 0.35,
        subspecies: "Hybrid",
        category: "Vaporizers"
      },
      {
        name: "Filled Cartridge - Single",
        images: ["https://static1.squarespace.com/static/56ad28197da24fafb23f972c/56ad354489a60aa6dae3a3c8/577d1cc0ff7c50f540e26b7b/1467817153466/279A6192%2Bsingle.jpg?format=1500w", "https://static1.squarespace.com/static/56ad28197da24fafb23f972c/56ad354489a60aa6dae3a3c8/577d1cbcff7c50f540e26b5e/1467817149101/1cartridge.jpg?format=1500w"],
        prices: [75],
        price_labels: ["each"],
        description: "Each cartridge comes filled with 150+ draws, and is easy to load into your existing Alair vaporizer.
 Girl Scout Cookies Quad A Buds used to give testing results in each:
 (THC) Tetrahydrocannabinol: 274mg(68%) 1.82mg Per Draw
 (CBD) Cannabidiol: 1.4mg(0.35%) 0.01mg Per Draw
 (CBN) Cannabinol: 0mg(0%) 0.00mg Per Draw

 Ingredients: Pure CO2 Extracted Cannabis Oil Processed with Food Grade Ethanol.",
        thc: 68,
        cbd: 0.35,
        subspecies: "Hybrid",
        category: "Cartridges"
      },
      {
        name: "Filled Cartridge - Single (CBD)",
        images: ["https://static1.squarespace.com/static/56ad28197da24fafb23f972c/56ad354489a60aa6dae3a3c8/577d1cc0ff7c50f540e26b7b/1467817153466/279A6192%2Bsingle.jpg?format=1500w", "https://static1.squarespace.com/static/56ad28197da24fafb23f972c/56ad354489a60aa6dae3a3c8/577d1cbcff7c50f540e26b5e/1467817149101/1cartridge.jpg?format=1500w"],
        prices: [50],
        price_labels: ["each"],
        description: "Each cartridge comes filled with 150+ draws, and is easy to load into your existing ALAIR Vaporizer.
 Quantum Kush:
 Tetrahydrocannibinol (THC) 185mg(42%) 1.2mg Per Draw
 Cannabidiol (CBD) 34mg(8%) 0.2mg Per Draw
 Cannabinol (CBN)",
        thc: 42,
        cbd: 8,
        subspecies: "Hybrid",
        category: "Cartridges"
      }
    ])
  elsif retailer.name == 'The Green Cross'
    retailer.products.create!([
      {
        name: "DiabloXNemesisXPinkKush",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Diablo_Nemesis_PinkKush_DSC_5632.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "The superdense buds of this un-familiar lineage have avery unique colour palette that shimmer in a heroic silver tinge. The flavours are very characteristic of Kush with an indica high that is exceptionally strong. This fortified strain is definitely a nighttime toke that shouldn’t be taken for granted. The high is a serious creeper that will continue to slowly build and intensify long after the last hit- So puff cautiously.",
        thc: 25,
        cbd: 0.41,
        subspecies: "Indica",
        category: "Flowers"
      },
      {
        name: "Tuna Kush",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Tuna_DSC_1635.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "The strain has been deemed one of the most potent available producing small, dense nuggets that are hard-caked with resin. Expect notes of pungent skunk, fuel, and a delicate sweetness intermixed. Common effects of relaxed, cheerful mind, with top medicinal uses for appetite loss and stress. This thick, sharp smoke provides an instant and fast0acting body stone that is extremely long lasting and powerful.",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Flowers"
      },
      {
        name: "Purple Kush",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Purple+Kush_DSC_1623.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "It has the looks, the flavours, and the effects that make it a well-rounder bud. The flower’s violet colouring is wildly saturated and distinct. The aromas bring out a nose-tingling grape fuel that tastes exactly as it smells. The euphoric sedation reaches every body part and intensifies with no end, so its best to enjoy Purple Kush before bedtime.",
        thc: 14,
        cbd: 0.22,
        subspecies: "Indica",
        category: "Flowers"
      },
      {
        name: "Purple Candy",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Purple+Candy_DSC_1637.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Perfectly named, this frosty strain is commonly thought to be a cross of BC Sweet Tooth and Mendocino Purps, and its large flowers with rich purple colouring and amber hairs support the purple genetics. The sensation will settle into a full body buzz that may leave you lazy and ready for bed with some happy sativa effects.",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Flowers"
      },
      {
        name: "Green Crack",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Green_Crack_DSC_5663.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Few strains compare to the sharp energetic and focused buzz that keeps an invigorating pace throughout the day. With a tangy, fruity flavour redolent of mango, Green crack is the perfect daytime medication for patients treating fatigue, stress, and depression. It should come to no surprise then, that medicating with this strain before bed is not advised an experience with no mental crash.",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Flowers"
      },
      {
        name: "Harlequin",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Harlequin_DSC_4006.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "A cross between Colombian Gold, Thai and Swiss Landrace. A sativa dominant with a unique CBD ratio in other words levels of 4-10% CBD with THC levels around 7-15%. Its aromatic popularity from earthy musk, and sweet mango essence, act as the most viable relaxing and calming agents. Excellent for any symptom regarding pain inflammation or stress, with an effect for patients feeling mellow calming and relaxed.",
        thc: 11,
        cbd: 7,
        subspecies: "Hybrid",
        category: "Flowers"
      },
      {
        name: "Jack Herer",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Jack_Herer_DSC_3771.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Sativa dominant strain that has gained much renown as its namesake, the marijuana activist and author of The Emporor Wears No Clothes. Combining a Haze hybrid with a Northern Lights and Shiva Skunk cross, Creates and captures both the cerebral elevation associated with sativa and the heavy resin production of indica's. This staple strain has happy, uplifting, and creative head space perfect for patients in need of stress, pain or depression relief. ",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Flowers"
      },
      {
        name: "Mendocino Purps",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Mendocino+Purps_DSC_1641.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Mendocio Purps, or Mendo Purps, or even just The Purpls, comes out of Mendocino County in Northern California. It has medium-thick leaves and green hues that turn more purple as the plant cures. The taste has been likened to a caramel coffee and woodsy pine, leaving the user relaxed with no stress - excellent for insomnia or fatigue.",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Flowers"
      },
      {
        name: "MK Ultra",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/MK+Ultra_DSC_1625.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Named after the methods of mental manipulation employed by the CIA’s Project MKUltra, this indica-dominant strain stands apart due to its powerful cerebral effects. A cross between mostly- sativa OG kush and indica G-13. Renewed for its hypnotic effects that are fast acting and best used when strong medication is desired. This indica is one of the strongest in the world and might be best for a day when not getting off the couch would be fine.",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Flowers"
      },
      {
        name: "Moby Dick",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Moby_DSC_3759.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Originating as one of the strongest sativa with a very high THC content, this strain is a cross between indica-dominant hybrid White Widow and sativa Haze; the former is know for its power while the latter for its cerebral stimulation. This strain is a mostly sativa plant that delivers a charged buzz, with a sweet citrus from the Haze, which dominates the palate with vanilla and eucalyptus tones.",
        thc: 25,
        cbd: 0.41,
        subspecies: "Hybrid",
        category: "Flowers"
      },
      {
        name: "Nebula",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Nebula_DSC_3770.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Its name means “Starcloud” highly described as intense and almost psychedelic. With a THC coating unlike most buds, known to smell and taste like honey, and a head and body buzz thats favourable for stress, pain and fatigue.",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Flowers"
      },
      {
        name: "Nuken",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Nuken_DSC_1608.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "The mostly indica Nuken is a Canadian strain bred by combining genetics from Kish( a cross of two Shiskaberry parents) and God Bud. Typically leaves you functional enough to still enjoy hobbies and the social company of others, while undeniably strong with sweet, earthy aroma’s such as fresh herbs and grass. Many patients with muscle spasm in particular with stress and pain for relief.",
        thc: 18.5,
        cbd: 0,
        subspecies: "Indica",
        category: "Flowers"
      },
      {
        name: "OG Kush",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/OG+Kush_DSC_1618.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Makes up the genetic backbone of West Coast cannabis varieties, but in spite of its ubiquity its genetic origins remain an mystery. Popular myth maintains that Chemdawg and Hindu Kush parented OG Kush, passing on the distinct ”Kush” bud structure we see in many strains today. However, nobody is fully clear as to when in the Early 90’s first propagators of the seed. Still today is cherished for its ability to crush stress under the weight of its heavy euphoria. It carries an earthy pine and sour lemon scent with woody undertones, an aroma that has become the signature of OG Kush varieties and descendants. With OG Kush, patients most commonly cite improvements in migraines, ADD/ADHD, and stress disorders.",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Flowers"
      },
      {
        name: "Sour Diesel",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Sour_Diesel_DSC_3945.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Sometimes called Sour D, is an invigorating sativa named after its pungent, diesel-like aroma. This fast-acting delivers energizing, dreamy cerebral effects that have pushed Sour Diesel to its legendary status. Stress, pain, and depression fade away in long-lasting relief that makes it a top choice for medical patients. Believed to have descended from Chemdawg, Northern Lights, and a Skunk phenotype.",
        thc: 19.5,
        cbd: 5,
        subspecies: "Sativa",
        category: "Flowers"
      },
      {
        name: "Sour Tangie",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Sour_Tangie_DSC_5650.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Bringing together the classic Sour Diesel aroma with Tangie’s creative, elevating buzz and strong citrus overtones. This 80% Sativa has a quick mood boost, feeling energetic and uplifted. Patients with lack of appetite, stress or depression find relief in mood altering Sativa.",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Flowers"
      },
      {
        name: "Sourlope",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Sourlope_DSC_5680.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "A sativa dominant cross know for its uplifting and energetic effects. Believed to be a hybrid of NYC Diesel and Cannalope Haze genetics, Sourlope creates a mix of tropical flavours that are sharpened by a strong diesel note. The elevated mood creative head space attributed to this strain make it a great choice for daytime use and when combating stress and fatigue.",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Flowers"
      },
      {
        name: "Strawberry Cough",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Strawberry_Cough_DSC_5671.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Know for its sweet smell of fresh strawberries and an expanding sensation that can make even the most seasoned consumer cough, Strawberry Cough is a potent sativa blend with mysterious genetic origins. The skunky, berry flavours will capture your senses while the cerebral, uplifting effects provide an aura of euphoria that is sure to leave a smile on your face. A great solution for managing social anxieties and to balance yourself in time of elevated stress.",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Flowers"
      },
      {
        name: "Super Silver Haze",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Super_Silver_Haze_2_DSC_3998.jpg"],
        prices: [10, 35, 70, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "By Crossing the genetics of Skunk, Northern Lights, and Haze, we are left with a beautiful, sticky sativa blend that boasts an energetic, long lasting body high. The uplifting effects are a great remedy for high stress levels or when suffering from a lack of appetite or nausea. Considered to be good for headaches, migraines, and producing a calming, uplifting, clearheaded feeling of content.",
        thc: 19,
        cbd: 2.43,
        subspecies: "Sativa",
        category: "Flowers"
      },
      {
        name: "Okanagan Valley Harvest Mango(70mg THC)",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Okanaga_Valley_Harvest_Mango_DSC_3900.jpg"],
        prices: [15],
        price_labels: ["each"],
        description: "Okanagan Valley Harvest edibles are delicious and healthy options for consuming cannabis, without sulphites, allergens and gluten free. We recommend medicating with edibles for a long lasting and therapeutic full-body effect. Edibles represent a great alternative to capsules and increase bioavailability of cannabinoids by introducing healthy fats and oils that help facilitate absorption of cannabinoids. Conveniently packaged, easy to titrate with and store/freeze for later use. Each bag contains several discrete servings so that measuring and weighting is unnecessary. Mango slices give a healthy option for people who are trying to avoid the sugars and carbohydrates contained in traditional “cannabis baking”. Medicated with premium cannabis oils using our proprietary process insure even distribution of active compounds.",
        thc: 70,
        cbd: 0,
        subspecies: "",
        category: "Edibles"
      },
      {
        name: "Okanagan Valley Harvest Pineapples(70mg THC)",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Okanaga_Valley_Harvest_Pineapple_DSC_3892.jpg"],
        prices: [15],
        price_labels: ["each"],
        description: "Okanagan Valley Harvest edibles are delicious and healthy options for consuming cannabis, without sulphites, allergens and gluten free. We recommend medicating with edibles for a long lasting and therapeutic full-body effect. Edibles represent a great alternative to capsules and increase bioavailability of cannabinoids by introducing healthy fats and oils that help facilitate absorption of cannabinoids. Conveniently packaged, easy to titrate with and store/freeze for later use. Each bag contains several discrete servings so that measuring and weighting is unnecessary. Pineapple rings give a healthy option for people who are trying to avoid the sugars and carbohydrates contained in traditional “cannabis baking”. Medicated with premium cannabis oils using our proprietary process insure even distribution of active compounds.",
        thc: 70,
        cbd: 0,
        subspecies: "",
        category: "Edibles"
      },
      {
        name: "20mg CBD Hemp",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Hemp_CBD_Cap_20mg_DSC_3796.jpg"],
        prices: [1.50],
        price_labels: ["each"],
        description: "Hemp capsules are produced from milled hemp plants which have been lightly heated in industrial ovens to maximize their beneficial compounds. This simple but effective product is often used as a daily supplement to improve health and vitality. Symptoms of inflammatory conditions such as arthritis are also known to lessen in severity. Typically, Cannabis capsules are used to maintain longer periods of medication in the body. Designed to treat nausea, neuropathic pain, anxiety, spasms, MS and other spasticity disorders without the mind altering properties of contemporary cannabis products. It also has neuro-protective and anti-cancer properties.",
        thc: 0,
        cbd: 20,
        subspecies: "Indica",
        category: "Capsules"
      },
      {
        name: "10mg CO2 CBD",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Co2_CBD_10mg_CloseUp_DSC_3871.jpg"],
        prices: [2.50],
        price_labels: ["each"],
        description: "Capsules produced with solvent free extracts formulated with coconut oil. These capsules have been produced using cannabis concentrations which have no solvents. By using CO2 derived extracts these capsules are considered by many to be the healthiest option. CO2 processing is the healthier choice for members who are sensitive to safe solvent extracted products.",
        thc: 0,
        cbd: 10,
        subspecies: "Indica",
        category: "Capsules"
      },
      {
        name: "Hexane CBD 10mg",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Hexane_CBD_10mg_Caps_CloseUp_DSC_3867.jpg"],
        prices: [3.00],
        price_labels: ["each"],
        description: "Capsules produced with cannabis concentrates formulated with coconut oil. These capsules deliver a metered dose of THC/CBD available in varying dosages and content formulations. The cannabis concentrate is mixed with MCT oil to help the body to more fully absorb the beneficial compounds.",
        thc: 0,
        cbd: 10,
        subspecies: "Indica",
        category: "Capsules"
      },
      {
        name: "CBD Rick Simpson Oil 1Gram Tears(34% CBD / 340mg)",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Co2_CBD_Syringe_40%25_Single_DSC_3864.jpg"],
        prices: [50.00],
        price_labels: ["each"],
        description: "Cannabis oils packaged in syringes are typically called Tears, easy to dispense and provide access to highly concentrated extractions in their raw un-diluted form. Small amounts of cannabis oil can be ‘pushed” out of the tip of the syringe and applied to food items, vaporized or taken orally/topically.
        Produced for centuries in varied methods solvent extracted cannabis oils are pure un-diluted extracts which have been proven as beneficial for both acute an chronic pain conditions. The solvent used in these extracts is varied and will produce a slightly different consistency batch to batch depending on both the conditions of the production process and material.",
        thc: 0,
        cbd: 34,
        subspecies: "",
        category: "Cannabis Oil (Tears)"
      },
      {
        name: "THC Rick Simpson Oil 1Gram Tears(67% THC)",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Co2_CBD_Syringe_40%25_Single_DSC_3864.jpg"],
        prices: [17.00],
        price_labels: ["each"],
        description: "Cannabis oils packaged in syringes are typically called Tears, easy to dispense and provide access to highly concentrated extractions in their raw un-diluted form. Small amounts of cannabis oil can be ‘pushed” out of the tip of the syringe and applied to food items, vaporized or taken orally/topically.
        Produced for centuries in varied methods solvent extracted cannabis oils are pure un-diluted extracts which have been proven as beneficial for both acute an chronic pain conditions. The solvent used in these extracts is varied and will produce a slightly different consistency batch to batch depending on both the conditions of the production process and material.",
        thc: 67,
        cbd: 0,
        subspecies: "",
        category: "Cannabis Oil (Tears)"
      },
      {
        name: "1:1 Rick Simpson Oil 1Gram Tears(200mgCBD/THC)",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Co2_CBD_Syringe_40%25_Single_DSC_3864.jpg"],
        prices: [34.00],
        price_labels: ["each"],
        description: "Cannabis oils packaged in syringes are typically called Tears, easy to dispense and provide access to highly concentrated extractions in their raw un-diluted form. Small amounts of cannabis oil can be ‘pushed” out of the tip of the syringe and applied to food items, vaporized or taken orally/topically.
        Produced for centuries in varied methods solvent extracted cannabis oils are pure un-diluted extracts which have been proven as beneficial for both acute an chronic pain conditions. The solvent used in these extracts is varied and will produce a slightly different consistency batch to batch depending on both the conditions of the production process and material.",
        thc: 20,
        cbd: 20,
        subspecies: "",
        category: "Cannabis Oil (Tears)"
      },
      {
        name: "CO2 40% CBD(400mg) Tears",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Co2_CBD_Syringe_40%25_Single_DSC_3864.jpg"],
        prices: [70.00],
        price_labels: ["each"],
        description: "Cannabis oils packaged in syringes are typically called Tears, easy to dispense and provide access to highly concentrated extractions in their raw un-diluted form. Small amounts of cannabis oil can be ‘pushed” out of the tip of the syringe and applied to food items, vaporized or taken orally/topically.
        These oils have been produced using CO2 extraction. Carbon dioxide under extreme pressure will act as an effective agent to extract the active compounds in cannabis. This method uses no hydrocarbon based inputs, as such it is considered by many to produce the safest product with no chance of residual solvents. ",
        thc: 0,
        cbd: 40,
        subspecies: "",
        category: "Cannabis Oil (Tears)"
      },
      {
        name: ": CO2 60% CBD(600mg) Tears",
        images: ["https://s3.amazonaws.com/media.nimbusfly.co/bailey/Co2_CBD_Syringe_40%25_Single_DSC_3864.jpg"],
        prices: [90.00],
        price_labels: ["each"],
        description: "Cannabis oils packaged in syringes are typically called Tears, easy to dispense and provide access to highly concentrated extractions in their raw un-diluted form. Small amounts of cannabis oil can be ‘pushed” out of the tip of the syringe and applied to food items, vaporized or taken orally/topically.
        These oils have been produced using CO2 extraction. Carbon dioxide under extreme pressure will act as an effective agent to extract the active compounds in cannabis. This method uses no hydrocarbon based inputs, as such it is considered by many to produce the safest product with no chance of residual solvents. ",
        thc: 0,
        cbd: 60,
        subspecies: "",
        category: "Flowers"
      }
    ])
  elsif retailer.name == 'MC Medical'
    retailer.products.create!([
      {
        name: "Bubba O.G",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3537645_bubba_o.g.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3537645_bubba_o.g.jpg",
        prices: [12, 40, 75, 130, 250],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Canadian breeders at Dr. Greenthumb Seeds crossed the popular medicinal strain Pre -98 Bubba Kush with Ghost OG to create a hybrid with the flavor of Bubba, the potency of OG, and yields better than either of the two. With a sweet, pungent smell and flavors of fruity hash and diesel, Bubba OG is a potent strain suitable for treating pain, muscle spasms, nausea, and insomnia.",
        thc: 0,
        cbd: 0,
        subspecies: "Indica",
        category: "Indica"
      },
      {
        name: "Green Crack",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3537693_green_crack.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3537693_green_crack.jpg",
        prices: [12, 40, 75, 130, 250],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Don’t let the name fool you: this is pure cannabis. Few strains compare to Green Crack’s sharp energy and focus as it induces an invigorating mental buzz that keeps you going throughout the day. With a tangy, fruity flavor redolent of mango, Green Crack is the perfect daytime medication for patients treating fatigue, stress, and depression. Green Crack has branched into two genetic lineages, the most common of which is its sativa line descended from Skunk #1. The 75% indica variety of Green Crack is said to have come from an Afghani strain, and is marked by a tighter bud structure. Because its name perpetuates a negative image of cannabis, some people have taken to calling this strain Cush (with a ‘C’) or Green Cush instead.",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Sativa"
      },
      {
        name: "Compassion Bud",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3417655_compassion.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3417655_compassion.jpg",
        prices: [8, 25, 40, 80, 150],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Outdoor compassion bud.",
        thc: 0,
        cbd: 0,
        subspecies: "Sativa",
        category: "Sativa"
      },
      {
        name: "Goldenberry",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3601007_IMG_20161014_124420.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3601007_IMG_20161014_124420.jpg",
        prices: [12, 40, 75, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "60% Sativa, 40% Indica, Sativa dominant. The Goldberry strain is a result of crossing the very popular indica Pot of Gold with Blueberry. Goldberry produces big, fluffy buds that are covered in crystals and often have deep orangey-red hairs. The flowers smell like fresh fruit—lemons and berries, to be specific—while the taste is reminiscent of blueberry lemonade with a slight skunky aftertaste. This hybrid is described as optimal for pain relief and relaxation due to its indica qualities.",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "Rocklock",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3600425_IMG_20161014_124019.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3600425_IMG_20161014_124019.jpg",
        prices: [12, 40, 75, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "85% Indica, 15% Sativa. Rocklock is a cross between the two strains Rockstar and Warlock. The smell of this herb is sweet and fruity. The stone is surprisingly stimulating given that it is primary an indica strain; which has some rather nice advantages when going out to a concert for example. Rocklock tastes hash-like and burns fast and evenly. On the medicinal side, this strain can offer relief from muscle tension and mild to medium aches and pains.",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "Buddha Tahoe O.G",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3600373_IMG_20161014_124748.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3600373_IMG_20161014_124748.jpg",
        prices: [12, 40, 75, 140, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "50% Indica, 50% Sativa. Buddha Tahoe is what you get when Big Buddha Seeds reverses Cali Connection’s Tahoe OG Kush to create their own rendition of this indica staple. Like its OG ancestors, Buddha Tahoe maintains a zesty lemon and earthy hash aroma typical of kush varieties. Potent and long-lasting, Buddha Tahoe launches you into to the highest level of cerebral euphoria which won this strain 3rd place in the 2011 High Times Cannabis Cup.",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "AAA Pink Kush",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3557135_pink_kush.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3557135_pink_kush.jpg",
        prices: [11, 40, 80, 140, 275],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Pink Kush, as coveted as its OG Kush relative, is an indica-dominant hybrid with powerful body-focused effects. In its exceptional variations, pink hairs burst from bright green buds barely visible under a blanket of sugar-like trichomes, with traces of a sweet vanilla and candy perfume. The potency of this strain could be considered overpowering, and even small doses are known to eliminate pain, insomnia, and appetite loss. Growers have to wait 10 to 11 weeks for Pink Kush’s flowering, but high yields of top-shelf buds are worth the wait.",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "Pink Pineapple Kush",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3557135_pink_kush.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3305302_pink_pineapple.jpg",
        prices: [12, 40, 75, 125, 240],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Pink Pineapple Kush is hybrid of Indica and Sativa. Most of its genetic material comes from an Indica strain originally grown in the mountainous Hindu Kush region that runs through central Afghanistan and across the border with Pakistan. As its name suggests, this weed has a unique taste with tropical fruity flavors underpinned by pineapple. Pineapple Kush delivers a powerful body hit followed by a stimulating mind stone. Even experienced smokers treat this potent strain with caution. Medicinally, it can help in the relief of muscle and joint pain. ",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "Master Kush",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3537536_master_kush.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3537536_master_kush.jpg",
        prices: [10, 35, 70, 125, 230],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Master Kush is a popular indica cross created out of two landrace strains from different parts of the Hindu Kush region. Master Kush is bred by the Dutch White Label Seed Company, located in Amsterdam. During maturation the plant produces a subtle earthy, citrus smell with a hint of incense, which is often described as a vintage flavor. The taste of Master Kush is reminiscent of the famous hard-rubbed charas hash. This strain holds a superb balance of full-body relaxation without the mind-numbing effect that many indica strains produce. Instead, Master Kush offers a sharpened sensory awareness that can bring out the best of any activity.",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "Blueberry Kush",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3537681_blueberry_kush.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3537681_blueberry_kush.jpg",
        prices: [10, 30, 60, 120, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Blueberry Kush is a strong indica strain that slowly brings on a heavy body sensation, helping patients forget their pain and relax. Originally from Oregon, this strain is a hybrid of Blueberry and OG Kush, which is evident in its fresh berry aroma with notes of earthy herbalness.",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "Pineapple Kush",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3246131_pineapple.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3246131_pineapple.jpg",
        prices: [10, 30, 60, 120, 210],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Pineapple Kush marijuana strain has an aroma of pineapple with accents of caramel and butter. The flavor is described as a subtle sweet pineapple taste with a mint undertone. While the breeder of this strain is unknown, its parents are Pineapple and Master Kush. The buds are brown/green in color and covered with amber crystals. With a THC content of up to 15% and CBD of 0.14%, the buzz is commonly described as cerebral, with a light body sensation.",
        thc: 15,
        cbd: 0.14,
        subspecies: "Hybrid",
        category: "Hybrid"
      },
      {
        name: "Phyto (with golden ticket)",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3665223_IMG_20161022_171605.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3665223_IMG_20161022_171605.jpg",
        prices: [35, 65, 120],
        price_labels: ["0.5g", "1g", "2g"],
        description: "Mk ultra, purple trainwreck,organic zed.",
        thc: 0,
        cbd: 0,
        subspecies: "Concentrate",
        category: "Extract"
      },
      {
        name: "Gold Seal Hash",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3557100_gold_seal.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3557100_gold_seal.jpg",
        prices: [10, 20, 35],
        price_labels: ["0.5g", "1g", "2g"],
        description: "Gold Seal Hash",
        thc: 0,
        cbd: 0,
        subspecies: "Hash",
        category: "Extract"
      },
      {
        name: "Raw c02 Distilite",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3665218_IMG_20161022_172836.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3665218_IMG_20161022_172836.jpg",
        prices: [10, 20, 35],
        price_labels: ["0.5g", "1g", "2g"],
        description: "Clear Raw c02 Distilite 97%. By high grade extracts",
        thc: 97,
        cbd: 0,
        subspecies: "Concentrate",
        category: "Extract"
      },
      {
        name: "Pheonix Tears 500mg THC oil",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3508891_phoenix_tears.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3508891_phoenix_tears.jpg",
        prices: [30],
        price_labels: ["each"],
        description: "500 mg thc for oral use great for curing caner and much more.",
        thc: 500,
        cbd: 0,
        subspecies: "Edible",
        category: "Edible"
      },
      {
        name: "Pure CBD oil 65 mg",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3508916_cbd_oil.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3508916_cbd_oil.jpg",
        prices: [25],
        price_labels: ["each"],
        description: "65 mg of CBD for oral use.",
        thc: 0,
        cbd: 65,
        subspecies: "Edible",
        category: "Edible"
      },
      {
        name: "Chocolates 50 mg of THC 3 PK",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3175529_chocolates.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3175529_chocolates.jpg",
        prices: [10],
        price_labels: ["each"],
        description: "Some delicious chocolates.",
        thc: 50,
        cbd: 0,
        subspecies: "Edible",
        category: "Edible"
      },
      {
        name: "Pixie Pop (COLA)",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3508940_pixie_pop.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3508940_pixie_pop.jpg",
        prices: [7],
        price_labels: ["each"],
        description: "Infused pop 125 mg of THC 6 mg CBD Pixie brand.",
        thc: 125,
        cbd: 6,
        subspecies: "Edible",
        category: "Edible"
      },
      {
        name: "MJ Creams",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3278050_pure_mj.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3278050_pure_mj.jpg",
        prices: [30],
        price_labels: ["each"],
        description: "All of our products are infused with a blend of high-potency Marijuana Resin and Cannabis Hemp Seed Oil.

 Marijuana Resin is rich in medicinal cannabinoids including THC and CBD. These cannabinoids have a wide variety of medicinal benefits when applied topically.

 Cannabis Hemp Seed Oil also has many health benefits. It is loaded with Essential Fatty Acids and Gamma-linoleic acid, which help nourish and moisturize the skin.

 We have also added various pure essential oils and extracts, which act synergistically together with the cannabinoids, to increase the specific medicinal benefits of each formulation.

 * Marijuana-infused topical applications can reduce symptoms of many skin and muscle conditions, including:

 Arthritis, Burns, Chapping, Cheilitis, Chronic Pain, Cold Sores, Cramps, Cuts &amp; scrapes, Eczema, Inflammation, Insect bites, Joint Pain, Migraine, Muscle Pain, Psoriasis, Rashes, Rheumatism, Skin Allergies, Sunburn, Tendonitis, Post-surgical pain.
 We carry two types of products: MJ Creams and MJ Salves

 MJ CREAMS - High-potency. Neutral cream infused with marijuana resin, hemp oil and essential oils. Our creams are our top-selling items. They are best for deep penetration and immediate relief of pain, inflammation, rashes and other skin and muscle conditions.

 Our MJ Creams are available in the following formulations: PURE (Plain), PAIN (Arnica &amp; Juniper), SKIN (Comfrey &amp; Calendula), HEAT (Cinnamon &amp; Ginger) and CALM (Lavender &amp; Chamomile).

 Cream Ingredients: Water, Sunflower Oil, Steric Acid, Shea Butter, Jojoba Seed Oil, Cannabis Hemp Seed Oil, Marijuana Resin, Essential oils, Carbomer, Sodium Hydroxide, Xanthan Gum, Tetrasodium EDTA, caprylyl glyocol, phenoxyethanol.

 Learn more about the cream ingredients here.

 MJ SALVES - High-potency. Beeswax infused with marijuana resin, hemp oil and essential oils. The salves are best for protecting the skin and lips from chapping, sores and outbreaks. Also used for treating cuts, bruises and insect bites.

 Our MJ Salves are currently available in the following two formulations: PAIN (Arnica &amp; Juniper) and LIPS (Vitamin E &amp; Tea Tree).

 Salve Ingredients: Organic Beeswax, Organic Coconut Oil, Cannabis Hemp Oil, Marijuana Resin, Essential oils.
 price is for the 50 ml jars.",
        thc: 0,
        cbd: 0,
        subspecies: "Cream",
        category: "Topical"
      },
      {
        name: "Crop King Seed",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3278105_crop_king.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3278105_crop_king.jpg",
        prices: [60],
        price_labels: ["each"],
        description: "If you are a medical patient, a closet grower or an experienced grow master, we have the best strains for sale for large yields, high levels of THC and various varieties of Indica, Sativa and Hybrid cannabis plants. Crop King seeds has same day shipping available for Canada and all countries in the world that come with a catalog and our state of the art pot seed packaging.crop king seeds offers a 24 hour a day customer service line for any seeds that don't grow.

 Choosing the Right Type of Marijuana Seeds for You

 Before you purchase pot seeds you should know that price is not always the most important thing. Cheap marijuana seeds are cheap for a reason because they might have a poor germination rate or might not be viable for germinating. Most of our customers choose strains that have large yields and high THC content with a High or Low CBD (cannabidiol) rating as well as CBN (cannabinol) levels.

 Feminized or Autoflowering Marijuana Seeds For Sale

 We have a large selection of indoor or outdoor marijuana seeds for sale from Cannabis Cup winners such as White Widow and Northern Lights. Feminized marijuana seeds will produce only female plants from which produce the flower or the bud which is the smokeable part which contains THC. Autoflowering marijuana seeds are fast flowering strains that will flower automatically during any light cycle.",
        thc: 0,
        cbd: 0,
        subspecies: "Seed",
        category: "Grow"
      },
      {
        name: "420 Pen Pal Shatter Pens",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3557148_pen_pals.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3557148_pen_pals.jpg",
        prices: [80],
        price_labels: ["each"],
        description: "Loaded with 500mg. Liquid Shatter, Included : Battery, charger.",
        thc: 0,
        cbd: 0,
        subspecies: "Pen",
        category: "Gear"
      },
      {
        name: "420 Pen Pal Cartridges 500 mg Liquid Shatter",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3557184_cartridges.jpg"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3557184_cartridges.jpg",
        prices: [60],
        price_labels: ["each"],
        description: "For 420 pen pals will also work with any 510 thread.",
        thc: 0,
        cbd: 0,
        subspecies: "Cartridge",
        category: "Gear"
      },
      {
        name: "420 Pen Pal Cartridges 500 mg Liquid Shatter",
        images: ["https://images.weedmaps.com/pictures/listings/283/515/853/large/3208046_large_PREE-ROLL_1024x1024.png"],
        thumbnail: "https://images.weedmaps.com/pictures/listings/283/515/853/medium_oriented/3208046_large_PREE-ROLL_1024x1024.png",
        prices: [10],
        price_labels: ["each"],
        description: "Nicely rolled with hybrid kush for the road.",
        thc: 0,
        cbd: 0,
        subspecies: "Hybrid",
        category: "Preroll"
      },
    ])
  elsif retailer.name == 'Pure Releaf'
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
  else
    retailer.products.create!([
      {
        name: "OG Kush",
        images: ["./assets/img/OG_kush.jpg", "./img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
        prices: [15, 45, 80, 150, 280],
        price_labels: ["Gram (1g)", "Eighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "OG Kush is cherished for its ability to crush stress under the weight of its heavy euphoria. It carries an earthy pine and sour lemon scent with woody undertones, an aroma that has become the signature of OG Kush varieties and descendants.",
        thc: 19.5,
        cbd: 5,
        subspecies: "Indica",
        category: "Flowers"
      },
      {
        name: "Girl Scout Cookies",
        images: ["./assets/img/Girl_Scout.jpg", "./img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
        prices: [15, 45, 80, 150, 280],
        price_labels: ["Gram (1g)", "chighth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "With a sweet and earthy aroma, Girl Scout Cookies launches you to euphoria’s top floor where full-body relaxation meets a time-bending cerebral space. A little goes a long way with this hybrid, whose THC heights have won Girl Scout Cookies numerous Cannabis Cup awards.",
        thc: 26.5,
        cbd: 3,
        subspecies: "Hybrid",
        category: "Flowers"
      },
      {
        name: "Sour Diesel",
        images: ["./assets/img/Sour_Diesel.jpg", "./img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
        prices: [15, 45, 80, 150, 280],
        price_labels: ["Gram (1g)", "Echghth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Sour Diesel, sometimes called Sour D, is an invigorating sativa named after its pungent, diesel-like aroma. This fast-acting strain delivers energizing, dreamy cerebral effects that have pushed Sour Diesel to its legendary status. Stress, pain, and depression fade away in long-lasting relief that makes Sour Diesel a top choice among medical patients.",
        thc: 20.5,
        cbd: 1,
        subspecies: "Sativa",
        category: "Flowers"
      },
      {
        name: "Train Wreck",
        images: ["./assets/img/Sour_Diesel.jpg", "./img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
        prices: [15, 45, 80, 150, 280],
        price_labels: ["Gram (1g)", "Echghth (3.5g)", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "Trainwreck is a mind-bending hybrid with potent sativa effects that hit like a freight train. Mexican and Thai sativas were bred with Afghani indicas to produce this Northern California staple, passing on a sweet lemon and spicy pine aroma. Trainwreck begins its speedy hurtle through the mind with a surge of euphoria, awakening creativity and happiness.",
        thc: 18.5,
        cbd: 8,
        subspecies: "Hybrid",
        category: "Flowers"
      },
      {
        name: "Shake Mix",
        images: ["./assets/img/Shake_Mix.jpg"],
        prices: [80, 150, 280],
        price_labels: ["Eighth (3.5gch", "Quarter (7g)", "Half (14g)", "Ounce (28g)"],
        description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
        thc: 15,
        cbd: 5,
        subspecies: "Hybrid",
        category: "Flowers"
      },
      {
        name: "Milk Chocolate Bar",
        images: ["./assets/img/Kraken84.jpeg"],
        prices: [18],
        price_labels: ["each"],
        description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
        thc: 15,
        cbd: 5,
        subspecies: "Hybrid",
        category: "Edibles"
      },
      {
        name: "Smores Brownie",
        images: ["./assets/img/smoresbrownie.png"],
        prices: [18],
        price_labels: ["each"],
        description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
        thc: 15,
        cbd: 5,
        subspecies: "Hybrid",
        category: "Edibles"
      },
      {
        name: "Cannabis Pop",
        images: ["./assets/img/sprig.jpg"],
        prices: [18],
        price_labels: ["each"],
        description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
        thc: 15,
        cbd: 5,
        subspecies: "Hybrid",
        category: "Edibles"
      },
      {
        name: "Premium Shatter",
        images: ["./assets/img/shatter_hover.png"],
        prices: [18],
        price_labels: ["each"],
        description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
        thc: 15,
        cbd: 5,
        subspecies: "Hybrid",
        category: "Concentrates"
      },
      {
          name: "Premium Wax",
        images: ["./assets/img/wax_hover.png"],
        prices: [18],
        price_labels: ["each"],
        description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
        thc: 15,
        cbd: 5,
        subspecies: "Hybrid",
        category: "Concentrates"
      },
      {
          name: "Bubba Kush",
        images: ["./assets/img/prerolls.jpg"],
        prices: [18],
        price_labels: ["each"],
        description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
        thc: 19,
        cbd: 5,
        subspecies: "Indica",
        category: "Pre-rolls"
      },
      {
          name: "Jack Herer",
        images: ["./assets/img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
        prices: [18],
        price_labels: ["each"],
        description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
        thc: 21,
        cbd: 5,
        subspecies: "Sativa",
        category: "Pre-rolls"
      },
      {
          name: "Bong",
        images: ["./assets/img/smoke_cartel_sesh_supply_gaia_faberge_egg_water_pipe.png"],
        prices: [18],
        price_labels: ["each"],
        description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
        thc: 15,
        cbd: 5,
        subspecies: "Hybrid",
        category: "Other"
      },
      {
          name: "Bubbler Oil Rig",
        images: ["./assets/img/smoke_cartel_sesh_supply_orion_cube_perc_recycler.png"],
        prices: [18],
        price_labels: ["each"],
        description: "A mix of small buds and shake from our various strains. Exceptional quality at an exceptional price!",
        thc: 15,
        cbd: 5,
        subspecies: "Hybrid",
        category: "Other"
      }
    ])
  end
end
