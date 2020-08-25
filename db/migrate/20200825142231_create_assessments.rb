class CreateAssessments < ActiveRecord::Migration[6.0]
  def change
    create_table :assessments do |t|
      t.references :user, null: false, foreign_key: true
      t.string :q1_correct
      t.string :q2_correct
      t.string :q3_correct
      t.string :q4_correct
      t.string :q5_correct
      t.string :q6_correct
      t.string :q7_correct
      t.string :q8_correct
      t.string :q9_correct
      t.string :q10_correct
      t.string :q11_correct
      t.string :q12_correct
      t.string :q13_correct
      t.string :q1_note
      t.string :q2_note
      t.string :q3_note
      t.string :q4_note
      t.string :q5_note
      t.string :q6_note
      t.string :q7_note
      t.string :q8_note
      t.string :q9_note
      t.string :q10_note
      t.string :q11_note
      t.string :q12_note
      t.string :q13_note
      t.timestamps
    end
  end
end
