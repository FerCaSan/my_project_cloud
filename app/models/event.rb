class Event < ApplicationRecord

	validates :name, presence: true
	validates :category, presence: true
	validates :place, presence: true
	validates :address, presence: true
	validate  :start_vs_end
	validates :date_start, presence: true
	validates :date_end, presence: true
	validates :type_event, presence: true

	belongs_to :user

	private
	def start_vs_end
	  return if date_end.blank? || date_start.blank?
	 
	  if date_end < date_start
	    errors.add(:date_end, "Must be after or equal the start date") 
	  end 
 end
end
