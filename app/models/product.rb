class Product < ActiveRecord::Base
validates :price, numericality: {
                  greater_than: 0.00,
                    less_than: 1000.00
                }
end
