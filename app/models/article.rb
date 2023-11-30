class Article < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  before_create :greeting_message
  after_create :seeOf_message
  before_update do 
    puts "I will run before you update the object."
  end
  after_touch do |article|
    puts "You have touched an object"
  end

  def greeting_message
    puts "I will run before you creat an object."
  end

  def seeOf_message
    puts "Object created."
  end


  # scope
  # scope :specific_articles, ->(title) { where("title ILIKE ?", "%#{title}%") }

  scope :specific_articles, -> (title) { where("title ILIKE ?", "%#{title}%")}
  scope :short_read, -> () { where ("LENGTH(body) < 100")}
  scope :public_articles, -> () { where ("status = 'public'")}
  scope :private_articles, -> () { where ("status = 'private'")}
  scope :archived_articles, -> () { where ("status = 'archived'")}


  # paginate the articles
  paginates_per 10
end
