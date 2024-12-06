<h1 align="center"> Forsaken Planet Test Plan </h1>

<p>
<br>

| Created by | Creation date | Last modified |
|:-------------:|:---------------:|:--------:|
| GABET Tino | 12/02/2024 | 12/06/2024 |

<br>
</p>

___

## Test-Plan-Approval
| Role | Name | Signature | Date |
|------|------|-----------|------|
| Project Manager      | [Mathias GAGNEPAIN](https://github.com/MistzSoftware) | ✅ |12/06/2024|
| Program Manager      | [Enzo GUILLOUCHE](https://github.com/EnzoGuillouche)  | ✅ |12/06/2024|
| Technical Lead       | [Evan UHRING](https://github.com/Evan-UHRING)         | ✅ |12/06/2024|
| Software Developer 1 | [Michel RIFF](https://github.com/MichelRiff)          | ✅ |12/06/2024|
| Software Developer 2 | [Loïc NOGUES](https://github.com/Loic-nogues)         | ✅ |12/06/2024|
| Technical Writer     | [Axel DAVID](https://github.com/Fus1onAxel)	       | ✅ |12/06/2024|
| Quality Assurance    | [Tino GABET](https://github.com/Furimizu)             | ✅ |12/06/2024|

<details>
<summary>

### Table-Of-Content

</summary>

- [Test Plan Approval](#test-plan-approval)
- [Table of Content](#table-of-content)
- [I . Introduction](#i-introduction)
    - [1 . Purpose of the Test Plan](#1-purpose-of-the-test-plan)
    - [2 . Product Overview](#2-product-overview)
    - [3 . Targeted Audience](#3-targeted-audience)
        - [a . Primary Audience](#a-primary-audience)
        - [b . Secondary Audience](#b-secondary-audience)
- [II . Testing Plan](#ii-testing-plan)
    - [1 . Types of Testing](#1-types-of-testing)
        - [a . Playtesting](#a-playtesting)
        - [b . Functional Testing](#b-functional-testing)
        - [c . Unit Testing](#c-unit-testing)
    - [2 . Scope of Testing](#2-scope-of-testing)
        - [a . In Scope](#a-in-scope)
        - [b . Out of Scope](#b-out-of-scope)
        - [c . Goal of Testing](#c-goal-of-testing)
    - [3 . Test Environment](#3-test-environment)
        - [a . Hardware](#a-hardware)
        - [b . Software](#b-software)
        - [c . Testing Tools](#c-testing-tools)
- [III . Risk Management](#iii-risk-management)
    - [1 . Risks](#1-risks)
    - [2 . Mitigation Strategies](#2-mitigation-strategies)
- [IV . Acceptance Criteria](#iv-acceptance-criteria)
    - [1 . Zero Critical Defects](#1-zero-critical-defects)
    - [2 . Acceptable Level of Minor Defects](#2-acceptable-level-of-minor-defects)
    - [3 . Compliance with Functional Requirements](#3-compliance-with-functional-requirements)
    - [4 . Compliance with Non-Functional Requirements](#4-compliance-with-non-functional-requirements)
    - [5 . Successful Completion of All Required Test Cases](#5-successful-completion-of-all-required-test-cases)
- [V . Test Deliverables](#v-test-deliverables)
    - [1 . Test Plan](#1-test-plan)
    - [2 . Test Cases and Test Reports](#2-test-cases-and-test-reports)
- [VI . Glossary of Terms](#vi-glossary-of-terms)

</details>

## I-Introduction

### 1-Purpose-of-the-Test-Plan

The primary aim of this test plan is to define a structured and systematic approach to testing for our serious game **Forsaken Planet**.  
  
It outlines the **testing objectives**, **scope**, and **methodology** to ensure that all features and functionalities are **thoroughly verified** against the specified requirements. This document plays a key role in identifying **potential risks**, resolving **defects**, and validating the software’s **readiness for deployment**.

Additionally, the test plan supports the broader project goal of delivering a **high-quality**, **secure**, and **user-friendly product**. 
By serving as a **comprehensive guide**, it provides **clear instructions** for the QA team and acts as a **reference** for project managers and stakeholders involved in the testing process.

### 2-Product-Overview

The project is a **serious game about climate change** developed using the **Godot Engine**, designed to educate and engage users on critical environmental topics.

The game incorporates **dynamic ecosystem simulations**, **mission-based gameplay**, and **educational content** to raise awareness about issues such as **climate change**, **pollution**, and **sustainable living**.

This serious game targets a diverse audience, including **students, educators, and environmentally conscious individuals**, and serves as both an educational tool and an engaging entertainment experience. By blending **interactive storytelling** and **strategic decision-making**, the game encourages players to explore the impact of their actions on virtual ecosystems while gaining actionable knowledge about real-world environmental challenges.

### 3-Targeted-Audience

#### a-Primary-Audience

This document is primarily intended for:

#### - Quality Assurance:
- To comprehend what should be tested, the expected results, how to achieve these results, and the rationale behind them.
- To ensure that the device meets the client's requirements.
- To define the scope and importance of testing and guide the team through the testing process.
- To enhance the quality of the final product.

#### b-Secondary-Audience

#### - Future Testers:
- To understand the testing strategy employed by our team, including what has been tested, the methods used, and the outcomes.
- To apply our testing strategy if it aligns with their testing needs.
- To gain insights into our testing strategies to continuously improve the product.

## II-Testing-Plan

### 1-Types-of-testing

#### a-Playtesting:
**Playtesting** is a crucial aspect of game development that focuses on evaluating the game from the player's perspective. The primary goals of playtesting include **assessing user experience** to ensure the game is intuitive, enjoyable, and engaging for players. This involves observing how players interact with the game, **identifying any usability issues**, and gathering feedback on the overall gameplay experience. Playtesting also evaluates **game balance** to ensure the difficulty level is appropriate and the game mechanics are fair and balanced, creating a challenging yet rewarding experience. Additionally, playtesting helps in identifying any **technical problems**, such as bugs, crashes, or performance lags, that may affect the player's experience. It is typically conducted with a **diverse group of players** to ensure that the game appeals to its target audience and meets their expectations.

#### b-Functional-Testing:
**Functional Testing** is a systematic approach to verifying that the game's features and functionalities work as intended. The primary goals of functional testing include **verifying requirements** to ensure that all specified requirements and features are implemented correctly and function as expected. It involves identifying **defects or issues** in the game's functionality, such as broken features, incorrect behavior, or inconsistencies. Additionally, it validates **performance** by assessing the game's performance, including load times, frame rates, and overall stability, to ensure a smooth and uninterrupted gaming experience. Functional testing is typically conducted by **quality assurance (QA) teams** who follow a structured testing process, including creating test cases, executing tests, and documenting results.

#### c-Unit-Testing:
**Unit Testing** focuses on verifying individual components or modules of the game to ensure they function correctly in isolation. The primary goals of unit testing include **isolating components** to test individual functions, methods, or classes, **identifying defects early** to prevent issues from propagating, **ensuring code quality** by validating adherence to requirements and design principles, and **facilitating refactoring** by allowing developers to make changes confidently. Unit tests are typically automated and run frequently during the development process to provide immediate feedback on the code's correctness. They are written using testing frameworks and tools that support the creation and execution of test cases.

### 2-Scope-of-Testing

#### a-In-Scope:
The scope of testing for **Forsaken Planet** primarily focuses on ensuring the **core gameplay mechanics** function as intended. This includes testing **player movement, interactions**, and completing **objectives**, as well as verifying key features related to the game’s **ecological theme**, such as **resource management** and **pollution mechanics**. Usability testing will ensure that new players can easily understand the game, with attention to **clear instructions** and **intuitive tutorials**. Additionally, **stability testing** will identify crashes or freezes during gameplay and ensure the **save/load functionality** works properly. **Performance testing** will be conducted to assess **frame rates, lag**, and **loading times**, **content testing** will verify that the game’s **ecological elements** and **assets** are presented accurately and function correctly. Lastly, **regression testing** will be conducted to verify that fixes for **critical bugs** do not introduce new issues or break existing gameplay.

#### b-Out-of-Scope:
Certain areas of testing will be **excluded** or minimized due to constraints such as time and resources. **Compatibility testing** will focus exclusively on the **target platform(s)**, such as **PC** or **mobile**, without extending to other devices or operating systems. **Localization testing** will be limited, with only **one language** supported unless additional translations are deemed essential. **Advanced performance optimization**, such as fine-tuning **frame rates** to perfection, will be deferred, with the priority placed on ensuring **basic playability**. Additionally, the scope excludes testing of **non-core features**, such as minor gameplay variations or additional content not critical to the main experience.

#### c-Goal-of-Testing:
The primary goal of testing our serious game is to ensure that the game effectively **educates players about climate change** while providing an **engaging and enjoyable experience**. This involves **verifying the educational validity and clarity of ecological concepts**, assessing the overall **user experience for intuitiveness and enjoyment**, evaluating the game's ability to **engage and motivate players**, testing for **technical issues such as bugs and performance lags**, ensuring **accessibility for all players**, measuring the **effectiveness of learning outcomes**, and collecting **feedback to identify areas for improvement**. By achieving these objectives, the testing process will confirm that **"Forsaken Planet"** is both a fun, engaging game and an effective educational tool for beginners interested in climate change.

### 3-Test-Environment

#### a-Hardware:

The following is a comprehensive list of the various types of hardware that will be utilized during the testing process.
Each hardware plays a crucial role in ensuring the accuracy, reliability, and overall performance of the system under test.

| Computer | OS |
| -- | -- |
| [MacBook Air M3](https://www.apple.com/fr/shop/buy-mac/macbook-air/13-pouces-minuit-puce-apple-m3-avec-cpu-8-c%C5%93urs-et-gpu-10-c%C5%93urs-24-go-de-m%C3%A9moire-512go?cid=aos-fr-seo-pla-mac-mac) | MacOS Sequoia |
| [ThinkBook 14 G4](https://www.lenovo.com/fr/fr/p/laptops/thinkbook/thinkbook-series/thinkbook-14-gen-4-14-inch-intel/len101b0012?orgRef=https%253A%252F%252Fwww.google.com%252F&srsltid=AfmBOopBOFr6V3tso5XgeaO93pHfZ6EcHRxYFLVsx8v8W9MFWoyUkbq0) | Windows 11 |
| IdeaPad slim 1-14AST-05 | Linux Ubuntu |

#### b-Software:

The software utilized for this project is the [Godot 4.3](https://godotengine.org/) Engine, a powerful and versatile open-source game development platform.
It serves as the foundation for both the development and testing phases, providing robust tools for creating, executing, and evaluating the application.
Godot’s built-in debugging, profiling, and cross-platform support make it an integral part of the testing process, enabling the accurate identification of issues and ensuring the application meets quality standards across multiple environments.

#### c-Testing-tools:

The following testing tools within the Godot Engine will be utilized:

- **Godot Debugger**: For real-time debugging and inspecting the game's state.
- **Godot Profiler**: To analyze performance and identify bottlenecks.
- **Godot Remote Monitor**: For monitoring the game on remote devices.
- **Godot Unit Testing Framework**: For creating and running automated tests.
- **Godot Script Editor**: For writing and testing scripts within the game.

These tools will help ensure that the game is thoroughly tested and meets the required quality standards.

## III-Risk-Management

### 1-Risks:
- **Incomplete Features**: Features that are not fully developed or implemented may hinder the testing process.
- **Environment Setup Delays**: Delays in setting up the testing environment can cause significant setbacks.
- **Limited Testing Resources**: Insufficient resources, such as hardware, software, or personnel, can impact the thoroughness and efficiency of testing.

### 2-Mitigation-Strategies:
- **Prioritizing Critical Features**: Focus on testing the most critical features first to ensure core functionalities are verified.
- **Maintaining a Contingency Plan**: Have a backup plan for additional resources or alternative testing methods in case of delays or shortages.
- **Regular Progress Reviews**: Conduct frequent reviews to monitor the progress of feature development and environment setup, allowing for timely adjustments.
- **Resource Allocation**: Allocate resources strategically to ensure that critical testing activities are not compromised.
- **Communication**: Maintain open communication channels with the development team to stay informed about feature readiness and potential delays.

By implementing these mitigation strategies, the testing process can be managed more effectively, reducing the impact of potential risks and ensuring a smoother path to deployment.

## IV-Acceptance-Criteria

### 1-Zero-Critical-Defects: 
The game must be free of any **critical defects** that could significantly impact the user experience. Critical defects include bugs that prevent players from progressing through the game or cause the game to crash. Ensuring there are no critical defects is essential for providing a seamless and enjoyable gaming experience.

### 2-Acceptable-Level-of-Minor-Defects: 
The game may contain a minimal number of **minor defects** that do not affect the overall gameplay experience. These minor defects could include small texture issues, minor graphical glitches, or typographical errors in dialogues. Such issues should not hinder the player's ability to complete the game or understand its educational content.

### 3-Compliance-with-Functional-Requirements: 
The game must fulfill its primary **functional requirement** of being a serious game that effectively teaches players about ecology. This involves incorporating educational content through puzzles and gameplay mechanics that convey at least one significant ecological concept. The game should successfully deliver its educational message while maintaining an engaging and interactive experience.

### 4-Compliance-with-Non-Functional-Requirements: 
The game must meet key **non-functional requirements** to ensure a smooth and enjoyable user experience. This includes maintaining adequate performance levels, such as smooth frame rates and minimal loading times, to prevent any disruptions during gameplay. The game should also be user-friendly, with intuitive controls and clear instructions to accommodate players of varying skill levels.

### 5-Successful-Completion-of-All-Required-Test-Cases: 
All predefined test cases must be successfully executed to verify that the game's functionality and performance meet the specified standards. This involves conducting thorough testing across all game features, including gameplay mechanics, educational content, and user interface elements. Successful completion of these test cases ensures that the game is ready for release and meets all quality and functionality benchmarks.

## V-Test-Deliverables

### 1-Test-Plan: 
The **test plan** is the document that the reader is currently reviewing. It outlines the structured and systematic approach to testing for our serious game, **Forsaken Planet**. The test plan includes the **testing objectives**, **scope**, and **methodology** to ensure that all features and functionalities are thoroughly verified against the specified requirements. It plays a key role in identifying **potential risks**, resolving **defects**, and validating the software’s **readiness for deployment**. Additionally, the test plan supports the broader project goal of delivering a **high-quality**, **secure**, and **user-friendly product**.

### 2-Test-Cases-and-Test-Reports:
**Test cases** are detailed, step-by-step instructions for executing specific tests to verify the functionality and performance of the game. They include preconditions, test steps, expected results, and any necessary data. **Test reports** document the outcomes of these test cases, providing a comprehensive overview of the testing process. These reports include information on the tests executed, the results obtained, any defects identified, and the overall status of the testing effort. The test cases and test reports are crucial for ensuring that the game meets all quality and functionality benchmarks. The test cases can be accessed [here](https://docs.google.com/spreadsheets/d/1QlrnAxoVu1ugK-oe6ddaVtVt9Ms-K2OidJbMQZVLbaQ/edit?gid=0#gid=0).

## VI-Glossary-of-Terms

| Term | Definition | More Information |
|------|------------|------------------|
| **Godot 4.3** | An open-source game engine used for developing 2D and 3D games. | [Godot Engine](https://godotengine.org/) |
| **Software** | The programs and other operating information used by a computer. | [Tech Target](https://www.techtarget.com/searchapparchitecture/definition/software#:~:text=Software%20is%20a%20set%20of,that%20run%20on%20a%20device.)|
| **Hardware** | The physical and electronic parts of a computer, rather than the instructions it follows | [Cambridge Dictionary - Hardware](https://dictionary.cambridge.org/dictionary/english/hardware) |
