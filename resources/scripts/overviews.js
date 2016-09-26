var langs = [
  {
    i: 'ada', n: 'Ada', h: 'http://www.adaic.org/',
    w: 'Ada_(programming_language)', g: 'ada', rc: 'Ada', pp: 'ada',
    d: 'Ada is a language designed for both massively large software systems and low-level, embedded systems.',
    f: 1983, v: ['83', '95', '2012'],
    r: 'Code safety and maintainability',
    u: 'Avionics, air-traffic control, satellites, defense systems',
    t: ['Structured', 'Imperative', 'Static', 'Concurrent']
  },
  {
    i: 'apl', n: 'APL',
    w: 'APL_(programming_language)', g: 'apl', rc: 'APL', pp: 'apl',
    d: 'APL is the earliest array-oriented language, known for its heavy use of non-ASCII operator symbols, and its ability to express concise code.',
    f: 1962,
    r: 'Concise code, array-orientation, symbolic alphabet',
    u: 'Finance, scientific research',
    t: ['Array-based', 'Dynamic']
  },
  {
    i: 'bash', n: 'Bash', h: 'https://tiswww.case.edu/php/chet/bash/bashtop.html',
    w: 'Bash_(programming_language)', rc: 'UNIX_Shell',
    d: 'Bash is one of the most popular of the Unix shell languages.',
    f: 1989,
    v: ['3 (2004)', '4 (2009)', '4.2 (2011)'],
    r: 'Shell scripting, Text processing',
    u: 'Primary shell for the popular GNU and macOS operating systems',
    t: ['Scripting'],
  },
  {
    i: 'boo', n: 'Boo', h: 'http://boo-lang.org/',
    w: 'Boo_(programming_language)', g: 'boo', rc: 'Boo', pp: 'boo',
    d: 'Boo is a .NET language with a Python-inspired syntax.',
    r: 'Being a pleasant language for writing .NET applications',
    f: 2003,
    u: 'Scripts for the Unity Game Engine',
    t: ['Statically-typed'],
  },
  {
    i: 'c', n: 'C',
    w: 'C_(programming_language)', g: 'c', rc: 'C', pp: 'c',
    d: 'C is the world&rsquo;s most popular systems programming language.',
    f: 1972,
    v: ['K & R (1972)', 'ISO (1989/90)', '99 (1999)', '11 (2011)'],
    r: 'Systems programming',
    u: 'Unix and Unix-like operating systems',
    t: ['Imperative', 'Low-level', 'System', 'Non-managed']
  },
  {
    i: 'ceylon', n: 'Ceylon', h: 'http://ceylon-lang.org/',
    w: 'Ceylon_(programming_language)', g: 'ceylon', rc: 'Ceylon', pp: 'ceylon',
    d: 'Ceylon is an expessive language that can interoperate with both Java and JavaScript. It is known for a rich type system and flow-sensitive typing.',
    f: 2011,
    v: ['1.2.0 (2015)', '1.3.0 (2016)'],
    r: 'Modules',
    t: ['Imperative', 'Statically-typed'],
  },
  {
    i: 'chapel', n: 'Chapel', h: 'http://chapel.cray.com/',
    w: 'Chapel_(programming_language)', g: 'chapel', rc: 'Chapel',
    d: 'Chapel is a expressive parallel programming language in which many aspects of parallelism are defined by language constructs rather than relegated to libraries.',
    f: 2009,
    v: ['1.7 (2013)', '1.13 (2016)'],
    r: 'Separation of parallelism and locality',
    u: 'High-performance computing',
    t: ['Parallel', 'Portable', 'Scalable']
  },
  {
    i: 'clojure', n: 'Clojure', h: 'http://clojure.org/',
    w: 'Clojure', g: 'clojure', rc: 'Clojure', pp: '../dialect/clojure',
    d: 'Clojure is a modern Lisp dialect targeted to modern platforms such as the JVM.',
    f: 2007,
    v: ['1.0 (2009)', '1.7 (2015)'],
    r: 'Macros, Lisp-ness, Concurrency support, Java interoperability',
    u: 'Data mining, Artificial intelligence',
    t: ['Functional', 'Dynamic', 'Concurrent', 'Homoiconic']
  },
  {
    i: 'coffeescript', n: 'CoffeeScript', h: 'http://coffeescript.org/',
    w: 'CoffeeScript', g: 'coffeescript', rc: 'CoffeeScript',
    d: 'CoffeeScript attempts to &ldquo;expose the good parts of JavaScript in a simple way.&rdquo;',
    f: 2009,
    v: ['1.0 (2010)', '1.10 (2015)'],
    r: 'Transpiling to JavaScript, Expressiveness',
    u: 'Web application clients',
    t: ['Functional', 'Expression-Oriented', 'Dynamic']
  },
  {
    i: 'commonlisp', n: 'Common Lisp', h: 'https://common-lisp.net/',
    w: 'Common_Lisp', g: 'common-lisp', rc: 'Common_Lisp', pp: '../dialect/common-lisp',
    d: 'Common Lisp is one of the major dialects of Lisp. It was created in the early 1980s in the hopes of unifying a number of existing dialects into a single standard.',
    f: 1984,
    v: ['ANSI Standard (1994)'],
    r: 'CLOS (the Common Lisp Object System), Generic functions, Methods, Macros, Homoiconicity',
    u: 'Artificial intelligence, Graphics, Scheduling, Search',
    t: ['Dynamic', 'Homoiconic']
  },
  {
    i: 'cpp', n: 'C++', h: 'http://www.stroustrup.com/C++.html',
    w: 'C%2B%2B', g: 'cpp', rc: 'C++', pp: 'c-plus-plus',
    d: 'C++ is a general purpose language for both high-level and low-level applications.',
    f: 1983,
    v: ['98 (1998)', '03 (2003)', '11 (2011)', '14 (2014)'],
    r: 'Extending C with classes and much more',
    u: 'Simulation, Game engines, General purpose computing',
    t: ['Systems', 'Procedural', 'Static', 'Class-based', 'Non-managed'],
  },
  {
    i: 'csharp', n: 'C#', h: 'https://msdn.microsoft.com/en-us/library/z1zx9t92.aspx',
    w: 'C_Sharp_(programming_language)', g: 'c%23', rc: 'C_sharp', pp: 'c-sharp',
    d: 'C# is the flagship enterprise language for the .NET framework.',
    f: 2000,
    v: ['2.0 (2005)', '3.0 (2007)', '4.0 (2010)', '6.0 (2015)'],
    r: '.NET integration, delegates, properties, extension methods, LINQ',
    u: 'Enterprise applications',
    t: ['Static', 'Object-oriented', 'Multi-paradigm', 'Safe'],
  },
  {
    i: 'd', n: 'D', h: 'https://dlang.org/',
    w: 'D_(programming_language)', g: 'd', rc: 'D', pp: 'd',
    d: 'D is a modern language with systems programming features.',
    f: 1999,
    v: ['D2 (2007)'],
    r: 'Optional garbage collection',
    u: 'Operating systems, Data science',
    t: ['Systems', 'Static']
  },
  {
    i: 'dart', n: 'Dart', h: 'https://www.dartlang.org/',
    w: 'Dart_(programming_language)', g: 'dart', rc: 'Dart', pp: 'dart',
    d: 'Dart is an language used to create very large applications. Originally seen as an alternative to JavaScript, the language features optional typing, abstract classes, and generics.',
    f: 2011,
    v: ['1.12.0 (2015)', '1.16.0 (2016)'],
    r: 'Optional typing, Isolates, SIMD support',
    u: 'AdWords, AdSense, Google Fiber',
    t: ['Object-oriented', 'Imperative', 'Functional']
  },
  {
    i: 'elixir', n: 'Elixir', h: 'http://elixir-lang.org/',
    w: 'Elixir_(programming_language)', g: 'elixir', rc: 'Elixir',
    d: 'Elixir is a dynamic functional language targeted to the Erlang virtual machine with a Ruby-inspired syntax.',
    f: 2012,
    v: ['1.0 (2014)', '1.3.0 (2016)'],
    r: 'Concurrency, Reliability, Interoperability with Erlang',
    u: 'Applications within Pintrest and Brightcove',
    t: ['Functional', 'Concurrent', 'Process-Oriented']
  },
  {
    i: 'elm', n: 'Elm', h: 'http://elm-lang.org/',
    w: 'Elm_(programming_language)', g: 'elm', rc: 'Elm',
    d: 'Elm is a functional language ideal for interactive applications.',
    f: 2011,
    v: ['0.10 (2013)', '0.14 (2014)', '0.17 (2016)'],
    r: 'Interactive functional programming',
    u: 'User interfaces, Games',
    t: ['Functional', 'Statically-typed', 'Subscription-oriented']
  },
  {
    i: 'erlang', n: 'Erlang', h: 'https://www.erlang.org/',
    w: 'Erlang_(programming_language)', g: 'erlang', rc: 'Erlang', pp: 'Erlang',
    d: 'Erlang was designed for building fault-tolerant, long-lived applications that handle a large number of concurrent activities, meet real-time constraints, scale across large distributed networks, and are able to be modified while running.',
    f: 1986,
    v: ['R15B (2011)', '17.0 (2014)', '19.0 (2016)'],
    r: 'Concurrency support through message passing, &ldquo;Let it Crash&rdquo; philosophy',
    u: 'Telecom',
    t: ['Concurrent', 'Scalable']
  },
  {
    i: 'factor', n: 'Factor', h: 'http://factorcode.org/',
    w: 'Factor_(programming_language)', g: 'factor', rc: 'Factor', pp: 'factor',
    d: 'Factor is a modern, concatenative, and extensible language.',
    f: 2003,
    v: ['0.97 (2014)'],
    r: 'Flexibility, Large standard library',
    u: 'Research into optimization techniques',
    t: ['Stack-based', 'Concatenative']
  },
  {
    i: 'falcon', n: 'Falcon', h: 'http://www.falconpl.org/',
    w: 'Falcon_(programming_language)', rc: 'Falcon', pp: 'falcon',
    d: 'Falcon is a simple and easy-to-learn multiparadigm language.',
    f: 2003,
    t: ['Multi-paradigm']
  },
  {
    i: 'fortran', n: 'Fortran',
    w: 'Fortran', g: 'fortran', rc: 'Fortran', pp: 'Fortran',
    d: 'Fortran debuted at a time when the need for high-level languages was still being question, so its designers worked hard to make sure generated code could be incredibly efficient',
    f: 1957,
    v: ['I', 'II', 'IV', 66, 77, 90, 95, 2003, 2008, 2015],
    r: 'Likely being the first high-level general purpose programming language',
    u: 'Numeric computation, scientific computing',
    t: ['Imperative', 'High-performance']
  },
  {
    i: 'fsharp', n: 'F#', h: 'http://fsharp.org/',
    w: 'F_Sharp_(programming_language)', g: 'fsharp', rc: 'F_Sharp', pp: 'f-sharp',
    d: 'F# is a modern ML for the .NET world.',
    f: 2005,
    v: ['1.0 (2005)', '2.0 (2010)', '3.0 (2012)', '4.0 (2016)'],
    r: 'Being a modern ML',
    u: 'Machine learning, Business Intelligence, Analytics, Gaming',
    t: ['Static', 'Functional', 'Multi-paradigm']
  },
  {
    i: 'go', n: 'Go', h: 'https://golang.org/',
    w: 'Go_(programming_language)', g: 'go', rc: 'Go', pp: 'go',
    d: 'Go is Google&rsquo;s open source anguage for building simple, reliable, and efficient software',
    f: 2009,
    v: ['1 (2012)', '1.5 (2015)'],
    r: 'Being simpler than C++, Goroutines',
    u: 'Servers',
    t: ['Statically Typed', 'Concurrent', 'Channel-Oriented']
  },
  {
    i: 'gosu', n: 'Gosu', h: 'https://gosu-lang.github.io/',
    w: 'Gosu_(programming_language)',
  },
  {
    i: 'haskell', n: 'Haskell', h: 'https://www.haskell.org/',
    w: 'Haskell_(programming_language)', g: 'haskell', rc: 'Haskell', pp: 'haskell',
    d: 'Haskell is the most popular pure functional language.',
    f: 1990,
    v: ['1.0 (1990)', '98 (1998)', '2010 (2010)'],
    r: 'Pure functions, non-strict semantics, type classes, monads',
    u: 'Academia, Software validation and verification, Modeling, Compilers',
    t: ['Non-strict', 'Lazy', 'Functional']
  },
  {
    i: 'idris', n: 'Idris', h: 'http://www.idris-lang.org/',
    w: 'Idris_(programming_language)', g: 'idris', rc: 'Idris',
    d: 'Idris is a language with dependent types',
    f: 2009,
    v: ['0.10 (2016)', '0.11 (2016)'],
    r: 'Dependent types',
    u: 'Research, Mechanical Theorem Proving',
    t: ['Pure', 'Functional']
  },
  {
    i: 'io', n: 'Io', h: 'http://iolanguage.org/',
    w: 'Io_(programming_language)', g: 'io', rc: 'Io', pp: 'io',
    d: 'Io is a syntactically and semantic simple prototype-based language',
    f: 2002,
    r: 'Simplicity of design',
    u: 'Exploratory software development',
    t: ['Prototypal'],
  },
  {
    i: 'java', n: 'Java', h: 'https://www.oracle.com/java/',
    d: 'Java is an extremely popular enterprise programming language, designed with, among other things, thread-based concurrency and security in mind.',
    w: 'Java_(programming_language)', g: 'java', rc: 'Java', pp: 'java',
    f: 1995,
    v: ['1.1 (1997)', '5 (2004)', '8 (2014)', '9 (2017)'],
    r: 'Classes, Threads, Mature platform',
    u: 'Enterprise computing, Android applications',
    t: ['Architecture-neutral', 'Multithreaded', 'High-performance']
  },
  {
    i: 'javascript', n: 'JavaScript',
    d: 'JavaScript interpreters exist in every major web browser.',
    w: 'JavaScript', g: 'javascript', rc: 'JavaScript', pp: 'javascript',
    f: '1995', v: ['ES3 (1999)', 'ES5 (2000)', 'ES2015 (2015)'],
    r: 'First-class functions, Weak typing, Prototypes',
    u: 'Web application clients, Asynchronous servers',
    t: ['Imperative', 'Functional', 'Dynamic', 'Prototypal']
  },
  {
    i: 'julia', n: 'Julia', h: 'http://julialang.org/',
    d: 'Julia is a modern language for scientific and technical computing.',
    w: 'Julia_(programming_language)', g: 'julia', rc: 'Julia',
    f: 2012,
    v: ['0.4 (2015)', '0.5 (2016)'],
    r: 'Multi-dispatch, Macros, Multicore support',
    u: 'Data Science, Statistics, Numerical Analysis',
    t: ['High-performance', 'Dynamic', 'Multi-dispatch']
  },
  {
    i: 'k', n: 'K', h: 'http://www.kparc.com/',
    w: 'K_(programming_language)', rc: 'K', pp: 'k',
    d: 'K is an array-oriented language influenced by APL.',
    f: 1993,
    r: 'Array operations, Expressive syntax',
    u: 'Finance',
    t: ['Array-based', 'Dynamic']
  },
  {
    i: 'kitten', n: 'Kitten', h: 'http://kittenlang.org/',
  },
  {
    i: 'kotlin', n: 'Kotlin', h: 'https://kotlinlang.org/',
    w: 'Kotlin_(programming_language)', g: 'kotlin', rc: 'Kotlin',
    d: 'Kotlin is a Java-interoperable language intended to be a &ldquo;better Java.&rdquo; Its key contribution is its treatment of nullable vs non-nullable values',
    f: 2011,
    v: ['1.0 (2016)'],
    r: 'Nullables, Interoperability with Java',
    u: 'Replacing Java',
    t: ['Object-oriented', 'Static']
  },
  {
    i: 'lolcode', n: 'LOLCODE', h: 'http://lolcode.org/',
  },
  {
    i: 'lua', n: 'Lua', h: 'https://www.lua.org/',
    d: 'Lua is a powerful, fast, lightweight, embeddable scripting language.',
    w: 'Lua_(programming_language)', g: 'lua', rc: 'Lua', pp: 'lua',
    f: 1993,
    v: ['5.0 (2003)', '5.1 (2006)', '5.2 (2011)', '5.3 (2015)'],
    r: 'Tables, Interoperability with C',
    u: 'World of Warcraft, Angry Birds, Scripting',
    t: ['Imperative', 'Prototypal', 'Scripting']
  },
  {
    i: 'mercury', n: 'Mercury', h: 'https://mercurylang.org/',
  },
  {
    i: 'nasm', n: 'NASM', h: 'http://www.nasm.us/',
  },
  {
    i: 'nemerle', n: 'Nemerle', h: 'http://www.nemerle.org/'
  },
  {
    i: 'nim', n: 'Nim', h: 'http://nim-lang.org/',
  },
  {
    i: 'ocaml', n: 'OCaml', h: 'https://ocaml.org/',
  },
  {
    i: 'perl', n: 'Perl', h: 'https://www.perl.org/',
  },
  {
    i: 'purescript', n: 'PureScript', h: 'http://www.purescript.org/',
  },
  {
    i: 'python', n: 'Python', h: 'https://www.python.org/',
    d: 'Python is a powerful and expressive programming language that &ldquo;lets you work quickly and integrate systems more effectively.&rdquo;',
    w: 'Python_(programming_language)', g: 'python', rc: 'Python', pp: 'python',
    f: 1991,
    v: ['2.2 (2001)', '3.0 (2008)', '2.7 (2010)', '3.5 (2015)'],
    r: 'Expressiveness',
    u: 'Web servers, Scripting, Data science',
    t: ['Imperative', 'Glue', 'Dynamic', 'Scripting']
  },
  {
    i: 'r', n: 'R', h: 'https://www.r-project.org/',
  },
  {
    i: 'racket', n: 'Racket', h: 'https://racket-lang.org/',
  },
  {
    i: 'roy', n: 'Roy', h: 'http://roy.brianmckenna.org/',
    d: 'Roy is an experimental language that compiles to JavaScript. It contains many features of ML-style languages such as Hindley-Milner type inference, pattern matching, and structural typing.',
    f: 2011,
    r: 'Being a precursor to PureScript',
    u: 'Research',
    t: ['Static', 'Research', 'Experimental']
  },
  {
    i: 'ruby', n: 'Ruby', h: 'https://www.ruby-lang.org/en/',
    w: 'Ruby_(programming_language)', g: 'ruby', rc: 'Ruby', pp: 'ruby',
    d: 'Ruby was created, in the words of its designer, to help every programmer in the world to be productive, and to enjoy programming, and to be happy.',
    f: 1995,
    v: ['1.8 (2003)', '1.9 (2007)', '2.0 (2013)', '2.3 (2015)'],
    r: 'OOP, Metaprogramming, DSL construction',
    u: 'Web servers, Scripting',
    t: ['Object-oriented', 'Expression-oriented', 'Dynamic'],
  },
  {
    i: 'rust', n: 'Rust', h: 'https://www.rust-lang.org/',
  },
  {
    i: 'scala', n: 'Scala', h: 'http://www.scala-lang.org/',
  },
  {
    i: 'scratch', n: 'Scratch', h: 'https://scratch.mit.edu/',
  },
  {
    i: 'smalltalk', n: 'Smalltalk',
    w: 'Smalltalk', g: 'smalltalk', rc: 'Smalltalk', pp: 'smalltalk',
    d: 'Smalltalk was conceived and grew up in the same laboratory&mdash;Xerox PARC&mdash; as did the mouse-driven user interface, Ethernet, and the laser printer.',
    f: 1972,
    v: [71, 72, 74, 76, 80],
    r: 'GUI Workstations, Metaprogramming, Object-orientation (Objects all the way down)',
    u: 'Education, Financial analysis and modeling',
    t: ['Object-oriented', 'Dynamic', 'Reflective']
  },
  {
    i: 'sml', n: 'Standard ML',
  },
  {
    i: 'snap', n: 'Snap!', h: 'http://snap.berkeley.edu/',
  },
  {
    i: 'swift', n: 'Swift', h: 'https://swift.org/',
    w: 'Swift_(programming_language)', g: 'swift', rc: 'Swift', pp: 'swift',
    d: 'Swift is an innovative, open source language developed by Apple to make software safer, faster, and more fun to create.',
    f: 2014,
    v: ['1.0 (2014)', '2 (2015)', '3 (2016)'],
    r: 'Being the modern alternative to Objective-C',
    u: 'Native applications for macOS, iOS, watchOS, and tvOS',
    t: ['Imperative', 'Safe']
  },
  {
    i: 'tcl', n: 'Tcl', h: 'https://tcl.tk/',
  },
  {
    i: 'whiley', n: 'Whiley', h: 'http://whiley.org/',
    w: 'Whiley_(programming_language)',
  },
];

