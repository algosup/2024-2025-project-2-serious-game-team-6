<h1 align="center"> Forsaken Planet Test Plan </h1>

<p>
<br>

| Created by | Creation date | Last modified |
|:-------------:|:---------------:|:--------:|
| GABET Tino | 12/02/2024 | 12/02/2024 |

<br>
</p>

___

## Test-Plan-Approval
| Role | Name | Signature | Date |
|------|------|-----------|------|
| Project Manager      | [Mathias GAGNEPAIN](https://github.com/MistzSoftware) | ⬛ |12/06/2024|
| Program Manager      | [Enzo GUILLOUCHE](https://github.com/EnzoGuillouche)  | ⬛ |12/06/2024|
| Technical Lead       | [Evan UHRING](https://github.com/Evan-UHRING)         | ⬛ |12/06/2024|
| Software Developer 1 | [Michel RIFF](https://github.com/MichelRiff)          | ⬛ |12/06/2024|
| Software Developer 2 | [Loïc NOGUES](https://github.com/Loic-nogues)         | ⬛ |12/06/2024|
| Technical Writer     | [Axel DAVID](https://github.com/Fus1onAxel)	       | ⬛ |12/06/2024|
| Quality Assurance    | [Tino GABET](https://github.com/Furimizu)             | ⬛ |12/06/2024|

<details>
<summary>

### Table-Of-Content

</summary>

- [Test Plan Approval](#test-plan-approval)
- [Table of Content](#table-of-content)
- [I . Introduction](#i-introduction)
    - [1 . Purpose of the Test Plan](#1-purpose-of-the-test-plan)
    - [2 . Product Overview](#2-product-overview)
- [II . Testing Plan](#ii-testing-plan)
    - [1 . Types of Testing](#1-types-of-testing)
        - [a . Playtesting](#a-playtesting)
        - [b . Functionnal Testing](#b-functionnal-testing)
    - [2 . Scope of Testing](#2-scope-of-testing)
        - [a . In Scope](#a-in-scope)
        - [b . Out of Scope](#b-out-of-scope)
        - [c . Goal of Testing](#c-goal-of-testing)
    - [3 . Test Environment](#3-test-environment)

</details>

## I-Introduction

### 1-Purpose-of-the-Test-Plan

The primary aim of this test plan is to define a structured and systematic approach to testing for our serious game **Forsaken Planet**.  
  
It outlines the **testing objectives**, **scope**, and **methodology** to ensure that all features and functionalities are 
**thoroughly verified** against the specified requirements. This document plays a key role in identifying **potential risks**, 
resolving **defects**, and validating the software’s **readiness for deployment**.

Additionally, the test plan supports the broader project goal of delivering a **high-quality**, **secure**, and **user-friendly product**. 
By serving as a **comprehensive guide**, it provides **clear instructions** for the QA team and acts as a **reference** for project managers 
and stakeholders involved in the testing process.

### 2-Product-Overview

The project is a **serious game about ecology** developed using the **Godot Engine**, designed to educate and engage users on critical environmental topics.

The game incorporates **dynamic ecosystem simulations**, **mission-based gameplay**, and **educational content** to raise awareness about issues such as **climate change**, **pollution**, and **sustainable living**.

This serious game targets a diverse audience, including **students, educators, and environmentally conscious individuals**, and serves as both an educational tool and an engaging entertainment experience. By blending **interactive storytelling** and **strategic decision-making**, the game encourages players to explore the impact of their actions on virtual ecosystems while gaining actionable knowledge about real-world environmental challenges.

## II-Testing-Plan

### 1-Types-of-testing

#### a-Playtesting:
**Playtesting** is a crucial aspect of game development that focuses on evaluating the game from the player's perspective. The primary goals of playtesting include **assessing user experience** to ensure the game is intuitive, enjoyable, and engaging for players. This involves observing how players interact with the game, **identifying any usability issues**, and gathering feedback on the overall gameplay experience. Playtesting also evaluates **game balance** to ensure the difficulty level is appropriate and the game mechanics are fair and balanced, creating a challenging yet rewarding experience. Additionally, playtesting helps in identifying any **technical problems**, such as bugs, crashes, or performance lags, that may affect the player's experience. It is typically conducted with a **diverse group of players** to ensure that the game appeals to its target audience and meets their expectations.

#### b-Functionnal-Testing:
**Functional Testing** is a systematic approach to verifying that the game's features and functionalities work as intended. The primary goals of functional testing include **verifying requirements** to ensure that all specified requirements and features are implemented correctly and function as expected. It involves identifying **defects or issues** in the game's functionality, such as broken features, incorrect behavior, or inconsistencies. Additionally, it validates **performance** by assessing the game's performance, including load times, frame rates, and overall stability, to ensure a smooth and uninterrupted gaming experience. Functional testing is typically conducted by **quality assurance (QA) teams** who follow a structured testing process, including creating test cases, executing tests, and documenting results.

### 2-Scope-of-Testing

#### a-In-Scope:
The scope of testing for **Forsaken Planet** primarily focuses on ensuring the **core gameplay mechanics** function as intended. This includes testing **player movement, interactions**, and completing **objectives**, as well as verifying key features related to the game’s **ecological theme**, such as **resource management** and **pollution mechanics**. Usability testing will ensure that new players can easily understand the game, with attention to **clear instructions** and **intuitive tutorials**. Additionally, **stability testing** will identify crashes or freezes during gameplay and ensure the **save/load functionality** works properly. **Performance testing** will be conducted to assess **frame rates, lag**, and **loading times**, **content testing** will verify that the game’s **ecological elements** and **assets** are presented accurately and function correctly. Lastly, **regression testing** will be conducted to verify that fixes for **critical bugs** do not introduce new issues or break existing gameplay.

#### b-Out-of-Scope:
Certain areas of testing will be **excluded** or minimized due to constraints such as time and resources. **Compatibility testing** will focus exclusively on the **target platform(s)**, such as **PC** or **mobile**, without extending to other devices or operating systems. **Localization testing** will be limited, with only **one language** supported unless additional translations are deemed essential. **Advanced performance optimization**, such as fine-tuning **frame rates** to perfection, will be deferred, with the priority placed on ensuring **basic playability**. Additionally, the scope excludes testing of **non-core features**, such as minor gameplay variations or additional content not critical to the main experience.

#### c-Goal-of-Testing:
The primary goal of testing our serious game is to ensure that the game effectively **educates players about ecology** while providing an **engaging and enjoyable experience**. This involves **verifying the educational validity and clarity of ecological concepts**, assessing the overall **user experience for intuitiveness and enjoyment**, evaluating the game's ability to **engage and motivate players**, testing for **technical issues such as bugs and performance lags**, ensuring **accessibility for all players**, measuring the **effectiveness of learning outcomes**, and collecting **feedback to identify areas for improvement**. By achieving these objectives, the testing process will confirm that **"Forsaken Planet"** is both a fun, engaging game and an effective educational tool for beginners interested in ecology.

### 3-Test-Environment

#### a . Hardware:

The following is a comprehensive list of the various types of hardware that will be utilized during the testing process.
Each hardware plays a crucial role in ensuring the accuracy, reliability, and overall performance of the system under test.

| Computer | OS |
| -- | -- |
| [MacBook Air M3](https://www.apple.com/fr/shop/buy-mac/macbook-air/13-pouces-minuit-puce-apple-m3-avec-cpu-8-c%C5%93urs-et-gpu-10-c%C5%93urs-24-go-de-m%C3%A9moire-512go?cid=aos-fr-seo-pla-mac-mac) | MacOS |
| [ThinkBook 14 G4](https://www.lenovo.com/fr/fr/p/laptops/thinkbook/thinkbook-series/thinkbook-14-gen-4-14-inch-intel/len101b0012?orgRef=https%253A%252F%252Fwww.google.com%252F&srsltid=AfmBOopBOFr6V3tso5XgeaO93pHfZ6EcHRxYFLVsx8v8W9MFWoyUkbq0) | Windows 11 |
| IdeaPad slim 1-14AST-05 | Linux Ubuntu |

#### b . Software:

The software utilized for this project is the [Godot](https://godotengine.org/) Engine, a powerful and versatile open-source game development platform.
It serves as the foundation for both the development and testing phases, providing robust tools for creating, executing, and evaluating the application.
Godot’s built-in debugging, profiling, and cross-platform support make it an integral part of the testing process, enabling the accurate identification of issues and ensuring the application meets quality standards across multiple environments.