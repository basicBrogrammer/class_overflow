class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :contributor
      t.text :feedback
      t.references :question, index: true

      t.timestamps
    end
  end
end
