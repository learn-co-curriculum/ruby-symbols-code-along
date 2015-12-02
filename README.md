# Code Along: Ruby Symbols

## Objectives

1. Understand the different syntax options when using symbols.
2. Identify how to access values using the bracket method.

## Introduction
While googling around about hashes, you may have encountered something like this: `food = {:pizza => "awesome"}`. What is that `:pizza` thing? It kinda looks like a string, but it has that colon. That colon signifys this is a new data type, a symbol. We generally use symbols as our keys. Let's find out why

We are going to take a deeper dive into Ruby symbols. Our goal is to understand how they are different from strings and when/why we might want to use them in our code. We will also learn how to use the bracket method to access hash values.

## What is a symbol?

The ruby-docs tell us that [symbol](http://ruby-doc.org/core-2.2.0/Symbol.html) objects represent names and some strings inside the Ruby interpreter. They are generated using the :name and :"string" literals syntax, and by the various to_sym methods.

Pretty much what this means is symbols are just strings, but instead of wrapping them with quotes we prefix them with a colon. More interestingly...why do we use them for hash keys? One great feature of symbols is that they cannot change (immutable). Because of that fact, if you make two symbols :hello and :hello, Ruby doesn't create to spaces in memory to hold the same content, it just creates one! This saves a ton of memory over time and so we use them for our keys whenever we can. It's ok if this doesn't make a ton of sense, just remember to use symbols when you can for hash keys.

## Code Along: Basic Symbols

***This is a code along exercise. First we will go through a couple of examples in your terminal. Then you will fork and clone this lab to complete the exercise and make your tests pass.***


### Step 1: Symbol Syntax Options

If you look at the examples below, you can see we have two `food` hashes. They behave exactly the same way, but as you can see look slightly different.

In Example 1 we are using a using a symbol followed by a hash rocket which is pointing to the value. So the symbol `:pizza` is pointing to the value `"awesome"`

#### Example 1

```ruby
food1 = {
  :pizza => "awesome",
  :burgers => "great",
  :tacos => "delicious"
}
```

In Example 2 we are using a using a symbol, but this time the colon is after the word which allows us to drop the hash rocket. This is known as JSON notation. This was introduced in ruby 1.9 and we generally prefer JSON notation now.

#### Example 2

```ruby
food2 = {
  pizza: "awesome",
  burgers: "great",
  tacos: "delicious"
}
```

### Step 2: Retrieve Hash Values

Let's open up an interactive Ruby session in your terminal by typing `irb`.

Copy and paste the code in Example 1 and hit return in your terminal. You should see the return value is `{:pizza=>"awesome", :burgers=>"great", :tacos=>"delicious"}`

Let's say we wanted to know the value of the symbol `:pizza`, how would we do that? We use what is known as the bracket method. The bracket method works like this `hash_name[key_name]` => return the value we want.

For our example, to get the value of `:pizza` we would type `food[:pizza]` which would return the string `"awesome"` Go ahead and try it out in your terminal.

Now let's copy and paste the code from Example 2 into our terminal. When you hit enter, you should see the return value is `{:pizza=>"awesome", :burgers=>"great", :tacos=>"delicious"}` which is the same as Example 1. Although their syntax is different, their return values are identical. One thing to note is the return value is always in the hashrocket style even if you use `key: "value"` style, so when using the bracket method to retrieve values, you have to pass in a symbol.

You can access these values in the same way using `hash_name[key_name]` => return the value we want.

### Now it's your turn! You're going to build hashes using both forms of notation to get your tests to pass.

Fork and clone this lab. You'll be coding your solutions in `lib/first_challenge.rb` and `lib/second_challenge.rb`.

For challenge one, create a hash called `first_challenge`. Inside of you hash create a key called `:pizza` and have it point to the value `awesome`. Here you are using hashrocket notation. Your code should look like the following.

```ruby
first_challenge = {
  :pizza => "awesome"
}
```
For challenge two, create a hash called `second_challenge`.

Inside of you hash create a key called `burgers` and have it point to the value `great`. Here you are using JSON notation. Your code should look like the following.

```ruby
first_challenge = {
  burgers: "great"
}
```
At this point both of your tests should be passing.

<a href='https://learn.co/lessons/ruby-symbols-code-along' data-visibility='hidden'>View this lesson on Learn.co</a>
