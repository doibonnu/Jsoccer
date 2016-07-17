class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string   :team_id
      t.integer  :number
      t.string   :first_name
      t.string   :last_name
      t.string   :first_name_kana
      t.string   :last_name_kana
      t.text     :image_url
      t.string   :position
      t.integer  :age
      t.string   :birth_year
      t.string   :birth_month
      t.string   :birth_day
      t.string   :from
      t.integer  :tall
      t.integer  :weight
      t.text     :history
      t.text     :blog_url
      t.text     :twitter_url
      t.text     :insta_url
      t.integer  :goal
      t.integer  :asist
      t.integer  :mgp
      t.integer  :recently_average
      t.integer  :total_average
      t.timestamps 
    end
  end
end
