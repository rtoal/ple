module University
    ( Professor(..)
    , Student(..)
    , Class(..)) where

data Professor = Professor { 
    profFirstName :: String,
    profLastName :: String,
    almaMaters:: [String],
    degrees:: [String],
    yearsAtUniversity:: Int,
    tenured:: Bool,
    classesCurrentlyTeaching:: [String],
    profDepartment :: String,
    college :: String
} deriving (Eq, Show)

data Student = Student {
    studentFirstName :: String,
    studentLastName :: String,
    year:: String,
    degreesPursuing :: [String],
    gpa :: Float,
    classesCurrentlyTaking :: [String],
    colleges :: [String]
} deriving (Eq, Show)

data Class = Class {
    courseNumber :: Int,
    courseName :: String, 
    numberOfStudentsEnrolled :: Int,
    studentsEnrolledByUniversityId :: [Int],
    department :: String,
    professor :: String,
    semester :: String
} deriving (Eq, Show)
