require 'rails_helper'

feature 'Product Management' do
  scenario 'user creates a new product' do
    visit new_product_path

    fill_in 'Name', with: 'Apple'
    # save_and_open_page
    fill_in 'Description', with: 'A juicy apple'
    fill_in 'Image URL', with: 'apple.png'
    fill_in 'Price', with: '0.99'

    click_button 'Create Product'

    expect(page).to have_text('Product was successfully created')
  end

  scenario 'user edits an existing product' do
    product = FactoryGirl.create(:product)

    visit edit_product_path(product)

    fill_in 'Name', with: 'Apple'

    click_button 'Update Product'

    expect(page).to have_text('Product was successfully updated')
    expect(page).to have_text('Apple')
  end
end
