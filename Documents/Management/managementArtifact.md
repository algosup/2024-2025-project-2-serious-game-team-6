This document contains the main management artifacts:
- [Project Charter](#project-charter)
- [Tasks \& schedules](#tasks--schedules)
- [RACI matrix](#raci-matrix)
- [Risks and Assumptions](#risks-and-assumptions)
- [MoSCoW](#moscow)
- [Key Performance Indicators](#key-performance-indicators)
- [Post Mortem](#post-mortem)
- [Appendix](#appendix)
    - [1. Management Tools](#2-management-tools)
    - [3. Statement Of Work](#3-statement-of-work)

You can also take a look at [cumulative weekly reports](WeeklyReports/cumulative.md) file.

# Project Charter

<!-- TODO -->

# Tasks & schedules

The breakdown of the tasks, their assignment, and schedule of those tasks can be found [HERE](https://algosup-serious-game-team6.monday.com/boards/1687784311).

# RACI matrix

The RACI matrix is as follows:

| Name                      | Project Manager | Program Manager | Technical Leader | Software Engineer | Quality Assurance | Technical Writer | Client | Stakeholders |
| ------------------------- | --------------- | --------------- | ---------------- | ----------------- | ----------------- | ----- | ------ | ------------ |
| Project brief             | I               | I               | I                | I                 | I                 | I | R / A  | C            |
| Project charter           | R / A           | C / I           | C / I            | C / I             | C / I             | C / I | C      | C / I        |
| Schedule / Gantt chart    | R / A           | C / I           | C / I            | C / I             | C / I             | C / I | -      | I            |
| Functional specifications | C               | R / A           | C                | -                 | C / I             | C | C      | I            |
| Technical specifications  | C               | C               | R / A            | C                 | C / I             | I | C      | I            |
| Code                      | -               | -               | R                | R / A             | I                 | I | -      | -            |
| Code review               | I               | -               | R / A            | R                 | R                 | - | -      | -            |
| Code documentation        | -               | I               | C                | R / A             | C / I             | - | I      | -            |
| Usage instructions        | -               | I               | C                | C            | C / I             | R / A | I      | -            |
| Testing plan              | I               | C               | C                | C                 | R / A             | I | I      | -            |

Key:
| Letter | Name        | Description                                                                                                                                       |
| ------ | ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| R      | Responsible | Work to complete the task.                                                                                                                        |
| A      | Accountable | must sign off (approve) work that responsible provides. The one to praised or blame.                                                              |
| C      | Consulted   | Those whose opinions are sought, typically subject-matter experts, and with whom there is two-way communication.                                  |
| I      | Informed    | Those who are kept up-to-date on progress, often only on completion of the task or deliverable, and with whom there is just one-way communication |
|        | -           | Not involved                                                                                                                                      |

A readable and colored RACI spreadsheet can be found [HERE](https://docs.google.com/spreadsheets/d/14vWoQFrZC8Us6AOSEfDSxPQSEwZspKcm0uXNRzfMDN8/edit?usp=sharing).

# Risks and Assumptions

| ID  | Description                                                                                         | Risks                                                                                                                | Impact | Likelihood | Solution                                                                                                                                      |
| --- | --------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- | ------ | ---------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| 1   | **Create a serious game is an exhausting work.**                         | We may not finish on time, misunderstood the client requirements.                                                  | ![High](https://img.shields.io/badge/High-bb2124)   | ![Medium](https://img.shields.io/badge/Medium-E4A11B)     | Start with the most simple and fundamental tasks and go to more detailed ones.                                                                |
| 2   | **The new team highlights the possible issue of having different conventions within the team members.** | The communication may suffer from  having different coding or documentation styles.                                  | ![Medium](https://img.shields.io/badge/Medium-E4A11B) | ![Medium](https://img.shields.io/badge/Medium-E4A11B)     | We will define precise specifications to ensure this does not happen.                                                                         |
| 3   | **Compatibility between different hardwares is hardly possible.**                                       | If the client decides to play the game on another hardware than the developpement one the game can crash or have unexepected behavior.           | ![Medium](https://img.shields.io/badge/Medium-E4A11B) |  ![Low](https://img.shields.io/badge/Low-3B71CA)        | We will endeavor to make it cross-platform and testing it on different Operating System.                                                                                                   |
| 4   | **The client may decide to change the requirements of the project.**                                    | We would reconsider a new path to take, possibly delaying us if we were already done.                                | ![Medium](https://img.shields.io/badge/Medium-E4A11B) | ![Medium](https://img.shields.io/badge/Medium-E4A11B)     | We will often communicate with the client to ensure the current specifications are relatable.                                                 |
| 5   | **Winter is here, sicknesses and transport issues could come up easier.**                               | Team members may be late or even missing, possibly for multiple days.                                                | ![Medium](https://img.shields.io/badge/Medium-E4A11B) | ![High](https://img.shields.io/badge/High-bb2124)       | The work of absent members will either be shared to others, done later, or done remotely.                                                     |
| 6   | **Inadequate Testing**                                                                                  | If testing is not comprehensive, it may lead to undetected bugs and errors in the interpreter.                       | ![High](https://img.shields.io/badge/High-bb2124)   | ![Medium](https://img.shields.io/badge/Medium-E4A11B)     | Implement rigorous testing protocols throughout development and regularly conduct test reviews.                                               |
| 7   | **Limited Documentation**                                                                               | Insufficient documentation could impede future development or troubleshooting.                                       | ![Medium](https://img.shields.io/badge/Medium-E4A11B) | ![Medium](https://img.shields.io/badge/Medium-E4A11B)     | Establish a documentation plan and ensure all team members adhere to documentation standards.                                                 |
| 8   | **Team Member Turnover**                                                                                | If key team members leave, it could disrupt project progress and knowledge transfer.                                 | ![High](https://img.shields.io/badge/High-bb2124)   |  ![Low](https://img.shields.io/badge/Low-3B71CA)        | Cross-train team members on critical tasks and maintain documentation to facilitate knowledge sharing.                                        |
| 9   | **Technology Obsolescence**                                                                             | Rapid advancements in technology may make the chosen technology stack outdated, affecting project compatibility.     | ![Medium](https://img.shields.io/badge/Medium-E4A11B) | ![Medium](https://img.shields.io/badge/Medium-E4A11B)     | Regularly review and update the technology stack to incorporate the latest advancements and ensure long-term compatibility.                   |
| 10  | **Intellectual Property Disputes**                                                                      | Disputes over intellectual property ownership may arise, leading to legal challenges and project disruption.         | ![High](https://img.shields.io/badge/High-bb2124)   |  ![Low](https://img.shields.io/badge/Low-3B71CA)        | Clearly define ownership and usage rights in project contracts, and seek legal advice to minimize the risk of intellectual property disputes. |
| 11  | **Insufficient Backup and Recovery Mechanisms**                                                         | Data loss due to inadequate backup and recovery mechanisms may result in setbacks and compromised project integrity. | ![High](https://img.shields.io/badge/High-bb2124)   | ![Medium](https://img.shields.io/badge/Medium-E4A11B)     | Implement robust backup and recovery procedures to safeguard critical project data and ensure a quick recovery in case of data loss.          |
| 12  | **Network and Infrastructure Issues**                                                                   | Unforeseen issues with the network or infrastructure may disrupt project activities and communication.               | ![Medium](https://img.shields.io/badge/Medium-E4A11B) | ![Medium](https://img.shields.io/badge/Medium-E4A11B)     | Implement redundancy in critical systems, regularly monitor network performance, and have contingency plans for infrastructure failures.      |
| 13  | **Team Member Burnout**                                                                                 | Excessive workload and stress may lead to team member burnout, impacting productivity and morale.                    | ![High](https://img.shields.io/badge/High-bb2124)   | ![Medium](https://img.shields.io/badge/Medium-E4A11B)     | Monitor team workload, encourage work-life balance, and provide support mechanisms to prevent and address burnout.                            |
|14| **Player Engagement and Retention**           | Players may lose interest if the educational content about climate change feels too dense or preachy, leading to poor retention rates.                   | ![High](https://img.shields.io/badge/High-bb2124) | ![High](https://img.shields.io/badge/High-bb2124) | Balance educational elements with engaging gameplay mechanics, ensuring the learning experience is immersive and enjoyable.  |
|15| **Balancing Fun and Educational Value**       | The game may struggle to balance entertainment with education, potentially leading to a lack of engagement or failure to convey key messages.           |![Medium](https://img.shields.io/badge/Medium-E4A11B)|![High](https://img.shields.io/badge/High-bb2124)| Integrate gameplay mechanics that reinforce educational objectives, using challenges and rewards to motivate learning outcomes. |
|16| **Scope Creep Due to Expanding Complexity**   | The broad nature of climate change can lead to adding too many features, resulting in delays, budget overruns, and diluted educational focus.            | ![High](https://img.shields.io/badge/High-bb2124)|![Medium](https://img.shields.io/badge/Medium-E4A11B)| Clearly define core learning objectives and prioritize content that aligns with those goals to keep the project manageable.   |
|17| **Technical Limitations and Visuals**         | Difficulty in representing environmental degradation and the complexity of ecosystems can affect the game's impact and educational effectiveness.        |![Medium](https://img.shields.io/badge/Medium-E4A11B)|![High](https://img.shields.io/badge/High-bb2124)| Focus on stylized visuals that effectively convey the message without requiring excessive resources, ensuring clarity and engagement.  |
|18| **Audience Misinterpretation**                | Different audiences may interpret educational content differently, leading to varied levels of understanding or acceptance of climate change messages.   |![High](https://img.shields.io/badge/High-bb2124)| ![Low](https://img.shields.io/badge/Low-3B71CA)| Conduct playtesting with diverse audience groups to gather feedback and refine messaging to ensure clarity and accessibility.  |
|19| **Emotional Impact and Sensitivity**          | Addressing climate change can evoke strong emotions; players may experience distress or anxiety about the content.                                       |![Medium](https://img.shields.io/badge/Medium-E4A11B)| ![Low](https://img.shields.io/badge/Low-3B71CA)| Incorporate positive action-oriented messages and potential solutions to inspire hope and empowerment while addressing challenges. |
|20| **Balancing Education and Entertainment**     | Emphasizing realism over fun could make the game feel overly grim or unapproachable, while focusing too much on entertainment could undermine educational goals. |![Medium](https://img.shields.io/badge/Medium-E4A11B)|![High](https://img.shields.io/badge/High-bb2124)| Use storytelling, player choice, and immersive scenarios to teach climate concepts without compromising enjoyment.  |
|21| **Effectiveness of Educational Messaging**    | Players might not absorb or act on the educational content if it's not presented clearly or is too subtle in its message.                                      |![High](https://img.shields.io/badge/High-bb2124)|![Medium](https://img.shields.io/badge/Medium-E4A11B)| Use in-game feedback, consequences for actions, and reflection moments to reinforce learning and encourage meaningful engagement with climate topics. |

# MoSCoW

<!-- TODO -->

| Must Have                                                                                                                       | Should Have                                            | Could Have | Won't Have                                                    |
| ------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------ | ---------- | ------------------------------------------------------------- |
|||||

# Key Performance Indicators

The spreadsheet for the KPI's data and graphs can be found [HERE (SOON)]().

# Post Mortem

<!-- TODO -->

_SOON_

_The project as to be completed to fill this section_

# Appendix

### 1. Human Resources

To efficiently manage the team I created a dedicated internal spreadsheets you can take a look [HERE](https://docs.google.com/spreadsheets/d/1LvZSeZWjt57uBkZy4MYbe3MrBnBp1FmbGj2K5gsyJ2M/edit?usp=sharing).

### 3. Statement Of Work

A statement of work (SOW) is a document which is the narrative description of a project's work requirement. It defines project-specific activities, deliverables and timelines for a vendor providing services to the client. The SOW typically also includes detailed requirements and pricing, with standard regulatory and governance terms and conditions.

<!-- TODO -->

You can take a look on this document [HERE (SOON)]()