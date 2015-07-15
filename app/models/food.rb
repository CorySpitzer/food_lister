class Food < ActiveRecord::Base

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search.strip}%")
    else
      where(nil)
    end
  end
end
