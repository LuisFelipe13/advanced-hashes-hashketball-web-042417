# Write your code here!
require 'pry'

def game_hash
  hash = {
    :home => {
      :team_name => ["Brooklyn Nets"],
      :colors => ["Black", "White"],
      :players =>
      {
        "Alan Anderson" => {
            :number => 0,
            :shoe => 16,
            :points => 22,
            :rebounds => 12,
            :assists => 12,
            :steals => 3,
            :blocks => 1,
            :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5,
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1,
        },
      },
    },
    :away => {
      :team_name => ["Charlotte Hornets"],
      :colors => ["Purple", "Turquoise"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        },
      }
    },
  }
end

def num_points_scored(players_name)
  answer = nil
  game_hash.each do |home_or_away, team_data|
    home_or_away = home_or_away
    team_data.each do |data, value|
      data = data
      if data == :players
        value.each do |players, stats|
          if players_name == players
            answer = game_hash[home_or_away][data][players_name][:points]
          end
        end
      end
    end
  end
  answer
end

def shoe_size(players_name)
  answer = nil
  game_hash.each do |home_or_away, team_data|
    home_or_away = home_or_away
    team_data.each do |data, value|
      data = data
      if data == :players
        value.each do |players, stats|
          if players_name == players
            answer = game_hash[home_or_away][data][players_name][:shoe]
          end
        end
      end
    end
  end
  answer
end

def team_colors(team)
  answer = nil
  game_hash.each do |home_or_away, team_data|
    home_or_away = home_or_away
    team_data.each do |data, value|
      if data == :team_name
        value.each do |team_name, stats|
          if team == team_name
            answer = game_hash[home_or_away][:colors]
          end
        end
      end
    end
  end
  answer
end

def team_names
  answer = []
  game_hash.each do |home_or_away, team_data|
    home_or_away = home_or_away
    team_data.each do |data, value|
      if data == :team_name
        value.each do |team_name, stats|
          answer.push(team_name)
        end
      end
    end
  end
  answer
end

def player_numbers(team)
  answer = []
  game_hash.each do |home_or_away, team_data|
    home_or_away = home_or_away
    team_data.each do |data, value|
      if data == :team_name
        value.each do |team_name, stats|
          if team == team_name
            names = game_hash[home_or_away][:players]
            names.each do |name, stat|
              answer.push(names[name][:number])
            end
          end
        end
      end
    end
  end
  answer
end

def player_stats(players_name)
  answer = nil
  game_hash.each do |home_or_away, team_data|
    home_or_away = home_or_away
    team_data.each do |data, value|
      data = data
      if data == :players
        value.each do |players, stats|
          if players_name == players
            answer = game_hash[home_or_away][data][players_name]
          end
        end
      end
    end
  end
  answer
end

def big_shoe_rebounds
  biggest_shoe_size = 0
  answer = ""
  game_hash.each do |home_or_away, team_data|
    home_or_away = home_or_away
    team_data.each do |data, value|
      value.each do |team_name, stats|
        names = game_hash[home_or_away][:players]
        names.each do |name, stat|
          if names[name][:shoe] > biggest_shoe_size
            biggest_shoe_size = names[name][:shoe]
            answer = game_hash[home_or_away][:players][name][:rebounds]
          end
        end
      end
    end
  end
  answer
end
