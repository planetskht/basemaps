class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :attachable_type
      t.integer :attachable_id
      t.string :attach_type
      t.string :name
      t.string :attachment
      t.timestamps null: false
    end
  end
end
