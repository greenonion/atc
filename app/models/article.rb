class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { minimum: 5 }
  validates :url,
            format: { with: URI::regexp(%w(http https)),
                      allow_blank: true,
                      message: "\"%{value}\" does't seem like a valid URL" }
  validates :url, presence: true, if: "text.blank?"
  validates :text, presence: true, if: "url.blank?"
end
