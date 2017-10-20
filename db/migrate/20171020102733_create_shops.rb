class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string        :shop_name
      t.string        :genre
      t.string        :sales_copy
      t.text          :text
      t.text          :main_image
      t.text          :sub_image
      t.string        :adress
      t.string        :tel
      t.string        :opne_time
      t.string        :link
      t.timestamps
    end
  end
end
