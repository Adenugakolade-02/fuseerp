# FuseERP

Technical Assessment for Flutter Role at FuseERP

## Approach
1. I carefully studied the provided UI interface, taking my time to understand how each widget was layered, the connections between certain widgets, and the desired user experience for the screens.

2. I chose the popular Flutter architecture pattern, MVVM (Model, View, ViewModel), for my project. My reasons for this choice are as follows:
   - MVVM provides a clear separation of concerns, enabling each feature to be developed as a standalone component without interfering with others.
   - It is easy to maintain compared to simpler, linear architectures.
   - MVVM reduces boilerplate code compared to the Clean Architecture.

3. For state management, I selected the Provider package. My reason behind this choice includes:
   - The ease and speed of use it offers.
   - Its ability to handle complex logic effectively.
   - Recognition and endorsement by the Flutter community.

4. I simultaneously developed both the user interface and the logic to hasten the assessment process and conducted thorough testing to ensure quality.

5. I concluded development by thoroughly testing each screen to ensure flawless functionality and addressed any bugs that arose.

## Challenges
I encountered several challenges during the project, with one notable issue arising while implementing the OTP (One-Time Password) screen. The custom numpad, combined with the pin input field, presented some complexities. My approach to resolving this challenge included the following steps:

- I conducted research on building a custom numpad and gathered sufficient guidance from online resources. Subsequently, I implemented it to closely resemble the design specified in the Figma file.

- Once the custom numpad was in place, I proceeded to develop the underlying logic for the UI. This involved creating two functions: "delete" and "input." The logic within these functions utilized iterative statements (for loops), nested conditional statements, and jump statements.

- To connect the UI and logic, I utilized a ViewModel class that implemented the Provider package for state management.


[The demo of the mobile application can be viewed here ](https://drive.google.com/file/d/1r0mHdigRlgXt1K6qAiJ63H48UTZ7tDH1/view?usp=sharing)
