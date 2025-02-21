{assume a is defined out here}
module M1;
    define b, c;
    use a;
    var d: integer;

    module M2:
        define c, e;
        use d;
        var c: integer; e: integer; f: integer;
        {c, d, e, f are accessible here}
    end M2;

    procedure b;
        var f: boolean;
        {a, b, c, d, e, f are accessible here}
    end b;

    {a, b, c, d, e are accessible here}
end M2;
