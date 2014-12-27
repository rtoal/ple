1 to: 50 do: [ :c |
    1 to: c do: [ :b |
        1 to: b do: [ :a |
            ((a*a) + (b*b) = (c*c)) ifTrue: [
                (a asString, ', ', b asString, ', ', c asString) displayNl
            ]
        ]
    ]
]
