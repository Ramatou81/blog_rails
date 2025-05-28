class Article < ApplicationRecord
  validates :title, presence: true
  enum :status, {
    draft: "draft",
    archived: "archived",
    published: "published"
  }, default: :draft
end
