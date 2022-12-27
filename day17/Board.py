from matrixBase import matrixBase
from Shape import Shape

class Board(matrixBase):
    
    def __init__(self, dimentions:list) -> None:
        self.dimentions = dimentions
        self.__create_board()
        super().__init__(self.layout)

    def __create_board(self):
        base_row = [0b0] * self.dimentions[0]
        board_layout = [base_row for x in range(self.dimentions[1])]
        self.layout = board_layout


# shape1 = Shape("bar",[[1,1,1,1],[0,0,0,0],[0,0,0,0],[0,0,0,0]])
# print(shape1.get_layout_matrix())
# print(shape1.get_layout_matrix(True))
