class AddNameToAssessment < ActiveRecord::Migration[6.0]
  def change
    add_column :assessments, :candidate_full_name, :string
    add_column :assessments, :ats_link, :string
    add_column :assessments, :score, :float
  end
end
