class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :id
      t.timestamps
    end
    
    create_table :courses do |t|
    	t.belongs_to :course, index:true
    	t.timestamps null: false
    end
  end
end
