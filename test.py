
def left_rotation(array, element):
    
    if element>= len(array):
        return array
    
    insert_yes=0
    new_array = []
    for i in array:
        if array[element] == i:
            # se empieza a insertar en el nuevo arreglo cuando se encuentra en la iteracion correcta
            insert_yes=1
        if insert_yes == 1:
            new_array.append(i)
    for j in array:
        if array[element] == j:
            # añade los primeros elementos hasta la posicion requerida
            break
        new_array.append(j)
    return (new_array)


import unittest

class TestLeft_rotation(unittest.TestCase):
    
    def test_1(self):
        self.assertEqual(left_rotation([1,2,3,4,5],0), [1,2,3,4,5])
    def test_2(self):
        self.assertEqual(left_rotation([1,2,3,4,5],1), [2,3,4,5,1])
    def test_3(self):
        self.assertEqual(left_rotation([1,2,3,4,5],2), [3,4,5,1,2])
    def test_4(self):
        self.assertEqual(left_rotation([1,2,3,4,5],3), [4,5,1,2,3])
    def test_5(self):
        self.assertEqual(left_rotation([1,2,3,4,5],4), [5,1,2,3,4])
    def test_6(self):
        self.assertEqual(left_rotation([1,2,3,4,5],5), [1,2,3,4,5])
        

unittest.main(argv=[''], verbosity=2, exit=False)