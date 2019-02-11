class CreateNewbuttons < ActiveRecord::Migration[5.2]
  def change
    create_table :newbuttons do |t|

      t.integer :active, :default => 0

      t.text :name

      t.integer :status
    end

    if (!Newbutton.any?)
      btn = Newbutton.new :active => 0,
                      :name => "Новая кнопка",
                      :status => 0
      btn.save
    end

  end
end
