# Activate the gem you are reporting the issue against.
gem 'activerecord', '5.0.0.beta3'
require 'active_record'
require 'minitest/autorun'
require 'logger'

Minitest::Test = MiniTest::Unit::TestCase unless defined?(Minitest::Test)

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')
ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Schema.define do
  create_table :articles, force: true do |t|
    t.integer :comments_count, default: 0
  end

  create_table :comments, force: true do |t|
    t.integer :article_id
  end
end

class Article < ActiveRecord::Base
  has_many :comments
end

class Comment < ActiveRecord::Base
  belongs_to :article
end

class BugTest < Minitest::Test
  def test_counter_cache
    article = Article.create!
    assert_equal 0, article.comments_count

    article.comments << Comment.create!
    assert_equal 1, article.comments.count
    assert_equal 0, article.comments_count
  end
end