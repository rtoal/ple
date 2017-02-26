# Converts each line of a file of the form "lastname firstname email"
# into "firstname lastname <email>", which is something email clients
# understand very well.

{
    print $2 " " $1 " <" $3 ">"
}
