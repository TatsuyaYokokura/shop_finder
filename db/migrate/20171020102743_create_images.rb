class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer         :shop_id
      t.text            :image
      t.string          :memo
      t.timestamps
    end
  end
end
