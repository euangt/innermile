class Post < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:content], if: :new?

  def new?
    created_at > Time.now.ago(1.year)
  end

  belongs_to :business

  validates :content, presence: true, length: { minimum: 5 }

  has_one_attached :post_image

  has_rich_text :content
end
