# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

fruits = %w(Apple Apricot Avocado Banana
        Blackberry Blueberry Cantaloupe Cherry
        Clementine Currant Grape Grapefruit
        Guava Honeydew Huckleberry
        Kiwi Lemon Lime Mango Nectarine Orange
        Peach Pear Pineapple Plum Pomegranate)

fruit_descriptions = [
  "This juicy fruit will keep the doctor away",
  "The flesh is usually firm and not very juicy. Its taste can range from sweet to tart.",
  "These have a green-skinned, fleshy body that may be pear-shaped, egg-shaped, or spherical.",
  "This fruit is high in potassium.",
  "This fruit is popular for use in desserts, jams, seedless jelly, and sometimes wine.",
  "Blueberries are used in as jellies, jams, blueberry pies, muffins, snack foods and cereals.",
  "This is the most popular melon in the US, known for it's orange colored flesh.",
  "These sweet cherries make an excellent snack.",
  "These are a variety of manadarin orange, they are very easy to peel.",
  "Blackfoot Indians used these to treat kidney diseases.",
  "Grapes can be eaten raw or they can be used for making wine, jam, juice, jelly, grape seed extract, raisins, vinegar, and grape seed oil.",
  "Grapefruit is an excellent source of many nutrients and phytochemicals that contribute to a healthy diet.",
  "Guava pulp may be sweet or sour, tasting something between pear and strawberry.",
  "Honeydew's thick, juicy, sweet flesh is often eaten for dessert, and is commonly found in supermarkets across the world.",
  "In taste the berries range from tart to sweet, with a flavor similar to that of a blueberry, especially in blue- and purple-colored varieties.",
  "It has a fibrous, dull greenish-brown skin and bright green or golden flesh with rows of tiny, black, edible seeds. The fruit has a soft texture and a sweet but unique flavor.",
  "Lemon juice, rind, and zest are used in a wide variety of food and drink. Lemon juice is used to make lemonade, soft drinks, and cocktails.",
  "Limes are a good source of vitamin C, and are often used to accent the flavours of foods and beverages.",
  "Mangoes are generally sweet, although the taste and texture of the flesh varies across cultivars, some having a soft, pulpy texture similar to an overripe plum, while others firmer, like a cantaloupe or avocado and some may have a fibrous texture.",
  "This fruit is similar to the peach, but has a smooth skin instead of fuzzy. This small fruit is sweeter than peaches.",
  "Oranges, like most citrus fruits, are a good source of vitamin C.",
  "The flesh is very delicate and easily bruised in some cultivars, but is fairly firm in some commercial varieties, especially when green.",
  "Pears are a good source of dietary fiber and a good source of vitamin C. Most of the vitamin C, as well as the dietary fiber, is contained within the skin of the fruit.",
  "Raw pineapple is an excellent source of manganese and vitamin C.",
  "The flesh is firm, juicy and mealy. The fruit's peel is smooth, with a natural waxy surface that adheres to the flesh. The fruit has a single large seed.",
  "Pomegranates are used in cooking, baking, juices, smoothies and alcoholic beverages, such as martinis and wine."
]

fruits.zip(fruit_descriptions).each do |fruit, description|
  Product.create!(name: fruit,
                  description: description,
                  image_url: "fruit/#{fruit}.jpg",
                  price: sprintf("%.02f", rand * 9)
  )
end