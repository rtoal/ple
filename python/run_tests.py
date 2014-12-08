from sum_of_even_squares import sum_of_even_squares
import unittest

class TestEverything(unittest.TestCase):
    def test_sum_of_even_squares(self):
        a = [7, 3, -8, 4, 1, 0, 11, 2]
        self.assertEqual(sum_of_even_squares(a[:0]), 0)
        self.assertEqual(sum_of_even_squares(a[:1]), 0)
        self.assertEqual(sum_of_even_squares(a[:2]), 0)
        self.assertEqual(sum_of_even_squares(a[:3]), 64)
        self.assertEqual(sum_of_even_squares(a[:4]), 80)
        self.assertEqual(sum_of_even_squares(a[:5]), 80)
        self.assertEqual(sum_of_even_squares(a[:6]), 80)
        self.assertEqual(sum_of_even_squares(a[:7]), 80)
        self.assertEqual(sum_of_even_squares(a[:8]), 84)

if __name__ == '__main__':
    unittest.main()
