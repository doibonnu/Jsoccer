class CreateGradings < ActiveRecord::Migration
  def change
    create_table :gradings do |t|
      t.string   :user_id
      t.string   :player_id
      t.string   :grading
      t.timestamps 
    end
  end
end
