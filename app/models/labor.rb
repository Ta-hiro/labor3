class Labor < ApplicationRecord
  belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :wtime, optional: true
  

  validates :work_day, presence: true
end
