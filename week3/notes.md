Style
=====
The style, order, and syntax of things
Why (Ruby) code is like poetry, and why poetics matter


- If you see a `return` statement, question it.
-- Explicit returns are acceptable to deal with special cases, (filtering out bad input) but they're a code smell.
-- if a method has multiple returns, it's trying to do more than one thing and should be broken into multiple methods.