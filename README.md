# dart_to_do_logic
A Dart To-Do logic project to help beginners in Flutter/Dart mobile application development understand Functions, Collections, and Lambdas (not all these were implemented in the project; however, students should study the Readme section to understand them and make adjustments to the project as desired).

I originally shared the idea in a [LinkedIn post](https://www.linkedin.com/posts/felix-joshua-benson-2a9547146_flutter-dart-mobiledevelopment-activity-7346190926148481025-1oBz?utm_source=social_share_send&utm_medium=member_desktop_web&rcm=ACoAACNR0OEBiTIBhYPuI9nflPuns8mSUY7OzI8), and as promised, here it is on GitHub!

# What’s This About?

This is a simple command-line task manager built using Dart and designed to teach you:

* How Functions work in Dart (with parameters and return values)
* How to use Collections like Lists, Maps, and Sets
* How to write and use Lambdas (anonymous functions)

Whether you're coming from another language or new to coding, this project breaks things down simply with real code you can run, break, and rebuild.

# How It Works

The program lets you:

*  Add a task
*  Delete a task
*  View all tasks (along with their timestamps)
*  Save tasks to a file (`tasks.txt`) and load them next time

It uses:

* `List<Map<String, String>>` to store tasks and timestamps
* `DateTime.now()` to track when each task was added
* `stdin` and `stdout` to interact with the user in the terminal
* Simple lambdas for practice and quick logic

# Learning Resource (Download)

This project comes with a beginner-friendly PDF note that explains everything:

* What are functions (and how to use them)
* Types of collections in Dart (List, Map, Set)
* What lambdas are and how they make your code cleaner

👉 [Download the Note (PDF)](./dart_course_part2.pdf)

You’re encouraged to study this note alongside the code. It’s written in a way that makes programming easier to understand, even if you're just starting.

# Previously Covered?

If you missed it, this project is a follow-up to my earlier one on Dart Basics, where I covered:

* Variables
* Built-in types
* Operators
* Control flow (`if`, `for`, `while`, etc.)

You can check that one out here:
👉 [Dart Calculator Project – Basics](https://github.com/felixjoshuabenson/dart-calculator)

I recommend going through that first if you're still new to Dart. It builds a strong foundation before jumping into this one.

# Getting Started

To run this program, make sure you have Dart installed.
Then in your terminal:

```bash
dart run bin/main.dart
```

You'll be prompted to add, delete, or view tasks right from your terminal.

---

# Why This Matters (Especially for Flutter Devs)

Before you start building beautiful mobile apps with Flutter, you need to be comfortable with Dart fundamentals. This project is a gentle nudge in that direction.

Instead of just reading theory, you’ll write and modify real Dart code and see how powerful even basic features can be.


# Let’s Learn Together

If you're learning Flutter and Dart, feel free to fork this repo, modify it, break it, fix it, and grow with it. If you found this helpful, give the project a ⭐ on GitHub and share it with someone else starting their Flutter journey.

* Got feedback or want to show what you built with it? Tag me on [LinkedIn](https://linkedin.com/in/felix-joshua-benson-2a9547146/)  I’d love to see it!

Happy coding!
*– From someone who once started where you are now 💙*
