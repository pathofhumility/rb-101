## Question 1
```ruby
MyModule
```
This is an example of?

[ ] A Snake case

**[X] B Camel case**

[ ] C Sentence case

[ ] D None of the above

## Question 2
Identify the valid Ruby comment style.

[ ] A
```ruby
<!-- This is a comment -->
```
[ ] B
```ruby
/* This is a comment */
```
**[x] C**
```ruby
# This is a comment
```
[ ] D
```ruby
// This is a comment
```
## Question 3
Select all the code examples that are valid examples of Ruby syntax.

**[x] A**
```ruby
response = Kerner.gets().chomp()
```
**[x] B**
```ruby
response = Kernel.gets.chomp
```
[ ] C
```ruby
response = Kernel().gets.chomp
```
**[x] D**
```ruby
response = gets.chomp
```
## Question 4
Examine the following code:
```ruby
a = 2
b = rand(2)
a *= b

if a = 2
  puts 'Two'
else
  puts 'Not Two'
end
```
There is an error in the code which means that it will always output "Two". Identify the line responsible for the error.

[ ] A
```ruby
a = 2
```
[ ] B
```ruby
b = rand(2)
```
[ ] C
```ruby
a *= b
```
**[x] D**
```ruby
if a = 2
```
## Question 5
What is pseudocode?

[ ] (A) Pseudocode is the use of shapes and components to map out the logical sequence of a program or algorithm in a visual way.

**[x] (B) Pseudocode is a human-readable, high-level description of a program or algorithm which helps us formulate a solution at the logical problem domain level.**

[ ] (C) Pseudocode is a static code analyzer. It analyzes your code and offers advice regarding its style format as well as possible logical errors.

[ ] (D) Pseudocode is a debugging tool featuring syntax highlighting, a flexible plugin architecture, runtime invocation and source and documentatiion browsing.

## Question 6
Given the following piece of pseudocode, which code implementation most closely matches it?

```txt
Given a sentence made up of several words, write a method to do the following.

Iterate through the words one by one.
  - save the first word as the starting value.
  - starting with the next word iterate through all the remaining words in the sentence
  - for each iteration, compare the saved value with the current word.
  - if the word is longer or the same length as the saved value:
    - reassign the saved value as the current word
  - move on to the next word

After iterating through the sentence, return the saved value.
```
[ ] (A)
```ruby
def longest_word(sentence)
  words = sentence.split
  saved_word = words[0]

  words.each do |word|
    if word.length > saved_word.length
      saved_word = word
    end
  end

  saved_word
end
```
[ ] (B)
  ```ruby
  def longest_word(sentence)
    words = sentence.split
    saved_word = words.shift

    words.each do |word|
      if saved_word.length < word.length
        saved_word = word
      end
    end

    saved_word
  end
  ```
**[x] (C)**
  ```ruby
  def longest_word(sentence)
    words = sentence.split
    saved_word = words.shift

    words.each do |word|
      if word.length >= saved_word.length
        saved_word = word
      end
    end

    saved_word
  end
  ```
[ ] (D)
  ```ruby
  def longest_word(sentence)
    words = sentence.split
    saved_word = words[0]

    words.each do |word|
      if word.length >= saved_word.length
        saved_word = word
      end
    end

    saved_word
  end
  ```
Question 7
In Ruby, what do we mean when we refr to something being truthy?
Choose all the answers that apply.
- [] A It is a boolean object.
- [x] B It evaluates to `true` when used in a conditional.
- [x] C It is not `nil` or `false`.
- [x] D It returns `true` when preceded with a `!!`.

Question 8
There is an error in the code below; identify what it is.
```ruby
user_input = gets

loop do
  name = user_input
  break
end

if user_input
  puts "Hello " + name
end
```
- [] A We didn't chain `.chomp` to our `gets` method call, this means the input value cannot then be appended to another string.
- [x] B The local variable `name` is initialized within the block, and so is not available in the outer scope.
- [] C The local variable `name` has been assigned to `user_input`, the `user_input` variable itself is no longer available and so cannot be used in the conditional.
- [] D The `String#+` method we call on `"Hello "` does not mutate the caller.

Question 9
What specifically do we mean when we refer to a variable's scope?
- [] A We mean whether or not the variable was passed as an argument to a method.
- [] B We mean the type of object (string, ingteger, array, etc) that the variable is assigned to.
- [x] C We mean where in a program that variable is available for use.
- [] D We mean whether that variable is `truthy` or `falsey`.

