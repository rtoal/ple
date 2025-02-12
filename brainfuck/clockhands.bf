----- -----                     Set c0 to neg 11
-
Start the clockhands loop   { for i in range(10) }
[                               
    [+>->-<<]                   Move c0 to c1 and c2
    >>                          Go to c2
    [+<<->>]                    Move c2 to c0
    <                           Go to c1 
    +++++ +++++                 Add 11 to c1 (c1 should be in range 0 to 10)
    +
    >>                          Go to c3
    +++++ +++++                 Set c3 to 24
    +++++ +++++
    ++++
    [>+++++ ++<-]               Multiply c3 by 7 and set it to c4 (Should be 168)
    +++++ +++++                 Set c3 to 32
    +++++ +++++
    +++++ +++++
    ++
    [>>+++++ +<<-]              Multiply c3 by 6 and set it to c5 (Should be 192)
    <<                          Go to c1

    Do expression t = i * 43200
    [->+>+<<]                   Move c1 to c2 and c3
    >                           Go to c2
    [-<+>]                      Move c2 to c1
    >                           Go to c3
    [
        -                       Decrement c3
        >>                      Go to c5
        [                   
            -                   Decrement c5
            >                   Go to c6
            +                   Increment c6
            >>                  Go to c8
            +                   Increment c8
            >                   Go to c9
            +                   Increment c9
            [->+>+<<]           Move c9 to c10 and c11
            >                   Go to c10
            [-<+>]              Move c10 to c9
            >                   Go to c11
            [                   If c11 is not 0 then
                <<<             Go to c8
                -               Decrement c8
                >>>             Go to c11
                [-]             Clear c11
            ]
            <<<<<<              Go to c5
        ]
        >                       Go to c6
        [-<+>]                  Move c6 to c5
        <<<                     Go to c3 
    ]

    <<                          Go to c1
    [->+>+<<]                   Move c1 to c2 and c3
    >                           Go to c2
    [-<+>]                      Move c2 to c1
    >                           Go to c3
    [
        -                       Decrement c3
        >                       Go to c4
        [                   
            -                   Decrement c4
            >>                  Go to c6
            +                   Increment c6
            >                   Go to c7
            +                   Increment c7
            >                   Go to c8
            +                   Increment c8
            [->>+>+<<<]         Move c8 to c10 and c11
            >>                  Go to c10
            [-<<+>>]            Move c10 to c8
            >                   Go to c11
            [                   If c11 is not 0 then
                <<<<            Go to c7
                -               Decrement c7
                >>>>            Go to c11
                [-]             Clear c11
            ]
            <<<<<<<             Go to c4
        ]
        >>                      Go to c6
        [-<<+>>]                Move c6 to c4
        <<<                     Go to c3 
    ]

    Do expression t = t plus 21600
    >
    [-]                         Clear c4
    >                           Go to c5
    [-]                         Clear c5
    +++++ +++++                 Set c5 to 14
    ++++
    [>++++++<-]                 Multiply c5 by 6 and set it to c6 (Should be 84)
    >                           Go to c6
    [
        -                       Decrement c6
        >                       Go to c7
        +                       Increment c7
        >                       Go to c8
        +                       Increment c8
        [->>+>+<<<]             Move c8 to c10 and c11
        >>                      Go to c10
        [-<<+>>]                Move c10 to c8
        >                       Go to c11
        [                       If c11 is not 0 then
            <<<<                Go to c7
            -                   Decrement c7
            >>>>                Go to c11
            [-]                 Clear c11
        ]
        <<<<<                   Go to c6
    ]
    <                           Go to c5
    +++++ +++++                 Set c5 to 16
    +++++ +
    [>++++++<-]                 Multiply c5 by 6 and set it to c6 (Should be 96)
    >                           Go to c6
    [
        -                       Decrement c6
        >>                      Go to c8
        [->>+>+<<<]             Move c8 to c10 and c11
        >>                      Go to c10
        [-<<+>>]                Move c10 to c8
        >                       Go to c11
        [                       If c11 is not 0 then
            <<<<                Go to c7
            +                   Increment c7
            >>>>                Go to c11
            [-]                 Clear c11
        ]
        <<<                     Go to c8
        +                       Increment c8
        >                       Go to c9
        +                       Increment c9
        [->+>+<<]               Move c9 to c10 and c11
        >                       Go to c10
        [-<+>]                  Move c10 to c9
        >                       Go to c11
        [                       If c11 is not 0 then
            <<<                 Go to c8
            -                   Decrement c8
            >>>                 Go to c11
            [-]                 Clear c11
        ]
        <<<                     Go to c8
        [->>+>+<<<]             Move c8 to c10 and c11
        >>                      Go to c10
        [-<<+>>]                Move c10 to c8
        >                       Go to c11
        [                       If c11 is not 0 then
            <<<<                Go to c7
            -                   Decrement c7
            >>>>                Go to c11
            [-]                 Clear c11
        ]
        <<<<<                   Go to c6
    ]

    Do expression t = t // 11
    <<<                         Go to c3
    +++++ +++++                 Set c3 to 11
    +
    [
        [->+>+>+<<<]            Move c3 to c4 c5 and c6
        >                       Go to c4
        [-<+>]                  Move c4 to c3
        >                       Go to c5
        [->>>>>+<<<<<]          Move c5 to c10
        >>                      Go to c7
        [->>>>+>+<<<<<]         Move c7 to c11 and c12
        >>>>>                   Go to c12
        [-<<<<<+>>>>>]          Move c12 to c7
        <                       Go to c11
        [                   
            >                   Go to c12
            -                   Decrement c12               
            <                   Go to c11
            [-]                 Clear c11
        ]
        >                       Go to c12
        +                       Increment c12
        <<<<                    Go to c8
        [->>>+>>+<<<<<]         Move c8 to c11 and c13
        >>>>>                   Go to c13
        [-<<<<<+>>>>>]          Move c13 to c8
        <<<                     Go to c10
        [
            -                   Decrement c10
            >                   Go to c11
            [->>+>+<<<]         Move c11 to c13 and c14
            >>>                 Go to c14
            [-<<<+>>>]          Move c14 to c11
            <                   Go to c13
            [                   If c13 is not 0 then
                <               Go to c12
                -               Decrement c12
                >               Go to c13
                [-]             Clear c13
            ]
            <                   Go to c12
            +                   Increment c12
            <                   Go to c11
            -                   Decrement c11
            <                   Go to c10
        ]
        >                       Go to c11
        [-]                     Clear c11
        ++                      Set c11 to 2
        [->-<]                  Subtract c12 from c11
        >                       Go to c12
        [                       If c12 is not 0 then
            >                   Go to c13
            -                   Decrement c13
            <                   Go to c12
            [-]                 Clear c12
        ]
        >                       Go to c13
        +                       Increment c13
        [                       If c13 is not 0 then
            <<<<<<<             Go to c6
            [-]                 Clear c6
            <<<                 Go to c3
            [-]                 Clear c3
            >>>>>>>>>>          Go to c13
            [-]                 Clear c13
        ]
        <<<<<<<                 Go to c6
        [
            -                   Decrement c6
            >                   Go to c7
            -                   Decrement c7
            >                   Go to c8
            [->>+>+<<<]         Move c8 to c10 and c11
            >>>                 Go to c11
            [-<<<+>>>]          Move c11 to c8
            <                   Go to c10
            [                   If c10 is not 0 then
                <<<             Go to c7
                +               Increment c7
                >>>             Go to c10
                [-]             Clear c10
            ]
            <<                  Go to c8
            -                   Decrement c8
            <<<                 Go to c5
            +                   Increment c5
            >                   Go to c6
        ]
        <                       Go to c5
        [
            >>>>>>>>>>          Go to c15
            +                   Increment c15
            <<<<<<<<<<          Go to c5
            [-]                 Clear c5
        ]
        <<                      Go to c3
    ]
    +++++ +++++                 Set c3 to 11
    +
    [
        [->+>+>+<<<]            Move c3 to c4 c5 and c6
        >                       Go to c4
        [-<+>]                  Move c4 to c3
        >                       Go to c5
        [->>>>>+<<<<<]          Move c5 to c10
        >>>                     Go to c8
        [->>>+>+<<<<]           Move c8 to c11 and c12
        >>>>                    Go to c12
        [-<<<<+>>>>]            Move c12 to c8
        <                       Go to c11
        [       
            >                   Go to c12
            -                   Decrement c12               
            <                   Go to c11
            [-]                 Clear c11
        ]
        >                       Go to c12
        +                       Increment c12
        <<<                     Go to c9
        [->>+>>+<<<<]           Move c9 to c11 and c13
        >>>>                    Go to c13
        [-<<<<+>>>>]            Move c13 to c9
        <<<                     Go to c10
        [
            -                   Decrement c10
            >                   Go to c11
            [->>+>+<<<]         Move c11 to c13 and c14
            >>>                 Go to c14
            [-<<<+>>>]          Move c14 to c11
            <                   Go to c13
            [                   If c13 is not 0 then
                <               Go to c12
                -               Decrement c12
                >               Go to c13
                [-]             Clear c13
            ]
            <                   Go to c12
            +                   Increment c12
            <                   Go to c11
            -                   Decrement c11
            <                   Go to c10
        ]
        >                       Go to c11
        [-]                     Clear c11
        ++                      Set c11 to 2
        [->-<]                  Subtract c12 from c11
        >                       Go to c12
        [
            >                   Go to c13
            -                   Decrement c13
            <                   Go to c12
            [-]                 Clear c12
        ]
        >                       Go to c13
        +                       Increment c13
        [                       If c13 is not 0 then
            <<<<<<<             Go to c6
            [-]                 Clear c6
            <<<                 Go to c3
            [-]                 Clear c3
            >>>>>>>>>>          Go to c13
            [-]                 Clear c13
        ]
        <<<<<<<                 Go to c6
        [
            -                   Decrement c6
            >>                  Go to c8
            -                   Decrement c8
            >                   Go to c9
            [->+>+<<]           Move c9 to c10 and c11
            >>                  Go to c11
            [-<<+>>]            Move c11 to c9
            <                   Go to c10
            [                   If c10 is not 0 then
                <<              Go to c8
                +               Increment c8
                >>              Go to c10
                [-]             Clear c10
            ]
            <                   Go to c9
            -                   Decrement c9
            <<<<                Go to c5
            +                   Increment c5
            >                   Go to c6
        ]
        <                       Go to c5
        [
            >>>>>>>>>>>         Go to c16
            +                   Increment c16
            <<<<<<<<<<<         Go to c5
            [-]                 Clear c5
        ]
        <<                      Go to c3
    ]

    Do expression h s = divmod(t 60)
    >>>>>>                      Go to c9
    [-]                         Clear c9
    >                           Go to c10
    +++++ +++++                 Set c10 to 10
    [->++++++<]                 Multiply c10 by 6 (c11 should be 60)
    >                           Go to c11
    [
        [->+>+>+<<<]            Move c11 to c12 c13 and c14
        >                       Go to c12
        [-<+>]                  Move c12 to c11
        >                       Go to c13
        [->>>>+<<<<]            Move c13 to c17
        >>                      Go to c15
        [->>>+>+<<<<]           Move c15 to c18 and c19
        >>>>                    Go to c19
        [-<<<<+>>>>]            Move c19 to c15
        <<                      Go to c17
        -                       Decrement c17
        [
            -                   Decrement c17
            >                   Go to c18
            [->>+>+<<<]         Move c18 to c20 and c21
            >>>                 Go to c21
            [-<<<+>>>]          Move c21 to c18
            <                   Go to c20
            [                   If c20 is not 0 then
                <               Go to c19
                -               Decrement c19
                >               Go to c20
                [-]             Clear c20
            ]
            <                   Go to c19
            +                   Increment c19
            <                   Go to c18
            -                   Decrement c18
            <                   Go to c17
        ]
        >                       Go to c18
        [-]                     Clear c18
        >                       Go to c19
        [                       If c19 is not 0 then
            <<<<<               Go to c14
            [-]                 Clear c14
            <<<                 Go to c11
            [-]                 Clear c11
            >>>>>>>>            Go to c19
            [-]                 Clear c19
        ]
        <<<<<                   Go to c14
        [
            -                   Decrement c14
            >                   Go to c15
            -                   Decrement c15
            <<                  Go to c13
            +                   Increment c13
            >                   Go to c14
        ]
        <                       Go to c13
        [
            >>>>>>>>>           Go to c22
            +                   Increment c22
            <<<<<<<<<           Go to c13
            [-]                 Clear c13
        ]
        <<                      Go to c11
    ]
    <                           Go to c10
    +++++ +++++                 Set c10 to 10
    [->++++++<]                 Multiply c10 by 6 (c11 should be 60)
    >                           Go to c11
    [
        [->+>+>+<<<]            Move c11 to c12 c13 and c14
        >                       Go to c12
        [-<+>]                  Move c12 to c11
        >                       Go to c13
        [->>>>+<<<<]            Move c13 to c17
        >>                      Go to c15
        [->>>+>+<<<<]           Move c15 to c18 and c19
        >>>>                    Go to c19
        [-<<<<+>>>>]            Move c19 to c15
        <                       Go to c18
        [                   
            >                   Go to c19
            -                   Decrement c19               
            <                   Go to c18
            [-]                 Clear c18
        ]
        >                       Go to c19
        +                       Increment c19
        <<<                     Go to c16
        [->>+>>+<<<<]           Move c16 to c18 and c20
        >>>>                    Go to c20
        [-<<<<+>>>>]            Move c20 to c16
        <<<                     Go to c17
        [
            -                   Decrement c17
            >                   Go to c18
            [->>+>+<<<]         Move c18 to c20 and c21
            >>>                 Go to c21
            [-<<<+>>>]          Move c21 to c18
            <                   Go to c20
            [                   If c20 is not 0 then
                <               Go to c19
                -               Decrement c19
                >               Go to c20
                [-]             Clear c20
            ]
            <                   Go to c19
            +                   Increment c19
            <                   Go to c18
            -                   Decrement c18
            <                   Go to c17
        ]
        >                       Go to c18
        [-]                     Clear c18
        ++                      Set c18 to 2
        [->-<]                  Subtract c19 from c18
        >                       Go to c19
        [                       If c19 is not 0 then
            >                   Go to c20
            -                   Decrement c20
            <                   Go to c19
            [-]                 Clear c19
        ]
        >                       Go to c20
        +                       Increment c20
        [                       If c20 is not 0 then
            <<<<<<              Go to c14
            [-]                 Clear c14
            <<<                 Go to c11
            [-]                 Clear c11
            >>>>>>>>>           Go to c20
            [-]                 Clear c20
        ]
        <<<<<<                  Go to c14
        [
            -                   Decrement c14
            >                   Go to c15
            -                   Decrement c15
            >                   Go to c16
            [->+>+<<]           Move c16 to c17 and c18
            >>                  Go to c18
            [-<<+>>]            Move c18 to c16
            <                   Go to c17
            [                   If c17 is not 0 then
                <<              Go to c15
                +               Increment c15
                >>              Go to c17
                [-]             Clear c17
            ]
            <                   Go to c16
            -                   Decrement c16
            <<<                 Go to c13
            +                   Increment c13
            >                   Go to c14
        ]
        <                       Go to c13
        [
            >>>>>>>>>>          Go to c23
            +                   Increment c23
            <<<<<<<<<<          Go to c13
            [-]                 Clear c13
        ]
        <<                      Go to c11
    ] DONE

    Do expression h m = divmod(h 60)
    >>>>>                       Go to c16
    [
        -                       Decrement c16
        <<<<<<<<<<              Go to c6
        +                       Increment c6
        >>>>>>>>>>              Go to c16
    ]
    >>>>>>                      Go to c22
    [-<<<<<<<+>>>>>>>]          Move c22 to c15
    >                           Go to c23
    [-<<<<<<<+>>>>>>>]          Move c23 to c16
    <<<<<<<<<<<<<               Go to c10
    +++++ +++++                 Set c10 to 10
    [->++++++<]                 Multiply c10 by 6 (c11 should be 60)
    >                           Go to c11
    [
        [->+>+>+<<<]            Move c11 to c12 c13 and c14
        >                       Go to c12
        [-<+>]                  Move c12 to c11
        >                       Go to c13
        [->>>>+<<<<]            Move c13 to c17
        >>                      Go to c15
        [->>>+>+<<<<]           Move c15 to c18 and c19
        >>>>                    Go to c19
        [-<<<<+>>>>]            Move c19 to c15
        <                       Go to c18
        [                   
            >                   Go to c19
            -                   Decrement c19               
            <                   Go to c18
            [-]                 Clear c18
        ]
        >                       Go to c19
        +                       Increment c19
        <<<                     Go to c16
        [->>+>>+<<<<]           Move c16 to c18 and c20
        >>>>                    Go to c20
        [-<<<<+>>>>]            Move c20 to c16
        <<<                     Go to c17
        [
            -                   Decrement c17
            >                   Go to c18
            [->>+>+<<<]         Move c18 to c20 and c21
            >>>                 Go to c21
            [-<<<+>>>]          Move c21 to c18
            <                   Go to c20
            [                   If c20 is not 0 then
                <               Go to c19
                -               Decrement c19
                >               Go to c20
                [-]             Clear c20
            ]
            <                   Go to c19
            +                   Increment c19
            <                   Go to c18
            -                   Decrement c18
            <                   Go to c17
        ]
        >                       Go to c18
        [-]                     Clear c18
        ++                      Set c18 to 2
        [->-<]                  Subtract c19 from c18
        >                       Go to c19
        [                       If c19 is not 0 then
            >                   Go to c20
            -                   Decrement c20
            <                   Go to c19
            [-]                 Clear c19
        ]
        >                       Go to c20
        +                       Increment c20
        [                       If c20 is not 0 then
            <<<<<<              Go to c14
            [-]                 Clear c14
            <<<                 Go to c11
            [-]                 Clear c11
            >>>>>>>>>           Go to c20
            [-]                 Clear c20
        ]
        <<<<<<                  Go to c14
        [
            -                   Decrement c14
            >                   Go to c15
            -                   Decrement c15
            >                   Go to c16
            [->+>+<<]           Move c16 to c17 and c18
            >>                  Go to c18
            [-<<+>>]            Move c18 to c16
            <                   Go to c17
            [                   If c17 is not 0 then
                <<              Go to c15
                +               Increment c15
                >>              Go to c17
                [-]             Clear c17
            ]
            <                   Go to c16
            -                   Decrement c16
            <<<                 Go to c13
            +                   Increment c13
            >                   Go to c14
        ]
        <                       Go to c13
        [
            >>>>>>>>>           Go to c22
            +                   Increment c22
            <<<<<<<<<           Go to c13
            [-]                 Clear c13
        ]
        <<                      Go to c11
    ]

    Print out the hour
    >>>>>>>>>>>                 Go to c22
    [->+>+<<]                   Move c22 to c23 and c24
    >                           Go to c23
    [                           If c23 is not 0 then
        >                       Go to c24
        ----- -----             Subtract 12 from c24
        --                       
        <                       Go to c23
        [-]                     Clear c23
    ]
    >                           Go to c24
    +++++ +++++                 Add c24 by 12
    ++
    <<<<                        Go to c20
    +++++ +++++                 Set c20 to 10
    [
        [->+>+>+<<<]            Move c20 to c21 c22 and c23
        >                       Go to c21
        [-<+>]                  Move c21 to c20
        >                       Go to c22
        [->>>+<<<]              Move c22 to c25
        >>                      Go to c24
        [->>+>+<<<]             Move c24 to c26 and c27
        >>>                     Go to c27
        [-<<<+>>>]              Move c27 to c24
        <<                      Go to c25
        [
            -                   Decrement c25
            >                   Go to c26
            [->>+>+<<<]         Move c26 to c28 and c29
            >>>                 Go to c29
            [-<<<+>>>]          Move c29 to c26
            <                   Go to c28
            [                   If c28 is not 0 then
                <               Go to c27
                -               Decrement c27
                >               Go to c28
                [-]             Clear c28
            ]
            <                   Go to c27
            +                   Increment c27
            <                   Go to c26
            -                   Decrement c26
            <                   Go to c25
        ]
        >                       Go to c26
        [-]                     Clear c26
        >                       Go to c27
        [                       If c27 is not 0 then
            <<<<                Go to c23
            [-]                 Clear c23
            <<<                 Go to c20
            [-]                 Clear c20
            >>>>>>>             Go to c27
            [-]                 Clear c27
        ]
        <<<<                    Go to c23
        [
            -                   Decrement c23
            >                   Go to c24
            -                   Decrement c24
            <<                  Go to c22
            +                   Increment c22
            >                   Go to c23
        ]
        <                       Go to c22
        [
            >>>>>>>>            Go to c30
            +                   Increment c30
            <<<<<<<<            Go to c22
            [-]                 Clear c22
        ]
        <<                      Go to c20
    ]
    >>>>>>>>>                   Go to c29
    +++++ +++                   Set c29 to 8
    [->++++++<]                 Multiply c29 by 6 and add it to c30
    >                           Go to c30
    .                           Print c30
    [-]                         Clear c30
    <<<<<                       Go to c25
    +++++ +++                   Set c25 to 8
    [-<++++++>]                 Multiply c25 by 6 and add it to c24
    <                           Go to c24
    .                           Print c24
    [-]                         Clear c24
    +++++ +++++                 Set c24 to 10
    [->++++++<]                 Multiply c24 by 6 and set it to c25
    >                           Go to c25
    --                          Subtract c25 by 2
    .                           Print c25
    [-]                         Clear c25

    Print out the minute
    <<<<<<<<<<<<<               Go to c12
    +++++ +++++                 Set c12 to 10
    [
        [->+>+>+<<<]            Move c12 to c13 c14 and c15
        >                       Go to c13
        [-<+>]                  Move c13 to c12
        >                       Go to c14
        [->>>+<<<]              Move c14 to c17
        >>                      Go to c16
        [->>+>+<<<]             Move c16 to c18 and c19
        >>>                     Go to c19
        [-<<<+>>>]              Move c19 to c16
        <<                      Go to c17
        [
            -                   Decrement c17
            >                   Go to c18
            [->>+>+<<<]         Move c18 to c20 and c21
            >>>                 Go to c21
            [-<<<+>>>]          Move c21 to c18
            <                   Go to c20
            [                   If c20 is not 0 then
                <               Go to c19
                -               Decrement c19
                >               Go to c20
                [-]             Clear c20
            ]
            <                   Go to c19
            +                   Increment c19
            <                   Go to c18
            -                   Decrement c18
            <                   Go to c17
        ]
        >                       Go to c18
        [-]                     Clear c18
        >                       Go to c19
        [                       If c19 is not 0 then
            <<<<                Go to c15
            [-]                 Clear c15
            <<<                 Go to c12
            [-]                 Clear c12
            >>>>>>>             Go to c19
            [-]                 Clear c19
        ]
        <<<<                    Go to c15
        [
            -                   Decrement c15
            >                   Go to c16
            -                   Decrement c16
            <<                  Go to c14
            +                   Increment c14
            >                   Go to c15
        ]
        <                       Go to c14
        [
            >>>>>>>>            Go to c22
            +                   Increment c22
            <<<<<<<<            Go to c14
            [-]                 Clear c14
        ]
        <<                      Go to c12
    ]
    >>>>>>>>>                   Go to c21
    +++++ +++                   Set c21 to 8
    [->++++++<]                 Multiply c21 by 6 and add it to c22
    >                           Go to c22
    .                           Print c22
    [-]                         Clear c22
    <<<<<                       Go to c17
    +++++ +++                   Set c17 to 8
    [-<++++++>]                 Multiply c17 by 6 and add it to c16
    <                           Go to c16
    .                           Print c16
    [-]                         Clear c16
    +++++ +++++                 Set c16 to 10
    [->++++++<]                 Multiply c16 by 6 and set it to c17
    >                           Go to c17
    --                          Subtract c17 by 2
    .                           Print c17
    [-]                         Clear c17

    Print out the second
    <<<<<<<<<<<<<<<             Go to c2
    +++++ +++++                 Set c2 to 10
    [
        [->+>+>+<<<]            Move c2 to c3 c4 and c5
        >                       Go to c3
        [-<+>]                  Move c3 to c2
        >                       Go to c4
        [->>>+<<<]              Move c4 to c7
        >>                      Go to c6
        [->>+>+<<<]             Move c6 to c8 and c9
        >>>                     Go to c9
        [-<<<+>>>]              Move c9 to c6
        <<                      Go to c7
        [
            -                   Decrement c7
            >                   Go to c8
            [->>+>+<<<]         Move c8 to c10 and c11
            >>>                 Go to c11
            [-<<<+>>>]          Move c11 to c8
            <                   Go to c10
            [                   If c10 is not 0 then
                <               Go to c9
                -               Decrement c9
                >               Go to c10
                [-]             Clear c10
            ]
            <                   Go to c9
            +                   Increment c9
            <                   Go to c8
            -                   Decrement c8
            <                   Go to c7
        ]
        >                       Go to c8
        [-]                     Clear c8
        >                       Go to c9
        [                       If c9 is not 0 then
            <<<<                Go to c5
            [-]                 Clear c5
            <<<                 Go to c2
            [-]                 Clear c2
            >>>>>>>             Go to c9
            [-]                 Clear c9
        ]
        <<<<                    Go to c5
        [
            -                   Decrement c5
            >                   Go to c6
            -                   Decrement c6
            <<                  Go to c4
            +                   Increment c4
            >                   Go to c5
        ]
        <                       Go to c4
        [
            >>>>>>>>            Go to c12
            +                   Increment c12
            <<<<<<<<            Go to c4
            [-]                 Clear c4
        ]
        <<                      Go to c2
    ]
    >>>>>>>>>                   Go to c11
    +++++ +++                   Set c11 to 8
    [->++++++<]                 Multiply c11 by 6 and add it to c12
    >                           Go to c12
    .                           Print c12
    [-]                         Clear c12
    <<<<<                       Go to c7
    +++++ +++                   Set c7 to 8
    [-<++++++>]                 Multiply c7 by 6 and add it to c6
    <                           Go to c6
    .                           Print c6
    [-]                         Clear c6
    +++++ +++++                 Set c6 to 10
    .                           Print c6
    [-]                         Clear c6
    <<<<<                       Go to c1
    [-]                         Clear c1
    <                           Go to c0
    +                           Increment c0
]