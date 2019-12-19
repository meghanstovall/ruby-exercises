require 'minitest/autorun'
require 'minitest/pride'
require_relative './nesting'

# The intent of this exercise is to practice working with nested collections.
# Some tests will be able to pass without any enumeration, and others will require
# more complex iteration over multiple portions of the nested collection.

# All tests can be completed without using any enumerable other than #each.
# My suggestion would be to complete all tests using only #each, and then
# to go back over each test and refactor it using a different enumerable.

# The collection you're going to be using lives in ./nesting.rb and is called stores.
# If you spot an error or want to make this exercise better, please let us know!

class NestedTest < MiniTest::Test

  def test_list_of_olive_garden_employess
    #=======================
    # EXAMPLE
    employees = stores[:olive_garden][:employees]
    #=======================
    assert_equal ["Jeff", "Zach", "Samantha"], employees
  end

  def test_pancake_ingredients
    dennys_dishes_array = stores[:dennys][:dishes]
    pancake_ingredients = dennys_dishes_array.each do |dish|
      if dish[:name] == "Pancakes"
        return dish[:ingredients]
      end
    end

    assert_equal ["Flour", "Eggs", "Milk", "Syrup"], pancake_ingredients
  end

  def test_rissotto_price
    risotto_price = nil
    stores.each do |store|
      store.find do |element|
        if element.kind_of?(Hash)
          element[:dishes].each do |dish_hash|
            if dish_hash[:name] == "Risotto"
              risotto_price = dish_hash[:price]
            end
          end
        end
      end
    end

    assert_equal 12, risotto_price
  end

  def test_big_mac_ingredients
    big_mac_ingredients = nil
    stores.each do |store|
      store.find do |element|
        if element.kind_of?(Hash)
          element[:dishes].each do |dish_hash|
            if dish_hash[:name] == "Big Mac"
              big_mac_ingredients = dish_hash[:ingredients]
            end
          end
        end
      end
    end

    assert_equal ['Bun','Hamburger','Ketchup','pickles'], big_mac_ingredients
  end

  def test_list_of_restaurants
    store_names = stores.keys

    assert_equal [:olive_garden, :dennys, :macdonalds], store_names
  end

  def test_list_of_dishes_names_for_olive_garden
    dishes_names = nil
    stores.each do |store|
      if store.first == :olive_garden
        dishes_names = store.last[:dishes].map do |dish|
          dish[:name]
        end
      end
    end

    assert_equal ['Risotto', 'Steak'], dishes_names
  end

  def test_list_of_employees_across_all_restaurants
    employee_names = []
    stores.each do |store|
      store.each do |element|
        if element.kind_of?(Hash)
          employee_names << element[:employees]
        end
      end
    end
    employee_names = employee_names.flatten

    assert_equal ["Jeff","Zach","Samantha","Bob","Sue","James","Alvin","Simon","Theodore"], employee_names
  end

  def test_list_of_all_ingredients_across_all_restaurants
    ingredients = []
    stores.each do |store|
      store.each do |element|
        if element.kind_of?(Hash)
          element[:dishes].each do |dish|
            ingredients << dish[:ingredients]
          end
        end
      end
    end
    ingredients = ingredients.flatten

    assert_equal ["Rice",
                  "Cheese",
                  "Butter",
                  "Beef",
                  "Garlic",
                  "Flour",
                  "Eggs",
                  "Milk",
                  "Syrup",
                  "Flour",
                  "Eggs",
                  "Syrup",
                  "Bun",
                  "Hamburger",
                  "Ketchup",
                  "pickles",
                  "Potatoes",
                  "Salt"], ingredients
  end

  def test_full_menu_price_for_olive_garden
    full_menu_price = 0
    stores.each do |store|
      if store.first == :olive_garden
        store.last[:dishes].each do |dish|
          full_menu_price += dish[:price]
        end
      end
    end

    assert_equal 27, full_menu_price
  end

  def test_full_menu_for_olive_garden
    olive_garden_menu = nil
    stores.each do |store|
      if store.first == :olive_garden
        olive_garden_menu = store.last[:dishes].reduce({}) do |hash, dish|
          hash[dish[:name]] = dish
          hash
        end
      end
    end

    expected = ({"Risotto"=>{:name=>"Risotto", :ingredients=>["Rice", "Cheese", "Butter"], :price=>12},
                  "Steak"=>{:name=>"Steak", :ingredients=>["Beef", "Garlic"], :price=>15}})
    assert_equal expected, olive_garden_menu
  end

  def test_menu_accross_all_restaurants
    full_menu = nil
    olive_garden_menu = nil
    dennys_menu = nil
    stores.each do |store|
      if store.first == :olive_garden
        olive_garden_menu = store.last[:dishes].reduce({}) do |hash, dish|
          hash[dish[:name]] = dish
          hash
        end
      elsif store.first == :dennys
        dennys_menu = store.last[:dishes].reduce(olive_garden_menu) do |hash, dish|
          hash[dish[:name]] = dish
          hash
        end
      else
        full_menu = store.last[:dishes].reduce(dennys_menu) do |hash, dish|
          hash[dish[:name]] = dish
          hash
        end
      end
    end

    expected = ({"Risotto"=>
                      {:name=>"Risotto", :ingredients=>["Rice", "Cheese", "Butter"], :price=>12},
                "Steak"=>
                    {:name=>"Steak", :ingredients=>["Beef", "Garlic"], :price=>15},
                "Pancakes"=>
                     {:name=>"Pancakes",
                      :ingredients=>["Flour", "Eggs", "Milk", "Syrup"],
                      :price=>10},
                "Waffles"=>
                      {:name=>"Waffles", :ingredients=>["Flour", "Eggs", "Syrup"], :price=>7},
                "Big Mac"=>
                    {:name=>"Big Mac",
                    :ingredients=>["Bun", "Hamburger", "Ketchup", "pickles"],
                    :price=>5},
                "Fries"=>
                    {:name=>"Fries", :ingredients=>["Potatoes", "Salt"], :price=>2}
                  })
    assert_equal expected, full_menu
  end

end
