# frozen_string_literal: true

require_relative 'dependencies/dependencies.rb'

# #
class Book
  attr_accessor :title, :author, :count_of_taken_the_book

  def initialize(title, author)
    Validate.empty?(title, 'Title')
    Validate.string?(title, 'Title')
    Validate.empty?(author, 'Author')
    Validate.is_instanse_of?(author, 'Author', Author)

    @title = title
    @author = author
    @count_of_taken_the_book = 0
  end

  def ==(other)
    if other.is_a? Book
      @title == other.title
    else
      false
    end
  end

  def take_the_book
    @count_of_taken_the_book += 1
  end
end