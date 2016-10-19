require 'rails_helper'

feature 'Create item' do

  scenario 'successfully' do
    visit new_item_path
    # submits new item
    fill_in 'Title', with: 'London item'
    fill_in 'pac-input', with: 'Lewisham, London, United Kingdom'
    expect(page).to have_selector 'map'
    click_button 'Save'
    # sees confirmation message
    expect(page).to have_content('Item saved successfully')
    # sees newly saved item
  end

end