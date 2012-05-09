!SLIDE quote

# Concepts

!SLIDE

## Employs a Domain Specific Language

    @@@ Ruby
    BattleshipGame.create do

      setup do
        # ...
      end

      play do
        # ...
      end

    end
  
!SLIDE quote

## Test Drive An Implementation

  Remember the goal is to write a test that fails and then write the
  simplest code that passes the test.

!SLIDE quote

## Limits the use of "Primitives"

  Primitives for the sake of this problem include: 
  `String`; `FixNum`; `Float`; `TrueClass`; `FalseClass`; `NilClass`; and 
  `Symbols`

!SLIDE quote

## Limit the amount of branch logic

  Removing as many `if`, `elsif`, `unless`, and `case when` from your
  implementation.
  
!SLIDE quote

## Limits the use of "Primitives" and "Collections"


Primitives for the sake of this problem include: 
`String`; `FixNum`; `Float`; `TrueClass`; `FalseClass`; `NilClass`; and 
`Symbols`

Collections are objects and derivatives  like `Array` and `Hash`