Question 10
Select all of the statements which are true regarding local variable scope in Ruby.
- [x] A Methods define their own, self-contained, scope.
- [] B Each branch of an `if/ else` statement defines a separate, inner scope. These branches do not conflict.
- [] C Any code delimited by either curly braces `{}` or `do/end` defines a new scope.
- [x] D Variables initialized in an outer scope can be accessed in an inner scope defined by a block, but not vice versa.

Question 11
Which statement most accurately describes why the last line of the code below outputs `"hi"`?
```ruby
def extend_greeting(greeting)
  greeting + " there"
end

greeting = "hi"
extend_greeting(greeting)

puts greeting
```
- [] A Because the method parameter has the same name as the variable to which `"hi"` is assigned. This is variable shodowing, which prevents access to the outer scope local variable.
- [] B Because the `extend_greeting` method does not have a `!` at the end of the method name so the `greeting` variable is not mutated.
- [x] C Because `String#+` method does not mutate the caller.
- [] D Because methods define their own scope, anything that happens inside the `change-greeting` method doesn't affect the `greeting` variable outside of the method.

Question 12
Looking again at the code from the previous question:
Select all the ways in which wew could change this code in order for the last line to output `"hi there"`.
- [] A Change `greeting + " there"` to `greeting += "there"`.
- [x] B Change `extend_greeting(greeting)` to `greeting = extend_greeting(greeting)`.
- [x] C Remove `puts greeting` and change `extend_greeting(greeting)` to `puts extend_greeting(greeting)`.
- [x] D Change `greeting + " there"` to `greeting << there`.

Question 13
Which of the following behaviors does Ruby exhibit when passing an object as an argument to a method call? Select all that apply.

- [x] A When an object is passed to a method call as an argument, the parameter assigned to it acts as a pointer to the original object.
- [x] B Re-assigning a variable within a method doesn't affect the object that the variable is pointing to outside of the method.
- [] C When an object is passed to a method call as an argument, a copy of the object is created and passed into the method.
- [x] D It is possible for an operation within the method to mutate the original object outside of the method.

Question 14
What do we mean when we talk about variables as pointers in Ruby?
Select all answers that apply.

- [] A You can't have more than one variable pointing to the same memory address at the same time.
- [x] B Variables in Ruby act as labels we create to refer to physical space in memory.
- [] C Using a method that mutates the caller points a variable to different memory address.
- [] D Variables can only act as pointers if we pass them into a method as an argument.

Question 15
Why is the `name` method invoked instead of the local variable `name` on line 8 in the following example?
```ruby
def name
  "George"
end

name = "Lisa"

def display_name
  puts name
end

display_name
```
- [] A The `name` method is defined before the local variable `name` is initialized, so the method takes precedence.
- [] B Ruby tries to reference the local variable `name` first, but can't access it from within the method, so the `name` method is invoked instead.
- [x] C Local variables that are initialized outside of a method can't be accessed from within the method definition. Methods defined within the same scope, however, can be invoked from within other methods.
- [] D All of the above.

Question 16
In the following example, `"George"` is printed to the screen because the `name` method is invoked on line 8.
```ruby
def name
  "George"
end

name = "Lisa"

def display_name
  puts name()
end

display_name
```
How can we change the code so that `"Lisa"` is pronted instead?
[ ] (A) 
```ruby
def name
  "George"
end

name = "Lisa"

def display_name(name)
  puts name()
end

display_name(name)
```
[ ] (B)
```ruby
def name
  "George"
end

name = "Lisa"

def display_name
  puts name
end

display_name
```
[ ] (C)
```ruby
def name
  "George"
end

def dispalay_name
  name = "Lisa"
  puts name()
end

display_name
```
**[X] (D)**
```ruby
def name
  "George"
end

name = "Lisa"

def diaplay_name(name)
  puts name
end

display_name(name)
```
## Question 17
In the following example, why does Ruby reference the local variable `name` on line 8(`puts name`) instead of invoking the `name` method?
```ruby
name = "Lisa"

def name
  "George"
end

loop do
  puts name
  break
end
```
[X] (A) Local variables initialized outside of a block (in the outer scope) can be accessed from within the block's inner scope. Inside the block, both the local variable and the method are in scope, but by default Ruby first referenced the local variable.
[ ] (B) Ruby tries to reference the `name` method first, but can't invoke the method from within the block, so the local variable `name` is referenced instead.
[ ] (C) The local variable `name` is initialized before the `name` method is defined, so the local variable takes precedence.
[ ] (D) All of the above.
