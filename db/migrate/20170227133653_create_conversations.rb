class CreateConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :conversations, id: :uuid do |t|
      t.string :dual_id, index: {unique: true}
      t.uuid :owner_id
      t.foreign_key :users, column: :owner_id

      t.timestamps
    end
  end
end
