FactoryGirl.define do
  factory :product do
    name { Faker::Commerce.product_name }
    description {
      "Our #{name}'s allow you to #{Faker::Company.bs}"
    }
    image_url { Faker::Company.logo }
    price {
      random = Random.new
      (random.rand(0.01...1000.0) * 100).floor/100.0
    }
  end

end
