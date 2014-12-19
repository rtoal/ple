from subprocess import call, check_output, CalledProcessError, STDOUT
import unittest

from sum_of_even_squares import sum_of_even_squares


class TestEverything(unittest.TestCase):
    def test_sum_of_even_squares_works_on_lists_of_size_zero_through_eight(self):
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

    def test_triple_script_produces_the_correct_output(self):
        data = check_output(['python', 'triple.py'])
        lines = data.splitlines()
        self.assertEqual(lines[0], '3, 4, 5')
        self.assertEqual(lines[4], '8, 15, 17')
        self.assertEqual(lines[11], '16, 30, 34')
        self.assertEqual(lines[19], '14, 48, 50')

    def test_anagrams_script_errors_on_not_enough_arguments(self):
        try:
            data = check_output(['python', 'anagrams.py'], stderr=STDOUT)
        except CalledProcessError, e:
            self.assertEqual(e.returncode, 1)
            self.assertEqual(e.output, 'Exactly one argument is required\n')

    def test_anagrams_script_errors_on_too_many_arguments(self):
        try:
            data = check_output(['python', 'anagrams.py', 'ONE', 'TWO'], stderr=STDOUT)
        except CalledProcessError, e:
            self.assertEqual(e.returncode, 1)
            self.assertEqual(e.output, 'Exactly one argument is required\n')

    def test_anagrams_script_works_on_empty_string_argument(self):
        data = check_output(['python', 'anagrams.py', ''])
        self.assertEqual(data, '')

    def test_anagrams_script_works_on_three_character_string(self):
        data = check_output(['python', 'anagrams.py', 'rat'])
        lines = data.splitlines()
        self.assertEqual(lines, ['rat','art','tar','atr','tra','rta'])


if __name__ == '__main__':
    unittest.main()
