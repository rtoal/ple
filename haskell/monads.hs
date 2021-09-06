data City = City { cityName :: String
                 , population :: Maybe Integer
                 } deriving (Eq, Show)
data Address = Address { postalCode :: String
                       , city :: Maybe City
                       , indicator :: Maybe String
                       } deriving (Eq, Show)
data Person = Person { name :: String
                     , address :: Maybe Address
                     , supervisor :: Maybe Person
                     } deriving (Eq, Show)

