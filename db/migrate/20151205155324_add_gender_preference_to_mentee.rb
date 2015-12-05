class AddGenderPreferenceToMentee < ActiveRecord::Migration
   def change
  	add_column :users, :mentorGenderPreference, :string
  end
end
