# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[author]", with: 'JK Rowling'
    fill_in "book[price]", with: '29.99'
    fill_in "book[publish_date]", with: '1997-06-26'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('JK Rowling')
    expect(page).to have_content('29.99')
    expect(page).to have_content('1997-06-26')
  end
end