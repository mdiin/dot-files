---
name: Clojure development
description: Provides guidance on idiomatic Clojure development, emphasizing the use of standard library sequence functions, transducers, and reduce over loop/recur.
---

# Clojure Development Guidelines

## Idiomatic Clojure

When writing Clojure code, prioritize idiomatic patterns and leverage the standard library to write concise and readable code. Emphasize the use of transducers for efficient and composable transformations. Additionally, ensure that parentheses are correctly balanced to avoid syntax errors and improve code clarity.

## Sequence Functions

Prefer standard library sequence functions (e.g., `map`, `filter`, `reduce`, `into`, `for`, etc.) over manual recursion or loops. These functions are optimized and make the code more declarative.

### Examples:

- Use `map` for transformations:
  ```clojure
  (map inc [1 2 3]) ; => (2 3 4)
  ```

- Use `filter` for selecting elements:
  ```clojure
  (filter even? [1 2 3 4]) ; => (2 4)
  ```

- Use `reduce` for aggregations:
  ```clojure
  (reduce + [1 2 3 4]) ; => 10
  ```

## Transducers

Transducers are a powerful and idiomatic way to compose transformations efficiently. They separate the transformation logic from the context (e.g., sequences, channels, observables), making them highly reusable and performant.

### Key Benefits of Transducers:

- **Composability**: Transducers can be composed together to create complex transformations.
- **Efficiency**: They avoid creating intermediate sequences, reducing memory overhead.
- **Reusability**: The same transducer can be used in different contexts (e.g., `into`, `sequence`, `transduce`).

### Examples:

#### Basic Transducer

```clojure
(def xf (comp (map inc) (filter even?)))

;; Using with into
(into [] xf [1 2 3 4]) ; => [2 4]

;; Using with sequence
(sequence xf [1 2 3 4]) ; => (2 4)

;; Using with transduce
(transduce xf conj [1 2 3 4]) ; => [2 4]
```

#### Transducer with Multiple Steps

```clojure
(defn process-data [data]
  (let [xf (comp
            (map :value)
            (filter pos?)
            (map #(* % 2)))]
    (into [] xf data)))

(process-data [{:value 1} {:value -2} {:value 3}]) ; => [2 6]
```

#### Stateful Transducers

```clojure
(defn moving-average [n]
  (fn [rf]
    (let [window (volatile! [])]
      (fn
        ([] (rf))
        ([result] (rf result))
        ([result input]
         (vswap! window conj input)
         (let [window @window
               avg (if (<= n (count window))
                     (/ (apply + (take-last n window)) n)
                     nil)]
           (if avg
             (rf result avg)
             result))))))

(transduce (moving-average 3) conj [1 2 3 4 5]) ; => [2.0 3.0 4.0]
```

## Reduce Over Loop/Recur

When you need to perform reductions or aggregations, prefer `reduce` over `loop/recur`. The `reduce` function is more idiomatic and often clearer for such operations.

### Example:

- Use `reduce` for summing a list:
  ```clojure
  (reduce + [1 2 3 4]) ; => 10
  ```

Instead of:
```clojure
(loop [sum 0
       coll [1 2 3 4]]
  (if (empty? coll)
    sum
    (recur (+ sum (first coll)) (rest coll))))
```

## Standard Library Functions

Leverage the rich set of functions provided by the Clojure standard library. Familiarize yourself with functions in the following namespaces:

- `clojure.core`: Contains most of the essential functions like `map`, `filter`, `reduce`, `into`, `for`, etc.
- `clojure.set`: Useful for set operations.
- `clojure.string`: For string manipulations.

## Parentheses Balancing

Correctly balancing parentheses is crucial in Clojure. Always ensure that every opening parenthesis `(` has a corresponding closing parenthesis `)`. This practice helps avoid syntax errors and makes the code easier to read and debug.

### Tips for Balancing Parentheses:

- Use an editor with parentheses matching to highlight mismatched parentheses.
- Write code incrementally and test frequently to catch mismatched parentheses early.
- Format your code properly to visually align parentheses and make mismatches more obvious.

## Additional Resources

- [Clojure Documentation](https://clojure.org/api/cheatsheet)
- [Clojure Style Guide](https://guide.clojure.style/)
- [Clojure Cookbook](https://clojure-cookbook.com/)
- [Transducers in Clojure](https://clojure.org/reference/transducers)

By following these guidelines, you can write more idiomatic, maintainable, and efficient Clojure code.