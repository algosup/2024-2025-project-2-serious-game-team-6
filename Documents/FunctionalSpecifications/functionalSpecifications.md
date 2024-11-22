# Functional Specifications - Forsaken Planet

<details>
<summary>Click to expand</summary>

- [Functional Specifications - Forsaken Planet](#functional-specifications---forsaken-planet)
  - [Overview](#overview)
    - [Project summary](#project-summary)
    - [Project Purpose](#project-purpose)
    - [Out of Scope](#out-of-scope)
    - [Personas](#personas)
      - [Modern Gamer](#modern-gamer)
    - [Use cases](#use-cases)
  - [Functional requirements](#functional-requirements)
  - [Game features](#game-features)
  - [Non-Functional Requirements](#non-functional-requirements)
  - [Future improvements](#future-improvements)
  - [Risks and Assumptions](#risks-and-assumptions)
  - [Glossary](#glossary)

</details>

## Overview

### Project summary

*Forsaken Planet* is a project aimed at creating a fun and interactive serious game using Godot 4.3 engine and GDScript programming language.
The player will have to **learn by himself** what happened to the world he's exploring, alongside understanding how to **solve the puzzles** he will encounter.

### Project Purpose

This project is an opportunity for us to dive deeper into game design while discovering the importance of serious game in the industry. Our main goal is to create an exciting game that can be enjoyed by as many players as possible, which will be mainly an educational game that teaches the importance of the taking care of our planet.

### Out of Scope

- <u>Sellable game</u>
  The project is aimed at teaching the fundamentals of game design using a user-friendly technology, the game is not supposed to be really huge and sellable at the final deadline.
- <u>Complex game</u>
  To complete the project, we need to create a game that meets our requirements. Overcomplicating gameplay and game development can be overkill.

### Personas

The primary users of *Forsaken Planet* include:

#### Modern Gamer

**Gaming Habits:** Plays fast-paced competitive games with friends and indie games with innovative mechanics alone.

**Goals:**

- Explore New Game Types: Curious about how serious games can be exciting, they want to experience one that can really offer them a learning experience.
- Quick & Casual Experience: Being people who enjoy competitive online games, they are looking for a game they can pick up quickly for short play sessions without a large time commitment.

**Frustrations:**

- Lack of Polish: They dislike buggy games, have poor controls, or do not feel responsive—especially when trying a new game genre.
- Unintuitive Controls: They would quickly loose interest if the game’s controls are not intuitive or responsive enough to quick inputs.

**Preferred Features:**

- Responsive Controls: Values low input latency and high frame rates to make gameplay feel smooth and satisfying.
- Visual Feedback: Prefers games with clear visual and audio feedback, especially in response to actions or mistakes (e.g., lives lost, jumps, hazards).

### Use cases

**Modern Gamer Explores [Game name]**:

1. A modern gamer, curious about the serious game genre, dowloads the game and launches it.
2. The gamer starts playing, testing the game’s responsiveness and the visual feedbacks.
3. The gamer enjoys the gameplay while appreciating the structure of the game itself, and continues playing to see how far they can progress.

## Functional requirements

- **Climate change based Serious game**
    The game should be designed for a primary purpose about climate change warning.
- **Specific technology**
    The game should be developed using the Godot 4.3 engine and GDScript programming language.

## Game features

All the game features will be documented using the [Nuclino](https://www.nuclino.com) tool. You can check out how I've organized the features following this [link](https://game-design-document.nuclino.site).

For ease of reading and understanding, I've made a whole dedicated [Game Design Document](./gameDesign.md).

All the final specifications of the game won't be documented in this GDD. This game design document may say X, but ultimately it's up to us to decide whether X is right for the game when we try it out.
So this design document will be a starting point, not an ending point; **it must evolve as development progresses**.

## Non-Functional Requirements

This section outlines the non-functional requirements for this game project.

- **Climate change based Serious game**
    The game should be designed for a primary purpose other than pure entertainment.
- **Specific technology**
    The game should not be developed using another game engine than Godot and another programming language than GDScript.

## Future improvements

This section sets the features we plan to implement for a V2.

- **Lighting and Visual Effects**
    Natural lighting effects are prioritized, with dynamic changes based on time of day or weather, adding realism and mood to the outdoor settings. Indoor environments use more controlled lighting, creating shadows and highlights to emphasize the confined nature of indoor settings.
- **Controller handling**
    To enhance user experience, a controller would be a nice touch, either for casual gamer or experienced ones.
- **Key binding**
    To enhance the user experience, it would be interesting to implement a key binding system to create a personalized handling aspect.

## Risks and Assumptions

| **Risk** | **Impact** | **Mitigation** |
| ------------------------ | ---------- | ------------------------------------------------------ |
| **Too complex gameplay** | High | Developing the game step by step to make it maintainable, then remove some if needed. |
| **Too tricky puzzles** | High | Adding elements to guide the player effectively, such as directives or hints. |

## Glossary

| Word | Definition | Link |
| ------- | --------------- | ------------ |
| **Serious game** | A serious game or applied game is a game designed for a primary purpose other than pure entertainment. | [Wikipedia](https://en.wikipedia.org/wiki/Serious_game) |
| **Godot 4.3 engine** | Godot is a cross-platform, free and open-source game engine designed to create both 2D and 3D games targeting PC, mobile, and web platforms. | [Site](https://godotengine.org) |
| **GDScript** | GDScript evolved as a custom scripting language to be used with the Godot game engine, which is easy to learn with a syntax similar to Python. | [Site](https://gdscript.com) |
