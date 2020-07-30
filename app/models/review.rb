class Review < ApplicationRecord
    class Transaction < ApplicationRecord
        belongs_to :kid
        validates :points, presence: true
        validates_inclusion_of :agreeable, :in => ['Aye!', 'Nah Fam!']
      
    end
   
    def calculate_average
        return 0 unless reviews.size.positive?
    
        avg = reviews.average(:score).to_f.round(2) * 100
        update_column(:average_score, avg)
    end
end