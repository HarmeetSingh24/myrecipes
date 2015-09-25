require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  def setup
    @chef = Chef.create(chefname: "bob", email: "bob@example.com")
    @recipe = @chef.recipes.build(name: "chickenpam",summary: "this is Chicken Parmesian Recipe",description: "add oil, heat it,add cumins,addonions,add tmatoes , add chicken")
  end
    test "recipe should be valid" do
      assert @recipe.valid?
  end
    test "chef_id should be present" do 
     @recipe.chef_id = nil
     assert_not @recipe.valid?
   end
    test " name should be there" do
      @recipe.name =" "
      assert_not @recipe.valid?
    end
    test " name should not be too long" do
      @recipe.name ="a" * 101
      assert_not @recipe.valid?
    end
    test "name should not be short" do 
      @recipe.name ="aaaa"
      assert_not @recipe.valid?
    end
    test "summary should be present" do
      @recipe.summary =" "
      assert_not @recipe.valid?
    end
    test "summary should not be too long" do 
      @recipe.summary ="a" * 151
      assert_not @recipe.valid?
    end
    test " summary should not be short" do 
      @recipe.summary ="a" * 9
      assert_not @recipe.valid?
    end
    test " description should be present" do
      @recipe.description =" "
      assert_not @recipe.valid?
    end
    test "description should not be too long" do
      @recipe.description ="a" * 501
      assert_not @recipe.valid?
    end
    test "description should not be short" do
      @recipe.description ="a" * 19
      assert_not @recipe.valid?
    end

end
