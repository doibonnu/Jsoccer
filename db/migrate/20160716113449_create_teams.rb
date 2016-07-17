class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string   :category
      t.string   :name
      t.string   :v_point
      t.timestamps 
    end
  end
end
