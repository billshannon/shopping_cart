class Product < ActiveRecord::Base
validates :price, numericality: {
                  greater_than: 0.00,
                    less_than: 2000.00
                }
end
