require 'peep'

feature 'Adding new Peeps message' do
  scenario 'A user can add a peep to Chitter' do
    visit('/peep')
    fill_in('peep', with: 'test peep')
    click_button('Submit')
    expect(page).to have_content 'test peep'
  end
end
