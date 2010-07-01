class Todo < ActiveRecord::Base
  DEFAULT = {
    :title => 'こんにちは',
    :body => '夏ですね'
  }
  belongs_to :user

  alias initialize_old initialize

  def initialize(attributes = nil)
    initialize_old(attributes)
    DEFAULT.each do |column, value|
      @attributes[column.to_s] = value unless @attributes[:column_name]
    end
  end
end
