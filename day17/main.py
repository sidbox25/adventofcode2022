from Board import Board
from Shape import Shape


my_board = Board([7,10])
my_board_fancy = my_board.get_layout_matrix(True)


for row in my_board_fancy:
    print(row)

