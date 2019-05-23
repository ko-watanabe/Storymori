class CreatePages < ActiveRecord::Migration[5.2]
    def change
        create_table :pages do |t|
            t.string :name
            t.string :text
  
            t.timestamps
        end
        add_reference :stories, :story, foreign_key: true
        add_reference :pages, :parent, foreign_key: true
    end
end