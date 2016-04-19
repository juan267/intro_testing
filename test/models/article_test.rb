require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test 'should not save article without title' do
    article = Article.new
    assert_not article.save, 'Saved the article without a title'
  end

  # test 'should report an error' do
  #   some_undefined_variable
  #   assert true
  # end

  test 'should not save article with a body less than 140 characters' do
    article = Article.new(title: "Hola")
    assert_not article.save, 'Saved article with less than 140 characters'
  end

  test 'capitalize should always leave the Title capitalized' do
    article = Article.create(title: "hola")
    article.capitalize_title
    assert_equal("Hola", article.title)
  end

end
