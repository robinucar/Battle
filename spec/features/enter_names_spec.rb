require 'rspec/expectations'
require_relative 'web_helpers'
feature 'Enter names' do

    scenario 'submitting names' do
      sign_in_and_play

        save_and_open_page # will save the web page and open the browser to display it

        expect(page).to have_content "First player name is Robin\nSecond player name is Kathryn"
    end
    feature 'hit points' do
        scenario 'see Player 2 hit points' do
            sign_in_and_play
            expect(page).to have_content 'Kathryn: 60HP'
      end
    end

end