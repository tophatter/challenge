# DO NOT EDIT ------------------------------------------------------------------
import argparse
from solver import solve
from board import Board

def run_solver(n, num_mines, num_trials):
    wins = 0
    for _ in range(num_trials):
        board = Board(n, num_mines)
        if solve(board):
            wins += 1
    print(f'Win percentage: {wins}/{num_trials} {wins * 100 / num_trials:.2f}%')

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('n', nargs='?', type=int, default=10)
    parser.add_argument('num_mines', nargs='?', type=int, default=10)
    parser.add_argument('num_trials', nargs='?', type=int, default=100000)
    return parser.parse_args()

if __name__ == "__main__":
    args = parse_args()
    run_solver(args.n, args.num_mines, args.num_trials)

# DO NOT EDIT ------------------------------------------------------------------
    