var iconFor = function (iconName, uri) {
  return "<a href=" + uri + "><img src=resources/" + iconName + "-icon.png height=20></a>";
}

var currentIndex = 0;
addEventListener("keydown", function(event) {
  if (event.keyCode === 38) {
    show(currentIndex ? currentIndex - 1 : 0);
  } else if (event.keyCode === 40) {
    show(Math.min(currentIndex + 1, langs.length - 1));
  }
});

var sidebar = document.getElementById("sidebar");
langs.forEach(function (lang, i) {
  var element = document.createElement("div");
  var text = document.createTextNode(lang.n);
  element.appendChild(text);
  lang.element = element;
  sidebar.appendChild(element);
  element.onclick = function () {
    show(i);
  }
  if ((lang.h || lang.w || lang.g || lang.rc || lang.pp) && lang.d) {
    var icons = [];
    if (lang.h) icons.push(iconFor('home', lang.h));
    if (lang.w) icons.push(iconFor('wikipedia', 'https://en.wikipedia.org/wiki/' + lang.w));
    if (lang.g) icons.push(iconFor('github', 'https://github.com/search?l=' + lang.g + '&q=stars%3A%3E1&s=stars&type=Repositories'));
    if (lang.rc) icons.push(iconFor('rosetta-code', 'https://rosettacode.org/wiki/Category:' + lang.rc));
    if (lang.pp) icons.push(iconFor('progopedia', 'http://progopedia.com/language/' + lang.pp + '/'));
    if (icons) {
      lang.d += '&nbsp;<span style="white-space:nowrap">' + icons.join('&nbsp;') + '</span>';
    }
  }
});

