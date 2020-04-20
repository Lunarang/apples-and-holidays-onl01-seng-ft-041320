require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, supplies|
     supplies << supply
  end
  holiday_hash

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array

  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.collect do |season, holidays|
     puts "#{season.capitalize}:"
     holidays.collect do |holiday, supply|
       puts "  #{holiday.to_s.split("_").each {|letters| letters.capitalize!}.join(' ')}: #{supply.join(", ")}"
     end
   end
end
  

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbq = []
  holiday_hash.each do |season, holidays|
     holidays.collect do |holiday, supply|
       if supply.include? "BBQ" == TRUE
         holidays_with_bbq << holiday
        end
     end
   end
   holidays_with_bbq
end







