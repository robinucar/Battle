require 'rspec/expectations'
feature 'Enter names' do

    scenario 'submitting names' do
        visit('/')
        fill_in :first_player_name, with: 'Robin'
        fill_in :second_player_name, with: 'Kathryn'
        click_button 'Submit'

        save_and_open_page # will save the web page and open the browser to display it

        expect(page).to have_content "First player name is Robin\nSecond player name is Kathryn"
    end
    feature 'hit points' do
        scenario 'see Player 2 hit points' do
            visit('/')
            fill_in :first_player_name, with: 'Robin'
            fill_in :second_player_name, with: 'Kathryn'
            click_button 'Submit'
            expect(page).to have_content 'Kathryn: 60HP'
      end
    end

end