module University (Teacher, Student, Class) where

data Teacher = Teacher {
    firstName :: String,
    lastName :: String,
    almaMaters:: [String],
    degrees:: [String],
    yearsAtUniversity:: Int,
    tenured:: Bool,
    classesCurrentlyTeaching:: [String],
    department :: String,
    college :: String
} deriving (Show)

data Student = Student {
    firstName :: String,
    lastName :: String,
    year:: String,
    degreesPursuing :: [String],
    gpa :: Float,
    classesCurrentlyTaking :: [String],
    colleges :: [String]
} deriving (Show)

data Class = Class {
    courseNumber :: Int,
    courseName :: String, 
    numberOfStudentsEnrolled :: Int,
    studentsEnrolledByUniversityId :: [Int],
    department :: String,
    professor :: String,
    semester :: String
} deriving (Show)
