class Answer < ActiveRecord::Base
  belongs_to :question
  validates :contributor, :feedback, presence: true
end
