# DO NOT EDIT -----------------------------------------------------------
require_relative 'solver'

def run_solver(n, num_mines, num_trials)
    wins = 0
    for i in 0...num_trials
        board = Board.new(n, num_mines)
        if solve board
            wins += 1
        end
    end
    percentage = wins * 100.0 / num_trials
    puts "Win percentage: #{wins}/#{num_trials} #{percentage.round(2)}%"
end

def parse_args 
    args = {}
    args[:n] = (n = ARGV[0]) ? Integer(n) : 10 
    args[:num_mines] = (num_mines = ARGV[1]) ? Integer(num_mines) : 10
    args[:num_trials] = (num_trials = ARGV[2]) ? Integer(num_trials) : 100000
    args
end

def main
    args = parse_args
    run_solver(args[:n], args[:num_mines], args[:num_trials])
end

main

# DO NOT EDIT -----------------------------------------------------------
