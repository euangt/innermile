class Post < ApplicationRecord
  belongs_to :business

  validates :content, presence: true, length: { minimum: 5 }

  has_one_attached :post_image

  has_rich_text :content

  include PgSearch::Model

  def business_name
    business.name
  end

  multisearchable against: [:content, :business_name], if: :new?

  def new?
    created_at > Time.now.ago(1.year)
  end

  def self.rebuild_pg_search_documents
    find_each { |record| record.update_pg_search_document }
  end
end
