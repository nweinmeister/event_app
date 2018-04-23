class CreateRsvps < ActiveRecord::Migration[5.0]
  def change
    create_table :rsvps do |t|
      t.string :name
      t.boolean :will_attend

      t.belongs_to :event
      t.timestamps
    end
  end
end
