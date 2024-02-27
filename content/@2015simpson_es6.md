---
tags: 
  - source
alias: ""
---
# ES6 and Beyond
[[Kyle Simpson]] wrote this book for [[O'Reilly]].

```bibtex
book{2015simpson_es6,
	title = {{ES6} and Beyond},
	author = {Simpson, Kyle},
	publisher = {O'Reilly},
	year = {2015}
}
```

> [!summary] Summary
> Simpson reviews the features included in ES6 and best practices for their use.


## Notes
Functions can be named both publicly and privately.  This can be useful for functions that need to be able to call themselves.

```js
const obj = {
	fn: function doSomething (x) {
		console.log(x);
		if (x === 0) { 
			return 0; 
		}
		return doSomething(x - 1)
	}
}

obj.fn(3)
```

Arrow functions are always anonymous.

Concise functions allow you to abbreviate definitions for functions within objects.
```js
const concise = {
	add(x, y) {
		return x + y
	}
}

concise { add: f }
```

Maybe tagged template literals could be used for internationalization?

> - If you have a short, single-statement inline function expression, where the only statement is a `return` of some computed value, *and* that function doesn’t already make a `this` reference inside it, *and* there’s no self-reference (recursion, event binding/unbinding), *and* you don’t reasonably expect the function to ever be that way, you can probably safely refactor it to be an => arrow function.
> - If you have an inner function expression that’s relying on a `var self = this` hack or a `.bind(this)` call on it in the enclosing function to ensure proper this binding, that inner function expression can probably safely become an => arrow function.
> - If you have an inner function expression that’s relying on something like `var args = Array.prototype.slice.call(arguments)` in the enclosing function to make a lexical copy of arguments, that inner function expression can probably safely become an => arrow function.
> - For everything else — normal function declarations, longer multi-stat[e]ment function expressions, functions which need a lexical name identifier self-reference (recursion, etc.), and any other function which doesn’t fit the previous characteristics — you should probably avoid => function syntax.

In other words, don't use arrow functions just to use them. They should be used for very simple one-liner functions with implied returns, or to deliberately make use of lexical binding of `this` and `arguments`.

