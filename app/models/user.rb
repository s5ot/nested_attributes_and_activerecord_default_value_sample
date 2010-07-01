class User < ActiveRecord::Base
  DEFAULT = {
    :name => 'バカボンのパパ',
    :age => '24'
  }
  has_one :todo
  accepts_nested_attributes_for :todo, :allow_destroy => true

  alias initialize_old initialize

  def initialize(attributes = nil)
    initialize_old(attributes)
    DEFAULT.each do |column, value|
      @attributes[column.to_s] = value unless @attributes[:column_name]
    end
  end
end
