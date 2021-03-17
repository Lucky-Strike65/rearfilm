class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :user,  null: false,foreign_key: true
      t.text       :title, null: false
      t.integer    :category_id, null: false
      t.text       :text,        null: false
      t.timestamps
    end
  end
end
