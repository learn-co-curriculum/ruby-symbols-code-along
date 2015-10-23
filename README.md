# Code Along: Ruby Symbols

## Objectives

1. Understand the different syntax options when using symbols.
2. Identify how to access values using the bracket method.

## Introduction

We are going to take a deeper dive into Ruby symbols. Our goal is to understand how they are different from strings and when/why we might want to use them in our code. We will also learn how to use the bracket method to access hash values.

## What is a symbol?

The ruby-docs tell us that [symbol](http://ruby-doc.org/core-2.2.0/Symbol.html) objects represent names and some strings inside the Ruby interpreter. They are generated using the :name and :"string" literals syntax, and by the various to_sym methods.

## Code Along: Basic Symbols

***This is a code along exercise. There are no tests to pass, just follow along with the guide and get your code working***. 


### Step 1: Symbol Syntax Options

If you look at the examples below, you can see we have to `food` hashes. They behave exactly the same way, but as you can see look slightly different. 

In Exammple 1 we are using a using a symbol followed by a hash rocket which is pointing to the value. So the symbol `:pizza` is pointing to the value `"awesome"`
####Example 1

```
food1 = {
  :pizza => "awesome",
  :burgers => "great",
  :tacos => "delicious"
}
```

In Example 2 we are using a using a symbol, but this time the colon is after the word which allows us to drop the hash rocket.
####Example 2
```
food2 = {
  pizza: "awesome",
  burgers: "great",
  tacos: "delicious"
}
```

### Step 2: Retrieve Hash Values

Let's drop into an `irb` session to see how both of these hashes behave.

Copy and paste the code in Example 1 and hit return in your terminal. You should see the return value is `{:pizza=>"awesome", :burgers=>"great", :tacos=>"delicious"}`

Let's say we wanted to know the value of the symbol `:pizza`, how would we do that? We use what is known as the bracket method. The bracket method works like this `hash_name[key_name]` => return the value we want. 

For our example, to get the value of `:pizza` we would type `food[:pizza]` which would return the string `"awesome"` Go ahead and try it out in your terminal.

Now let's copy and paste the code from Example 2 into our terminal. When you hit enter, you should see the return value is `{:pizza=>"awesome", :burgers=>"great", :tacos=>"delicious"}` which is the same as Example 1. Although their syntax is different, their return values are identical. One thing to note is the return value is alway in the hashrocket style even if you use `key: "value"` style.

You can access these values in the same way using `hash_name[key_name]` => return the value we want. 

###Now it's your turn! You're going to build hashes using both forms of notation to get your tests to pass. 
Fork and clone this lab. You'll be coding your solutions in `lib/first_challenge.rb` and `lib/second_challenge.rb`. 



