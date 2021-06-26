import Control.Monad (guard)
import University

main = 
    let professorTang = Professor {
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
        guard $ profFirstName professorTang == "Nigel"
        guard $ profLastName professorTang == "Tang"
        guard $ almaMaters professorTang == ["Loyola Marymount University", "Columbia University"]
        guard $ degrees professorTang == ["BS, Computer Science", "PhD, Computer and Information Security"]
        guard $ yearsAtUniversity professorTang == 12
        guard $ tenured professorTang == True
        guard $ classesCurrentlyTeaching professorTang == ["Theory of Computation", "Introduction to Information Security", "Data Analytics I", "Algorithms"]
        guard $ profDepartment professorTang == "Computer Science"
        guard $ college professorTang == "School of Applied Mathematics and Sciences"
        guard $ studentFirstName judyGoodman == "Judy"
        guard $ studentLastName judyGoodman == "Goodman"
        guard $ year judyGoodman == "Junior"
        guard $ degreesPursuing judyGoodman == ["BS, Computer Science (Major)", "BS, Bioinformatics (Major)"]
        guard $ gpa judyGoodman == 3.8
        guard $ classesCurrentlyTaking judyGoodman == ["Theory of Computation", "Organic Chemistry II", "Introduction to Neurology", "Introduction to Information Security", "Introduction to Zoology"]
        guard $ colleges judyGoodman == ["School of Applied Mathematics and Sciences"]
        guard $ courseNumber theoryOfComputation == 471
        guard $ courseName theoryOfComputation == "Theory of Computation" 
        guard $ numberOfStudentsEnrolled theoryOfComputation == 12
        guard $ studentsEnrolledByUniversityId theoryOfComputation == [1556, 7793, 2785, 2400, 7316, 3156, 4121, 8578, 7621, 8303, 8533, 9807]
        guard $ department theoryOfComputation == "Computer Science"
        guard $ professor theoryOfComputation == "Dr. Nigel Tang"
        guard $ semester theoryOfComputation == "Fall, 2021"