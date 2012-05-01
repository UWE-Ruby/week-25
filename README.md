## Stay Confident and DRY

Maintainable code requires that a developer to adhere to a number of principals
that are often to difficult to employ at all times. Often times we are both
learning a new domain, API, or language as well as trying to solve complex
problems. The combination of the two often forces us to make to make poor
design decisions.

### Exercise

The objective of the exercise is to make the sample code __"better"__. While you
and your partner are the ultimate arbitrator of "better" there are some core
tenets that are often supported by a large set of developers:

#### [The Rules of Simplicity](http://c2.com/cgi/wiki?XpSimplicityRules)

* Pass all tests
* Clear, expressive, and consistent
* Duplications no behavior or configuration
* Minimal Methods, Classes, and Modules

#### Goal

Understand the code.

Define the criteria that would make this code "better".

Implement a solution that employs the criteria you defined. The idea here is to
generate a solution that you think is __"better"__.

### Exercise Retrospective

* What, if anything, did you learn today?

* What, if anything, surprised you today?

* What, if anything, will you do differently in the future?

### Reading

* [Ruby Metaprogramming](http://pragprog.com/book/ppmetr/metaprogramming-ruby)

    > Chapter 4 - Thursday: Class Definitions

* [Confident Code](http://www.confreaks.com/videos/614-cascadiaruby2011-confident-code)

    > Suggestions and tips on how to write code that makes a statement,
    not asking a bunch of questions.

### Further Exercise

This example provided with this exercise provides a simplistic solution.

* Attempt a solution that limits the use of "Primitives"

    > Primitives for the sake of this problem include: `String`; `FixNum`;
    `Float`; `TrueClass`; `FalseClass`; `NilClass`; and `Symbols`

* Attempt a solution with Test Driven Development

    > Remember the goal is to write a test that fails and then write the
    simplest code that passes the test.

* Attempt a solution that limits the use of branching logic

    > Removing as many `if`, `elsif`, `unless`, and `case when` from your
    implementation.

* Attempt a solution that limits the use of "Primitives" and "Collections"

    > Collections are objects and derivatives like `Array` and `Hash`