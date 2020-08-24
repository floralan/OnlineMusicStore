# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all

product_list = [
    ['Happenstance', "Happenstance is the debut studio album by American singer-songwriter Rachael Yamagata. It was released on RCA Victor on June 8, 2004 in the U.S.", '/assets/Happenstance.jpg', 8.99],
    ['Lover', "Lover is the seventh studio album by American singer-songwriter Taylor Swift. It was released on August 23, 2019, through Republic Records.", '/assets/lover.jpg', 11.99],
    ['Witness', "Witness is the fifth studio album by American singer Katy Perry. It was released on June 9, 2017, by Capitol Records.", '/assets/witness.jpg', 9.99],
    ['Lemonade', "Lemonade is the sixth studio album by American singer Beyoncé. It was released on April 23, 2016 by Parkwood Entertainment and Columbia Records.", '/assets/lemonade.jpg', 10.99],
    ['Joanne', "Joanne is the fifth studio album by American singer Lady Gaga. It was released on October 21, 2016, by Streamline and Interscope Records.", '/assets/joanne.jpg', 10.99]
]

product_list.each do |name, desc, image, price|
  Product.create(name: name, description: desc, image: image, price: price)
end