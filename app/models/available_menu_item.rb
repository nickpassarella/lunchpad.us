class AvailableMenuItem < ActiveRecord::Base
  resourcify
  belongs_to :menu_item
  has_one :vendor, through: :menu_item
  belongs_to :school
  has_many :ordered_items

  validates :date, presence: true

  def self.within_date_range(begin_date,end_date)
    where(:date => begin_date.beginning_of_day..end_date.end_of_day).order(:date)
  end
end
