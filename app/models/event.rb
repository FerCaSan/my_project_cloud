class Event < ApplicationRecord

	validates :name, presence: true
	validates :category, presence: true
	validates :place, presence: true
	validates :address, presence: true
	validates :date_start, presence: true
	validates :date_end, presence: true
	validates :type_event, presence: true

	belongs_to :user
end
