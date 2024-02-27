Set Theory was created in the 1870s by [[Greorg Cantor]]. It was created in order to prove that some infinities are larger than other infinities.

> [!question] Open question
>  How does set theory prove or try to prove that some infinities are larger than others?

There are (at least) two types of set theory; naive set theory and axiomatic set theory.

**Naive set theory** does not limit what constitutes a set because it allows **unrestricted composition**. Unrestricted composition means that we can make sets of anything that we can concieve of. 

**Axiomatic set theory** aims to navigate the paradoxes of naive set theory by providing a rigorous definition of what a set is and is not.

## Set Notation
A set containing the numbers one through three would be expressed using curly brackets, like so:
$$\{1,2,3\}$$

We show membership of a set using the $\in$ symbol, like so:

$$\displaylines{A = \{1, 2, 3\}\\\\
1 \in A\\2 \in A\\4 \notin A}$$

## Set builder notation

Use shorthand for building sets, like so:
$$P = \{\ p \ | \ p \text{ is a prime number} \}$$

To be read as: 
> P ("big P") is the set of p ("little p") such that p is a prime number.

We call the "is a prime" part a **predicate**. The predicate goes after the vertical line. This is a feature of the unrestricted composition aspect of naive set theory.

## Identity

![[Sets are identified only by their members]] 

