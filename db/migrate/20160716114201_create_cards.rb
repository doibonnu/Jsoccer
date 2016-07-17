class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string   :home_team

      t.timestamps 
    end
  end
end
