using Printf

seconds(i) = div(43200 * i + 21600, 11)
zeroTo12(h) = h == 0 ? 12 : h
parts(t) = (zeroTo12(div(t, 3600)), rem(div(t, 60), 60), rem(t, 60))
0:10 .|> seconds .|> parts .|> t -> @printf("%02d:%02d:%02d\n", t...)