## Equality
Two sets are equal if they both contain the same elements. The order of elements does not matter. It also does not matter if elements are repeated. See the bit about [[#^224dbf|unrestricted composition in Naive Set Theory]] above.

$$\displaylines{A = \{1, 2,3\}\\B = \{3,1,2,1,2,3,3,3\}\\ A = B}$$

## Cardinality
The size, or **cardinality** of a set is the number of elements it contains. The cardinality is denoted with two vertical lines. The cardinality can also be infinte.

$$\displaylines{A = \{1, 2,3\}\\|A|=3}$$
$$\displaylines{P = \{p|p \text{ is a prime} \}\\|P| = \infty}$$

## Subsets
A set is a **subset** of another set if all of it's elements are also elements of another set.

$$\displaylines{A = \{1,2,3\}\\B = \{2, 3\}\\A\subset B}$$

All sets are considered subsets of themselves. Another way of expressing equality is $\displaylines{A \subseteq B \land B \subseteq A}$.

If a set is a subset of another but not equal to it, it is called a **proper subset** of the other. For example, 

$$\displaylines{A = \{1,2,3\}\\B = \{2, 3\}\\A\subsetneq B}$$
Both $\subset$ and $\subseteq$ can be used to denote proper subsets; it is more explicit to use $\subsetneq$ for proper subsets.

## The Empty Set
The **empty set** is a set that contains no members. It is denoted with the symbol $\emptyset$ or $\{\}$. The empty set is also called the **null set**.The empty set is considered a subset of any set. The empty set is also considered unique, in that there can be only one empty set because if there are no elements, then all empty sets are equal to all other empty sets.

An intersection of any set with the empty set is equal to the empty set.
$A\cap\emptyset = \emptyset$

A union of any set with the empty set is equal to that same set.
$A\cup\emptyset=A$

## Set Operations
### Union
The union of two sets is a third set that contains all elements of A and all elements of B. 

$A = \{1, 2,3\}$
$B = \{3,4,5\}$

$A\cup B=\{1,2,3,4,5\}$

### Intersection
The intersection of two sets is a third set that contains all elements that are in both A and B.
$$\displaylines{A = \{1, 2,3\}\\B = \{3,4,5\}\\A\cap B=\{3\}}$$

If $A\subseteq B$, then $A\cap B = A$

The cardinality of A plus the cardinality of B is equal to the cardinality of the union of A and B plus the cardinality of the intersection of A and B.
$|A| + |B| = |A\cup B| + |A\cap B|$
$|A\cup B| = |A| + |B| - |A\cap B|$

#### **Distributive Laws**
$A \cup (B \cap C) = (A \cup B) \cap (A \cup C)$
$A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$

**Consider**: I only cycle in the summer or in the winter when it's warmer than 20 degrees Celsius is the same as I cycle any day of the year but only when it's summer or greater than 20 degrees Celsius.

$\text{Summer} \cup (\text{Winter } \cap > \text{20 degrees C}) = (\text{Summer} \cup \text{Winter}) \cap (\text{Summer} \cup \text{20 degrees C})$

### Properties of set operations
#### **Idempotent Laws**
$A\cup A=A$
A union of any set with itself is equal to that same set.

$A\cap A=A$
An intersection of any set with itself is equal to that same set.

#### **Commutative Laws**
$A\cup B=B\cup A$
$A\cap B=B\cap A$
The order of operands in a set union or intersection does not matter.

#### **Associative Laws**  
$A\cup (B\cup C)=(A\cup B)\cup C$
$A\cap (B\cap C)=(A\cap B)\cap C$
Arranging the parentheses in an set or union expression does not change the result. This is similar to multiplication and addition.

## Difference
The set-theoretic difference of two sets A and B is the set of all elements in A that aren't in B.

$$A \setminus B = \{x \in A | x \notin B \}$$
For example,
$$\displaylines{A = \{1, 2, 3\}\\B = \{3, 4, 5\}\\A \setminus B = \{3\}}$$

If B is a subset of A, the set-theoretic difference of A and B is called the **complement** of B with respect to A. This can be written as either $B^c$ or $C(B)$ .

> [!question] Open question
> Didn't I also see complements written as $A^\prime$ ("A prime") in semantics or language logic courses?

### De Morgan's Laws
If $A$ and $B$ are subsets of the universal set $U$: 

$(A \cup B)^c = A^c \cap B^c$
> Animals that are neither dogs nor cats are not dogs and are not cats.

$(A \cap B)^c = A^c \cup B^c$

> [!tip] 
> It seems helpful to think of $\cup$ as "or" and $\cap$ as "and".

#### De Morgan's Duality Principle
Exchanging unions and intersections for both of De Morgan's Laws results in another equality law. 

> [!warning] 
> I still don't quite get this.

## The Universal Set
The Universal Set is the set of all elements that are relevant for some topic of interest. 

> In a discussion about dogs, when thinking about all non-sheepdogs, it's pointless to worry about camels.

Because nothing is in the empty set, its complement is the universal set.  $\emptyset ^c = U$; conversely, the complement of the universal set is the empty set. $U^c = \emptyset$

The complement of a complement of a set is equal to the original set. $(A^c)^c = A$

If $A$ is a subset of $B$, then the complement of $B$ is a subset of the complement of $A$.

## Sets of sets
Elements of a set may be sets themselves, but an element is not equivalent to a set with a single element. Set with one element is also called a **singleton**.

Let $A =\{ \{0\}, \{0, 1\}, \{0, 1, 2\}\}$:

A set containing 0 is an element of $A$ 
$\{0\} \in A$ 

0 is not an element of $A$
$0 \notin A$

A set containing zero is not a subset of $A$
$\{0\} \nsubseteq A$

A set containing the set of $A$ is a subset of $A$
$\{\{0\}\} \subseteq A$

## Power sets
The power set contains all subsets of a given set. This is written as $P(A)$

Let $A = \{0, 1\}$:
$P(A) = \{\emptyset, \{0, 1\}, \{0\}, \{1\}\}$

## Indexed families of sets
Each element is indexed by a number. This is written as $A = \{A_i | i \in I\}$.

If we let $A = \{A_i | i \in \{1, 2, 3\}\}$:
$A = \{A_1, A_2, A_3\}$

$A_1 = 1$, $A_2 = 2$, etc.

## Russel's Paradox
$\Omega$ is the truly universal set; the set of everything in the universe. Based on the law that states that sets are subsets of themselves, it would mean that everything in the universe is a subset of everything in the universe, which doesn't make sense.

We could say that $\Omega$ is a set containing all sets that do not contain themselves, but all sets contain themselves, so $\Omega$ should be the $\emptyset$ in that case.

I don't quite get why this is a paradox. Any given set is said to contain itself, but obvious it does not, which is why we have the term proper subset. 

re: https://www.youtube.com/watch?v=ymGt7I4Yn3k
It could also be that since subsets of sets are sets, and since sets can contain themselves, but elements are not sets; those things cannot all be true.

If numbers are sets (as Russel proposed); why can't things be sets? Why can't a cat be a set of all the things that make a cat a cat? Why can't Lebron James be a set of all things that make Lebron James Lebron James?

Ah; so if the rule of unrestricted composition applies, then we can create sets that are incomprehensible and paradoxical. Russel's letter asked if we could have a set of sets that do not contain themselves. 
$$A = \{x: x \text{ is a set that does not contain itself}\}$$
I still don't get it, though. Wouldn't that just be an empty set because there are no such sets? Something similar to the fact that we cannot divide by zero.

## Best practices
- Explicitly declare the sets of numbers you are starting with.
$$\{ p \in \mathbb{N} | p < 5 \} \neq \{r \in \mathbb{R} | r < 5 \}$$
 