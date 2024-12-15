## Cahpter 6


###  What is a chance experiment?
A process or activity that produces uncertain outcomes, such as rolling a die or flipping a coin.

### How is the sample space defined in probability?
The sample space is the set of all possible outcomes of a chance experiment. For example, the sample space for flipping a coin is {Heads, Tails}.

### What is an event in probability?
An event is a subset of the sample space, representing one or more outcomes. For example, rolling an even number on a die is an event {2, 4, 6}.

### What does it mean for two events to be independent?
Two events are independent if the occurrence of one **does not affect the probability of the other**. For example, rolling two dice.

### Example: Consider the chance experiment in which the type of transmission automatic (A) or manual (M) is recorded for each of the next two cars purchased from a certain dealer.

**a. What is the set of all possible outcomes (the sample space)?**

$$
S={AA,AM,MA,MM}
$$


<img src="https://d2nchlq0f2u6vy.cloudfront.net/16/09/27/f835dd189ff81b2d362f0979c2841d8a/e99744420f12f9c8704a35afba6d5403/image_scan.jpg">


**c. List the outcomes in each of the following events. Which of these eventsare simple events?**

**i. B the event that at least one car has an auto- matic transmission**

$$
B={AA,AM,MA}
$$

**ii. C the event that exactly one car has an auto- matic transmission**

$$
C={AM,MA}
$$

**iii. D the event that neither car has an automatic transmission**

$$
D={MM}
$$

**d. What outcomes are in the event B and C ?**

$$
B∩C={AM,MA}
$$

**In the event B or C ?**

$$
B∪C={AA,AM,MA}
$$

## Probability Laws
### What is the Addition Rule for Mutually Exclusive Events?
If events A and B are mutually exclusive, then P(A or B) = P(A) + P(B).

<img src="https://d138zd1ktt9iqe.cloudfront.net/media/seo_landing_files/mutually-exclusive-01-1621585462.png">

### How is the Complement Rule applied?
$$
P(A') = 1 - P(A).
$$

## Conditional Probability
### What is conditional probability?
The likelihood of an event occurring given that another event has already occurred, expressed as $P(A|B) = P(A ∩ B)  /  P(B)$ .

#### Example: If P(A ∩ B) = 0.2 and P(B) = 0.5, what is P(A|B)?
$P(A|B) = P(A ∩ B)  /  P(B) = 0.2 / 0.5 = 0.4$

## Approaches to Probability
### What are the classical, relative frequency, and subjective approaches to probability?

- **Classical Approach:** Assumes equally likely outcomes.

    - **Example: What is the probability of rolling a 4 on a *fair* die?** Using the classical approach: P(4) = 1/6.
    - **Example: What is the probability of getting heads in a single toss of a fair coin?**  P(Heads) = 0.5.

- **Relative Frequency:** Based on the proportion of times an event occurs in repeated trials.

### Law of Large Numbers 

The Law of Large Numbers states that as the **number of trials or observations increases**, the sample mean will get closer to the true population mean.

*If you flip the coin a small number of times, the proportion of heads might deviate significantly from 0.5 But as the number of flips grows large, the proportion of heads will approach 0.5*

---


## **Probability Rules: Addition and Multiplication**

This document explains and illustrates two fundamental rules of probability: the **Addition Rule** and the **Multiplication Rule**.

---

## **1. Addition Rule of Probability**

The **Addition Rule** is used to calculate the probability of the union of two events ($A \cup B$).

### **a. Mutually Exclusive Events**
If two events $A$ and $B$ are **mutually exclusive** (they cannot occur together), the formula is:

$$
P(A \cup B) = P(A) + P(B)
$$

#### **Example: Rolling a Die**
- Event $A$: Rolling a 2.
- Event $B$: Rolling a 5.

Since a single die cannot show both 2 and 5 at the same time, these events are mutually exclusive.  
Given $P(A) = \frac{1}{6}$ and $P(B) = \frac{1}{6}$:

$$
P(A \cup B) = \frac{1}{6} + \frac{1}{6} = \frac{2}{6} = \frac{1}{3}
$$

**Interpretation**: The probability of rolling either a 2 or a 5 is $$ \frac{1}{3} $$.

---

### **b. Non-Mutually Exclusive Events**
If two events $A$ and $B$ **can occur together**, the formula is:

$$
P(A \cup B) = P(A) + P(B) - P(A \cap B)
$$

#### **Example: Drawing Cards**
- Event $A$: Drawing a King.
- Event $B$: Drawing a Heart.

Since the King of Hearts belongs to both events:

$$
P(A) = \frac{4}{52}, \quad P(B) = \frac{13}{52}, \quad P(A \cap B) = \frac{1}{52}
$$

Using the formula:

$$
P(A \cup B) = P(A) + P(B) - P(A \cap B)
$$

$$
P(A \cup B) = \frac{4}{52} + \frac{13}{52} - \frac{1}{52} = \frac{16}{52} = \frac{4}{13}
$$

**Interpretation**: The probability of drawing a King or a Heart is $$ \frac{4}{13} $$.

---

## **2. Multiplication Rule of Probability**

The **Multiplication Rule** is used to calculate the probability of the intersection of two events ($A \cap B$).

### **a. Independent Events**
If two events $A$ and $B$ are **independent** (the occurrence of one does not affect the other), the formula is:

$$
P(A \cap B) = P(A) \cdot P(B)
$$

#### **Example: Tossing a Coin and Rolling a Die**
- Event $A$: Getting Heads on a coin toss ($P(A) = \frac{1}{2}$).
- Event $B$: Rolling a 6 on a die ($P(B) = \frac{1}{6}$).

The events are independent. Using the formula:

$$
P(A \cap B) = P(A) \cdot P(B) = \frac{1}{2} \cdot \frac{1}{6} = \frac{1}{12}
$$

**Interpretation**: The probability of getting Heads on the coin and rolling a 6 on the die is $$ \frac{1}{12} $$.

---

### **b. Dependent Events**
If two events $A$ and $B$ are **dependent** (the outcome of one event affects the other), the formula is:

$$
P(A \cap B) = P(A) \cdot P(B | A)
$$

Where $P(B | A)$ is the **conditional probability** of $B$ given $A$.

#### **Example: Drawing Marbles Without Replacement**
A bag contains 5 red marbles and 3 blue marbles. Two marbles are drawn **without replacement**:
- Event $A$: Drawing a red marble on the first draw ($P(A) = \frac{5}{8}$).
- Event $B$: Drawing a red marble on the second draw given $A$ ($P(B | A) = \frac{4}{7}$).

Using the formula:

$$
P(A \cap B) = P(A) \cdot P(B | A)
$$

$$
P(A \cap B) = \frac{5}{8} \cdot \frac{4}{7} = \frac{20}{56} = \frac{5}{14}
$$

**Interpretation**: The probability of drawing two red marbles in succession is $$ \frac{5}{14} $$.

---

## **Summary**

- **Addition Rule**:
  - For mutually exclusive events: $$ P(A \cup B) = P(A) + P(B) $$
  - For non-mutually exclusive events: $$ P(A \cup B) = P(A) + P(B) - P(A \cap B) $$

- **Multiplication Rule**:
  - For independent events: $$ P(A \cap B) = P(A) \cdot P(B) $$
  - For dependent events: $$ P(A \cap B) = P(A) \cdot P(B | A) $$