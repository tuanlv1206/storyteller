class Story < ApplicationRecord
  include PublicActivity::Model
  tracked
  tracked owner: Proc.new { |controller, model| controller.current_user ? controller.current_user : nil },
        title: Proc.new { |controller, model| model.title }

  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true
end