var imageElement = document.getElementById("logo");
var description = document.getElementById("description");
var info = document.getElementById("info");
var tags = document.getElementById("tags");

var show = function (indexToShow) {
  var language = langs[indexToShow];

  imageElement.src = 'resources/' + language.i + '-logo-240.png';
  if (language.d) {
    description.innerHTML = language.d;
    description.style.display = 'block';
  } else {
    description.style.display = 'none';
  }

  if (language.f || language.v || language.r || language.u) {
    info.style.display = 'block'
    var text = [];
    if (language.f) {
      text.push("<b>First appeared</b>: " + language.f);
    }
    if (language.v && language.v.length > 0) {
      text.push("<b>Notable Versions</b>: " + language.v.join(", "));
    }
    if (language.r) {
      text.push("<b>Recognized for</b>: " + language.r);
    }
    if (language.u) {
      text.push("<b>Used in</b>: " + language.u);
    }
    info.innerHTML = text.join(" &bull; ")
  } else {
    info.style.display = 'none'
  }

  if (language.t) {
    tags.style.display = 'block'
    tags.innerHTML = language.t.map(function (t) {
      return '<span class="tag">' + t + '</span>';
    }).join(" ");
  } else {
    tags.style.display = 'none'
  }

  langs[currentIndex].element.style.backgroundColor = 'black';
  currentIndex = indexToShow;
  langs[currentIndex].element.style.backgroundColor = '#333';
  langs[currentIndex].element.scrollIntoView(false);
  localStorage.setItem('ple_language_overview_last', currentIndex);
};
window.onload = window.onpopstate = function () {
  var retrieved = Math.round(localStorage.getItem('ple_language_overview_last'));
  if (retrieved && retrieved >= 0 && retrieved < langs.length) {
    show(retrieved);
  } else {
    show(0);
  }
};
