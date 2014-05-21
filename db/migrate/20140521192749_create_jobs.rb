class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.float :min_payrate
      t.float :max_payrate
      t.date :start_date
      f.date :end_date
      t.string :location
      t.string :sector
      t.text :job_description
      t.integer :client_id

      t.timestamps
    end
  end
end
