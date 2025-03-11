: sum-of-even-squares ( seq -- n )
    [ even? ] filter [ sq ] map sum ;
