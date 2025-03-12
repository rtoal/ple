USING: io math prettyprint sequences ;
IN: ses

: sum-of-even-squares ( seq -- n )
    [ even? ] filter [ sq ] map sum ;

{ 1 2 3 4 5 6 7 8 9 10 } sum-of-even-squares .
{ -3 8 -2 1 } sum-of-even-squares .
{ }  sum-of-even-squares .
