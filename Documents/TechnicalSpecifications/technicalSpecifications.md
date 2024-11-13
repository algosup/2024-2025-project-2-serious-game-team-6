# Technical specifications

## Table of content

- [Functional Specifications](#functional-specifications)
  - [Table of content](#table-of-content)
- [Project definition](#project-definition)
  - [Overview](#overview)
  - [Description](#description)
- [Development environment](#development-environment)
  - [Hardware](#hardware)
  - [Programming language](#programming-language)
  - [Conventions](Conventions)
    - [File tree and documents](#file-tree-and-document)
    - [Code](#code)
      - [Naming conventions](#naming-conventions)
      - [Structure conventions](#structure-conventions)

- [Glossary](#glossary)


# Project definition

## Overview



## Description



# Development environment

## Hardware

In the team, two different types of computer are used:
  
| Computer | OS | Number used |
| -- | -- | -- |
| MacBook Air M3 | MacOS | 4 |
| ThinkBook 14 G4 | Windows 11 | 2 |

## Programming language

For this project, the Godot engine will be used. We will develop the game using its own programming language, GDscript.

## Conventions

### File tree and documents

Folders are written in "CamelCase"<br>
Files are written in "pascalCase"

```md
2023-2024-project-2-serious-game-team-6
├─── Documents
│   ├─── FunctionalSpecifications
│   │   └─── functionalSpecifications.md
│   ├─── Management
│   │   └─── projectCharter.md
│   ├─── QualityAssurance
│   │   └─── testPlan.md
│   └─── TechnicalSpecifications
│       └─── technicalSpecifications.md
├─── Game
└─── Manuals
```

### Code

The code will follow the [GDscript conventions](https://docs.godotengine.org/en/3.0/getting_started/scripting/gdscript/gdscript_styleguide.html)

#### Naming conventions
| Type | Convention |
| -- | -- |
| Classes | PascalCase |
| Nodes | PascalCase |
| Functions | snake_case |
| Variables | snake_case |
| Constants | CONSTANT_CASE |

#### Structure conventions

Indentations<br>
└> Simple indentation for regular code block, double indentation for continuations.

>[!TIP]
> **Good**
> ```
>for i in range(10):
>    print("hello")
>
>effect.interpolate_property(sprite, 'transform/scale',
>        sprite.get_scale(), Vector2(2.0, 2.0), 0.3,
>        Tween.TRANS_QUAD, Tween.EASE_OUT)
> ```
>&nbsp;

>[!CAUTION]
> **Bad**
> ```
>for i in range(10):
>        print("hello")
>
>effect.interpolate_property(sprite, 'transform/scale',
>    sprite.get_scale(), Vector2(2.0, 2.0), 0.3,
>    Tween.TRANS_QUAD, Tween.EASE_OUT)
> ```
>&nbsp;

---

One statement per line<br>
└> Never combine multiple statements on a single line.

>[!TIP]
> **Good**
> ```
>if position.x > width:
>    position.x = 0
>
>if flag:
>    print("flagged")
> ```
>&nbsp;

>[!CAUTION]
> **Bad**
> ```
>if position.x > width: position.x = 0
>
>if flag: print("flagged")
> ```
>&nbsp;

---

Whitespace<br>
└> Single whitespace around operators and after commas. No whitespace in dictionary references and function calls.

>[!TIP]
> **Good**
> ```
>position.x = 5
>position.y = mpos.y + 10
>dict['key'] = 5
>myarray = [4, 5, 6]
>print('foo')
> ```
>&nbsp;

>[!CAUTION]
> **Bad**
> ```
>position.x=5
>position.y = mpos.y+10
>dict ['key'] = 5
>myarray = [4,5,6]
>print ('foo')
>
>x        = 100
>y        = 100
>velocity = 500
> ```
>&nbsp;