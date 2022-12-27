
class matrixBase:

    def __init__(self, layout:list) -> None:
        self.layout = layout

    def get_layout_matrix(self, fancy: bool = False):

        if fancy:
            result = list(map(lambda row:list(map(self._convertion_rule, row)), self.layout))
            return result
        
        return self.layout

    def _convertion_rule(self,a)->str:
        if a == 0b1:
            return "#"
        elif a == 0b0:
            return "."
        else:
            return " "