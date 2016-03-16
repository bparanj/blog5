begin
  require 'bundler/inline'
rescue LoadError => e
  $stderr.puts 'Bundler version 1.10 or later is required. Please update your Bundler'
  raise e
end

gemfile(true) do
  source 'https://rubygems.org'
  # Activate the gems needed to run the script
  gem 'activerecord', '5.0.0.beta3'
  gem 'sqlite3'
end

require 'active_record'
require 'minitest/autorun'
require 'logger'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')
ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Schema.define do

  create_table :articles, force: true

  create_table :comments, force: true do |t|
    t.string :say
    t.belongs_to :article
  end

end

class Article < ActiveRecord::Base
  has_many :comments
end

class Comment < ActiveRecord::Base
  belongs_to :article
end

class LearnTest < Minitest::Test
  def test_association_stuff
    a = Article.create! 
    a.comments.create(say: 'something')
        
    assert_equal 1, a.comments.size
  end
end