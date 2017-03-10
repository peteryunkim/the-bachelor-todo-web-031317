require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |stats|
    if stats["status"] == "Winner"
      return stats["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, stats|
    stats.each do |info|
      if info["occupation"] == occupation
      return info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  place = 0
  data.each do |season, stats|
    stats.each do |info|
      if info["hometown"] == hometown
        place += 1
      end
    end
  end
  place
end

def get_occupation(data, hometown)
  data.each do |season, stats|
    stats.each do |info|
      if info["hometown"] == hometown
        return info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  people = 0
  data[season].each do |stats|
    if stats["age"].to_i > 0
      total_age = total_age + stats["age"].to_i
      people += 1
    end
  end
  average_age = (total_age.to_f/people).round
end
