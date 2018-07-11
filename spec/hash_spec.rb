require_relative 'spec_helper'

describe 'Create tests for a hash' do

  small_fruit_nutrition_details = {
      apple:{
          calories: 130,
          calories_from_fat: 0,
          sugars: '25g',
          protein: '1g'

      },
      avocado:{
          calories: 50,
          calories_from_fat: 35,
          sugars: '0g',
          protein: '1g'

      },
      kiwifruit:{
          calories: 90,
          calories_from_fat: 10,
          sugars: '13g',
          protein: '1g'

      },
      plums:{
          calories: 70,
          calories_from_fat: 0,
          sugars: '16g',
          protein: '1g'

      }
  }

  it 'avocados should have calories from fat great than 20' do
    expect(small_fruit_nutrition_details[:avocado][:calories_from_fat]).to be > 20
    expect(small_fruit_nutrition_details[:avocado][:calories_from_fat]).to_not be < 20
    expect(small_fruit_nutrition_details[:avocado][:calories_from_fat]).not_to eql 19
    expect(small_fruit_nutrition_details[:avocado][:calories_from_fat]).not_to be_between(0,19)
    # p small_fruit_nutrition_details[:avocado][:calories_from_fat]
    # pending
  end

  it 'plums and apples should get no calories from fat' do
    expect(small_fruit_nutrition_details[:plums][:calories_from_fat]).to eql 0
    expect(small_fruit_nutrition_details[:plums][:calories_from_fat]).not_to be > 0

    expect(small_fruit_nutrition_details[:apple][:calories_from_fat]).to eql 0
    expect(small_fruit_nutrition_details[:apple][:calories_from_fat]).not_to be > 0
    # pending
  end

  it 'each fruit should have 4 keys' do
    expect(small_fruit_nutrition_details[:apple].keys.length).to eql 4
    # p small_fruit_nutrition_details[:apple].keys.length
    # pending
  end

  it 'all calories should be between 40 to 150' do
    # expect(small_fruit_nutrition_details[:apple][:calories]).to be_between(40,150)
    # expect(small_fruit_nutrition_details[:avocado][:calories]).to be_between(40,150)
    # expect(small_fruit_nutrition_details[:kiwifruit][:calories]).to be_between(40,150)
    # expect(small_fruit_nutrition_details[:plums][:calories]).to be_between(40,150)

    # p small_fruit_nutrition_details

    small_fruit_nutrition_details.each { |key,value|
      puts "#{key} is #{value}"
      fruit_calories = value[:calories]
      puts "#{key} has #{fruit_calories} calories"
      if (fruit_calories > 40) && (fruit_calories < 150)
        puts 'Healthy'
      end
    }
    pending
  end

end
