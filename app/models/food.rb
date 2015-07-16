class Food < ActiveRecord::Base

  belongs_to(:user)

  def self.column_names
    ["name", "serving", "calories"]
  end

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search.strip}%")
    else
      where(nil)
    end
  end
end
