require 'rails_helper'

RSpec.describe Answer, type: :model do

  let(:answer) {subject}
  before {expect(answer).not_to be_valid}

  it 'validates the presence of contributor' do
    expect(answer.errors). to have_key(:contributor)
  end

  it 'validates the presence of feedback' do
    expect(answer.errors). to have_key(:feedback)
  end



end
