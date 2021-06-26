import Control.Monad (guard)
import University (Professor, Student, Class)

main = 
    let 
        professorTang = Professor {
            profFirstName = "Nigel",
            profLastName = "Tang",
            almaMaters = ["Loyola Marymount University", "Columbia University"],
            degrees = ["BS, Computer Science", "PhD, Computer and Information Security"],
            yearsAtUniversity = 12,
            tenured = True,
            classesCurrentlyTeaching = ["Theory of Computation", "Introduction to Information Security", "Data Analytics I", "Algorithms"],
            profDepartment = "Computer Science",
            college = "School of Applied Mathematics and Sciences"
        }
        judyGoodman = Student {
            studentFirstName = "Judy",
            studentLastName = "Goodman",
            year = "Junior",
            degreesPursuing = ["BS, Computer Science (Major)", "BS, Bioinformatics (Major)"],
            gpa = 3.8,
            classesCurrentlyTaking = ["Theory of Computation", "Organic Chemistry II", "Introduction to Neurology", "Introduction to Information Security", "Introduction to Zoology"],
            colleges = ["School of Applied Mathematics and Sciences"]
        }
        theoryOfComputation = Class {
            courseNumber = 471,
            courseName = "Theory of Computation", 
            numberOfStudentsEnrolled = 12,
            studentsEnrolledByUniversityId = [1556, 7793, 2785, 2400, 7316, 3156, 4121, 8578, 7621, 8303, 8533, 9807],
            department = "Computer Science",
            professor = "Dr. Nigel Tang",
            semester = "Fall, 2021"
        }
    in do 
        -- guard $ show professorTang ==
        -- guard $ show judyGoodman ==
        -- guard $ show theoryOfComputation == 