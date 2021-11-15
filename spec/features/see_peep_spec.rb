require 'peep'

feature 'Viewing Peeps' do
  scenario 'User can view Peeps' do
    Peep.create("Welcome to twitter!")
    Peep.create("Chitter your heart away! <3 ")

    visit '/peep'
     
    expect(page).to have_content "Welcome to twitter!"
    expect(page).to have_content "Chitter your heart away! <3 "
  end
end
