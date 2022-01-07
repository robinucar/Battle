def sign_in_and_play
    visit('/')
    fill_in :first_player_name, with: 'Robin'
    fill_in :second_player_name, with: 'Kathryn'
    click_button 'Submit'
end