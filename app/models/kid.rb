class Kid < ApplicationRecord
  has_many :reviews
  validates :name, :discipline_level, presence: true

  def update_discipline_level(review)
      if review.agreeable == 'Aye!'
         self.discipline_level = self.discipline_level + review.points
         self.save
     elsif review.agreeable == 'Nah Fam!'
      if self.discipline_level >= review.points
         self.discipline_level = self.discipline_level - review.points
         self.save
      else
        return 'Whelp!'
      end
     end
   end
  
  
   def update_discipline_level_on_delete(review)
    if review.agreeable == 'Aye!'
      if self.discipline_level >= review.points
        self.discipline_level = self.discipline_level - review.points
        self.save
      else
        return 'Whelp!'
      end
    elsif review.agreeable == 'Nah Fam!'
        self.discipline_level = self.discipline_level + review.points
        self.save
    end
  end
end