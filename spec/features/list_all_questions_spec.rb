require 'rails_helper'

feature 'Manage questions' do
  scenario 'when only one question exists' do
    question = create_list(:question, 2)
    visit questions_path
    expect(page).to have_content('Title 1')
    expect(page).to have_content('Title 2')
  end

  scenario "allows user to add a new question " do
    question = build(:question)
    visit new_question_path
    fill_in 'Title', with: question.title
    fill_in 'Content', with: question.content
    click_button 'Submit'

    expect(page).to have_content(question.title)
  end

  scenario 'displaying a specific question' do
    question = create(:question)
    visit question_path(question)
    expect(page).to have_content('Title 1')
  end

end