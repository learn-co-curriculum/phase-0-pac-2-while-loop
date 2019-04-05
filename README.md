# Programming as Conversation 2: Repetition With the `while` Statement

## Learning Goals

* Define the Basic `while...do...end` Structure
* Write an Infinite Loop
* Use Control-C to Break an Infinitely Looping Program
* Terminate a `while...do...end` Loop Naturally
* Terminate a `while...do...end` Loop With `break` Statement

## Introduction

The final piece of using _statements_ to control the flow of Ruby execution is
_repetition_. While the **default sequence** requires Ruby to execute top-down,
left to right, we've seen that we can skip chunks of code using the _selection_
statement `if...else...end`. In some ways the reverse of _selection_ is
_repetition_: "Don't move on," we tell Ruby, "do something else until I say
it's OK to move on." The most fundamental _repetition_ construct, present in
pretty much every programming language, is the `while...do...end` loop.

Ruby features other _repetition_ statements, but, for the most part, they're
simplifications on the `while...do...end` statement.

## Define the Basic `while...do...end` Structure

The basic `while...do...end` looks like:

```ruby
while (condition expression) do
 # stuff to do
end
```

As long as the condition expression is `true` (or truthy), the code inside the
`do...end` block will run. Keep in  mind, as an _expression_ the condition
expression can be quite rich, using `&&`, `||`, `()`, etc.

## Write an Infinite Loop

Given this definition of `while...do...end`, any truthy expression will make
the loop run forever.

```ruby
while true do
  puts "say this forever..."
end
```

Remember truthy? Here again:

```ruby
while -1 do # -1 is truthy....
  puts "say this forever..."
end
```

## Use Control-C to Break an Infinitely Looping Program

If you ever accidentally have a program run inside a loop (maybe you made an
error?), make sure you're in the terminal spot of the In-Browser IDE and type
Control-C. That's an old-school UNIX key-combination that means INTERRUPT.
Interrupting a running program will break it out of an infinite loop.

## Terminate a `while...do...end` Loop Naturally

Most loops aren't meant to run infinitely. There's some condition that they
cross, that's captured in the _condition expression_ that tells the
`while...do...end` that it's time is over and it's time to return to the
**default sequence** which will resume after the `end`.

So, somehow we need to create an expression that's true when the `while` begins
(so that the code in the `do...end` runs), but which will eventually become
false.

Here's a simple example:

```ruby
count = 0 # A bit of data defined outside the loop
while count < 3 do # A Boolean expression using the bit of data
  puts "I am the #{count}, I love to count!" # Work
  count = count + 1 # A bit of work that moves the bit of data closer to being false
end
```

This produces:

```text
I am the 0, I love to count!
I am the 1, I love to count!
I am the 2, I love to count!
```

Let's say we forgot the line `count = count + 1` our _condition expression_
would _always_ be `true` and, therefore, we'd have an infinite loop.

## Terminate a `while...do...end` Loop With `break` Statement

Programmers consider it most "expressive" to put the _condition expression_
next to the while. Programmers are used to looking next to `while` to find out
why a loop exited. **However**, we _can_ break out of a loop by using the
`break` statement.

> **LEARNING NOTE**: You'll also notice we're using a statement modifier and a
> equality-testing (Boolean) expression.  You might be noticing that all of our
> lessons are starting to line up.

```ruby
magic_exit_number = 7
count = 0
while count < 10 do
  break if count == magic_exit_number
  puts "I am the #{count}, I love to count!" # Work
  count = count + 1
end
```

Again, another way of writing this that keeps the _condition expression_ all in
one place would be:


```ruby
magic_exit_number = 7
count = 0
while count < 10 && count != magic_exit_number do
  puts "I am the #{count}, I love to count!" # Work
  count = count + 1
end
```

## Conclusion

Congratulations. You know have the `while...do...end` construct as an ally.
With an understanding of _sequence_, _selection_ and now _repetition_ on top of
your experience with expressions, you can write powerful programs! Be sure and
experiment with writing your own loops and don't forget, if your application is
not responding, use Control-C to interrupt the program!
