require 'rails_helper'

feature 'Manage answers' do
  scenario 'allows user to add a new answer' do
    answer =build(:answer)
    visit new_answer_path
    fill_in 'Contributor', with: answer.contributor
    fill_in 'Feedback', with: answer.feedback
    click_button 'Submit'
    expect(page).to have_content(answer.contributor)
  end


end
