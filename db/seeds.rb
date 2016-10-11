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
    email: "demo@nimbusfly.co",
    phone_number: "9999999999"
  },
  {
    image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbdSNJNo93KSBu2IJZSZSD_4EDCVpVHdh7a39exPGrQC_6pfpMVA",
    name: 'The Green Cross',
    address: '170 Islington Ave, M9V 2X5',
    description: 'Dedicated to the betterment of our fellow neighbours, we source and distribute medicinal cannabis products of the utmost quality. We specialize in a variety of products including flowers, capsules, tinctures, and edibles.',
    mail: true,
    delivery: false,
    pickup: false,
    email: "bailey@quintetfund.com",
    phone_number: "6474624663"
  },
  {
    image_url: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ7g9gbIGklD-DJX6WRwNeIjUAgy0QmjFV7TF9a9u4MGlIaQCBDNw',
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
    image_url: 'http://smoke-box.com/wp-content/themes/smoke_box/images/slide41.jpg',
    name: 'The High Line',
    address: '2012 Neilson Avenue, M1M 1V1',
    description: 'This is a made up dispensary for demo purposes. We specialize in all kinds of medicinal cannabis products including edibles, extracts, flowers, as well as accessories and apparatus.',
    mail: true,
    delivery: true,
    pickup: true,
    email: "demo@nimbusfly.co",
    phone_number: "9999999999"
  },
  {
    image_url: 'https://pbs.twimg.com/media/CVaQybOXIAAPrwG.png',
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
        category: "Indica"
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
        category: "Indica"
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
        category: "Indica"
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
        category: "Sativa"
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
        category: "Sativa"
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
        category: "Hybrid"
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
        category: "Sativa"
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
        category: "Hybrid"
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
        category: "Hybrid"
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
        category: "Hybrid"
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
        category: "Sativa"
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
        category: "Indica"
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
        category: "Indica"
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
        category: "Sativa"
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
        category: "Sativa"
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
        category: "Sativa"
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
        category: "Sativa"
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
        category: "Sativa"
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
        category: "Cannabis Oil (Tears)"
      }
    ])
  else
    retailer.products.create!([
        {
          name: "OG Kush",
          images: ["./img/OG_kush.jpg", "./img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
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
          images: ["./img/Girl_Scout.jpg", "./img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
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
          images: ["./img/Sour_Diesel.jpg", "./img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
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
          images: ["./img/Sour_Diesel.jpg", "./img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
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
          images: ["./img/Shake_Mix.jpg"],
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
          images: ["./img/Kraken84.jpeg"],
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
          images: ["./img/smoresbrownie.png"],
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
          images: ["./img/sprig.jpg"],
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
          images: ["./img/shatter_hover.png"],
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
          images: ["./img/wax_hover.png"],
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
          images: ["./img/prerolls.jpg"],
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
          images: ["./img/Jays-PreRolls-Joints-About-Graphic-2.jpg"],
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
          images: ["./img/smoke_cartel_sesh_supply_gaia_faberge_egg_water_pipe.png"],
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
          images: ["./img/smoke_cartel_sesh_supply_orion_cube_perc_recycler.png"],
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
