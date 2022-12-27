from matrixBase import matrixBase

#row by row starting from the boto 
class Shape(matrixBase):
    
    def __init__(self, name:str, layout:list) -> None:
        super().__init__(layout)
        self.name = name
        

# shape1 = Shape("bar",[[1,1,1,1],[0,0,0,0],[0,0,0,0],[0,0,0,0]])
# print(shape1.get_layout_matrix())
# print(shape1.get_layout_matrix(True))
