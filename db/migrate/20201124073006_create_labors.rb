class CreateLabors < ActiveRecord::Migration[6.0]
  def change
    create_table :labors do |t|
      t.date       :work_day,        null: false
      t.integer     :start_time_id
      t.integer     :closing_time_id
      t.string     :comment
      t.references :user,            foreign_key: true
      t.timestamps
    end
  end
end
