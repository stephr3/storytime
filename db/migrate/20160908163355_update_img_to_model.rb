class UpdateImgToModel < ActiveRecord::Migration[5.0]
  def change
    remove_column :components, :image, :integer
    add_column :components, :image_id, :integer

    create_table :images do |t|
      t.column :number, :integer

      t.timestamps
    end
  end
end
