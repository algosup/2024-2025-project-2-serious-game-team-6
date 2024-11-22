# Game Design - [Game name]

<details>
<summary>Click to expand</summary>

- [Game Design - \[Game name\]](#game-design---game-name)
  - [Game Overview](#game-overview)
    - [Summary \& Outline](#summary--outline)
    - [Design](#design)
    - [Gameplay balance](#gameplay-balance)
    - [Our team](#our-team)
    - [Timeline](#timeline)
  - [Game Setting](#game-setting)
    - [Lore](#lore)
    - [Characters](#characters)
      - [The Protagonist](#the-protagonist)
      - [The Scientist](#the-scientist)
  - [Gameplay and Mechanics](#gameplay-and-mechanics)
    - [Gameplay](#gameplay)
      - [Core gameplay loop](#core-gameplay-loop)
      - [Game progression](#game-progression)
      - [Objectives](#objectives)
    - [Mechanics](#mechanics)
      - [Physics](#physics)
      - [Actions and Interactions](#actions-and-interactions)
      - [Puzzles implementation](#puzzles-implementation)
    - [Controls](#controls)
  - [UI](#ui)
    - [Visual Design](#visual-design)
      - [Top-Down View](#top-down-view)
      - [Side-Scroller View](#side-scroller-view)
      - [Asset Integration](#asset-integration)
    - [Hub](#hub)
      - [Structure](#structure)
      - [Visual Concept](#visual-concept)
    - [Assets](#assets)
      - [Character creation](#character-creation)
      - [Protagonist](#protagonist)
        - [Hexadecimal indexes](#hexadecimal-indexes)
        - [Concept Arts](#concept-arts)
      - [Scientist](#scientist)
        - [Hexadecimal indexes](#hexadecimal-indexes-1)
        - [Concept Arts](#concept-arts-1)
  - [Zones](#zones)
    - [Zone 1: Forest](#zone-1-forest)
    - [Zone 2: Nuclear Power Plant](#zone-2-nuclear-power-plant)
    - [Zone 3: Desert](#zone-3-desert)
  - [Puzzles](#puzzles)
    - [Puzzle 1: Recycling](#puzzle-1-recycling)
    - [Puzzle 2: Energy](#puzzle-2-energy)
    - [Puzzle 3: Global Warming](#puzzle-3-global-warming)
    - [Puzzle 4: Restore Flora](#puzzle-4-restore-flora)

</details>

## Game Overview

![alt text](globe1.png)

**Title**: Forsaken Planet

**Genre**: Serious Knowledge-Vania and Puzzle game

**Target audience**: Casual & Explorer gamer (aging from 12 - 35)

**Platforms**: PC (Windows, macOS)

**Release**: 12/13/2024

### Summary & Outline

**Synopsis**:
Two alien beings—a determined explorer and a skilled scientist—discover an enigmatic planet in the Milky Way showing signs of past intelligent life, in 2600s. Upon landing, they uncover the ruins of a civilization that strangely mirrors Earth. Players assume the role of the alien explorer, using investigative and problem solving skills to piece together the mystery of the planet’s downfall. The alien explorer might confronts harmful environment, though he'll have to use his wits to get by, solve the puzzles he'll face and understand the planet's tragic history.

The **player's role** is to **collect data** about the planet for his fellow scientist, by exploring and accomplishing missions to help the planet.

The goal of the player is to **understand** what happened on that planet, with the help of his friend.

The player will have to **learn by himself** what happened to the world he's exploring, alongside understanding how to **solve the puzzles** he will encounter.

Learn more about the [Game setting](#game-setting).

### Design

Forsaken Planet will be a 2D pixel art game, either on a top-down view and a side-scroller view depending on the situation. And of course, the gameplay will change accordingly.

Learn more about the [Visual design](#visual-design) of the game.

### Gameplay balance

Players will be able to:

- Collect items
- Explore available areas
- Navigate through different zones
- Contact the scientist to obtain hints

Players will have a hard time dealing with:

- Difficulty increase
- Tricky puzzles

Learn more about the [Gameplay and Mechanics](#gameplay-and-mechanics) of the game.

### Our team

**Manager**: Mathias GAGNEPAIN

**Designer**: Enzo GUILLOUCHE

**Technical Leader**: Evan UHRING

**Developers**: Michel RIFF, Loic NOGUES

**Quality Assurance**: Tino GABET

**Technical Writer**: Axel DAVID

### Timeline

[⌛] **Functional Specification** & GDD: 11/22
[⌛] **Technical Specification**: 11/29
[⌛] **Test plan**: 12/6
[⌛] **Code**: 12/13
[⌛] **User Manual**: 12/13

## Game Setting

### Lore

The hum of machinery was omnipresent in 2024. Cities buzzed with electricity, glowing towers piercing the night skies, a testament to humanity’s technological might. The air carried a faint haze of industrial smoke, unnoticed by the millions rushing through their daily lives. Factories churned out goods at breakneck speeds, powered by a mix of coal, gas, solar arrays, and nuclear reactors.

Energy was the lifeblood of society. From the smallest smartphone to massive industrial complexes, everything relied on it. Fossil fuels still accounted for the majority of global power, though renewable energy sources were on the rise. Solar farms spread across deserts, offshore wind turbines spun relentlessly, and hydroelectric dams harnessed the might of rivers. But even these "green" sources weren’t without controversy—deforestation, water diversion, and habitat destruction followed in their wake.

A few voices rose in protest. Scientists published papers warning of climate tipping points: melting ice caps, rising seas, and collapsing ecosystems. Environmental activists staged protests on crossroads, holding banners reading, “The Future is Dying!” Yet, their warnings were drowned out by the roar of progress. Governments prioritized economic growth, corporations pursued profits, and the general population turned a blind eye.

By 2030, technological innovations reached new heights. Fusion power seemed within grasp, promising limitless clean energy. Urban centers adopted smart grids, optimizing energy distribution. Autonomous electric vehicles dominated roads, reducing emissions. Yet, for every step forward, humanity stumbled backward in its treatment of the planet. Forests were cleared to mine rare earth metals for batteries. Oceans were polluted by runoff from sprawling industrial facilities.

By the 2040s, the signs were undeniable. Summers grew longer and hotter; winters shorter and milder. Hurricanes became monstrous leviathans, tearing through coastlines. Coral reefs—the vibrant lungs of the oceans—began to bleach en masse, turning into graveyards of skeletal remains.

In 2057, an international energy conglomerate, Helion Dynamics, emerged as a global power. They promised to lead humanity into a cleaner future with advanced nuclear reactors and CO2 scrubbing megastructures. Yet, their solutions were band-aids on gaping wounds. Helion’s ventures were profit-driven, exploiting resources in ways that deepened ecological imbalances.

By 2070, food crises gripped the world. Droughts devastated farmlands, while floods wiped out crops elsewhere. Nations teetered on the brink of collapse as millions migrated to escape unlivable conditions. Cities like Jakarta and Miami vanished beneath rising seas, their populations displaced. Desperation bred conflict—wars over water and arable land erupted, leaving devastation in their wake.

In the late 21st century, hope emerged amidst the chaos. Scientists unveiled revolutionary technologies:

- CO2 scrubbers the size of skyscrapers began pulling gigatons of carbon from the atmosphere.
- Synthetic ecosystems were created to mimic natural processes, reviving barren lands.
- Vertical farms sprang up in cities, offering a lifeline for food production.

However, these advancements were unevenly distributed. Wealthier nations thrived, insulating themselves from the worst effects. Meanwhile, poorer regions bore the brunt of the crisis, their populations abandoned and forgotten.

Underground movements rose to challenge the status quo. Rogue scientists defected from Helion Dynamics, working in secret to develop open-source solutions for sustainable living. Environmentalist groups sabotaged fossil fuel operations and lobbied for stricter climate policies. In the Amazon, Indigenous communities fought to protect what little remained of the rainforests, their efforts inspiring a global solidarity movement.

Despite these efforts, the damage was too great. By 2100, global temperatures had risen by 13°C above pre-industrial levels. Arctic permafrost thawed, releasing methane—a greenhouse gas far more potent than CO2. This triggered feedback loops that humanity could not control.

By the 2130s, the world was unrecognizable. Coastal cities were submerged, their skyscrapers jutting like tombstones from the water. Deserts expanded, swallowing once-fertile lands. Mega-storms lashed the planet with apocalyptic fury, while wildfires consumed entire continents.

The tipping point came in 2131 when scientists confirmed the onset of runaway climate change. The oceans became acidic, collapsing marine ecosystems. The Amazon rainforest, once the planet’s lungs, transformed into a barren wasteland. Temperatures soared beyond human tolerance in most regions.

The year 2136 marked the end of an era. Humanity’s hubris had caught up with it. Cities lay abandoned, their ruins overtaken by nature—or what remained of it. No human survived in those conditions, their stories fading into obscurity.

Earth was not destroyed by a single cataclysm, but by centuries of neglect and arrogance. The warnings had always been there, whispered by winds, sung by the oceans, and shouted by those who saw the future clearly. Yet, humanity had chosen to look away.

As the last of the great cities disappeared beneath rising tides, the planet exhaled its final, burdened breath. The story of Earth became a cautionary tale—a monument to what happens when ambition eclipses wisdom.

### Characters

#### The Protagonist

The player is named *Quireo* – from Quirinus, an ancient Roman deity associated with resilience and protection, suited for an explorer venturing into unknown lands.

**Backstory**

Raised in a society that emphasizes the importance of preserving knowledge and respecting ancient wisdom, Quireo developed a fascination with ruins and artifacts from a young age. Their home planet, Eradon, is rich in history but has always been stable, never afflicted by the devastation Quireo encountered on other planets. As an adult, Quireo joined the Astral Surveyors, a faction dedicated to discovering and documenting remnants of civilizations lost to time. The desolated planet now before them is their latest and most enigmatic assignment.

Rumored to have once been a hub of intelligent life, this planet is barren yet brimming with clues—abandoned cities, broken monuments, and puzzling ruins bearing a strange architecture. Quireo has an unusual empathy for the people who once thrived here, determined to uncover the truth behind the civilization’s collapse. As Quireo delves deeper, they begin to suspect that understanding this planet’s downfall might reveal something fundamental about their own kind and the cosmos itself.

**Personality**

Quireo, driven by boundless curiosity and a strong sense of duty, is a renowned explorer among their people—a species that reveres the universe’s mysteries and considers exploration a sacred duty. Endowed with an unbreakable resolve and a quiet strength, Quireo’s life has been defined by an unshakable belief in learning from the remnants of the past to protect the future.

**Appearance**

Refer to [Protagonist](#protagonist) to get references.

#### The Scientist

The scientist is named *Thothan* – based on Thoth, the Egyptian god of wisdom and knowledge, a fitting name for an intelligent scientist.

**Backstory**

Thothan hails from a society where the pursuit of knowledge and preservation of wisdom are held in the highest regard. His people have long journeyed across galaxies, seeking remnants of civilizations that might provide insight into their own origins and existence. Among his peers, Thothan is known not only for his intellect but also for a calm, resilient nature that complements his analytical skills.

Thothan’s journey to the planet is as much about advancing scientific understanding as it is about honoring the legacies of forgotten societies. Despite the planet’s desolation, he feels a connection to it, as if its hidden secrets were calling specifically to him. His calm demeanor often balances the excitement of his adventurous companion, Quireo, allowing the two to work as a perfect pair—Quireo exploring with enthusiasm while Thothan analyzes with precision.

While Thothan is cautious in his optimism, he harbors a deep hope that his findings will not only enrich his people's knowledge but also perhaps offer them insights into their own potential future, avoiding the mistakes of past civilizations. His wisdom and experience in the field have made him an invaluable partner to Quireo, guiding them both through challenges on the planet with patience and a sense of profound reverence for what once was.

**Personality**

Thothan is a thoughtful, observant, and meticulous scientist, deeply committed to uncovering truths about the universe and its ancient civilizations. Driven by curiosity and a profound sense of duty, Thothan is the one who raised the hypothesis that the desolate planet could be the lost cradle of a sophisticated but extinct civilization. He discovered faint but undeniable traces of a vanished people who left behind enigmatic structures and relics, hinting at knowledge that could unlock new paths for his own kind.

**Appearance**

Refer to [Scientist](#scientist) to get references.

## Gameplay and Mechanics

### Gameplay

#### Core gameplay loop

The core gameplay loop is focused on **puzzle-solving** combined with **story exploration**. The player navigates through different areas of the planet, encountering puzzles they must solve to unlock new areas and progress further in understanding the planet’s backstory. The loop consists of:

- Exploration: The player roams the environment, encountering various points of interest or clues about the planet’s past.
- Puzzle Interaction: Each puzzle presents a unique challenge, encouraging the player to apply logic, observation, or pattern recognition to unlock new paths.
- Progress and Rewards: Upon solving a puzzle, players are rewarded with access to a new area or insights about the planet’s history, creating a sense of progression and achievement.
- Narrative Uncovering: As players progress, they find environmental cues and inscriptions, revealing the lore of the planet and its inhabitants.

This loop encourages a **balance of critical thinking and exploration**, keeping the player engaged by steadily increasing the challenge level of puzzles and unveiling more of the planet’s mysteries.

![alt text](image.png)

#### Game progression

Game progression is closely tied to the **difficulty** and **complexity** of the puzzles. As the player advances, the game gradually introduces **more challenging puzzles** that require a deeper understanding of previous mechanics or newly introduced ones.

The progression system includes:

- Incremental Complexity: Starting with simple puzzles, each successive challenge builds on previously learned concepts, requiring the player to think creatively to solve them.
- Environmental Integration: As puzzles are solved, they reveal new parts of the world, integrating exploration with puzzle-solving. This makes the player feel as though they are uncovering a lost civilization's secrets one piece at a time.
- Optional Paths: The game allows for some non-linear progression where the player can choose certain puzzles to solve out of sequence, adding replayability and a sense of agency.
- Possible Quick Completion: If players grasp all puzzles quickly and use logical thinking, they could theoretically complete the game faster. This mechanic rewards players who invest in understanding the game’s logic system deeply.

#### Objectives

The main objectives shape both the player’s short-term actions and long-term goals:

**Solve Puzzles**:

- Primary Goal: The main task is to solve puzzles scattered across the game world, which are linked to impactful climate change topics.
- Motivation: Solving puzzles is necessary to unlock new areas, advance in the game, and gain new insights.
- Outcome: Each solved puzzle adds a new layer to the story and opens up more of the planet for exploration.

**Understand the Story of the Planet**:

- Exploratory Goal: Through inscriptions, environmental storytelling, and remnants of the civilization, the player will learn the planet’s history.
- Narrative Engagement: This encourages players to explore and piece together the events that led to the current state of the planet.
- Rewards: Story elements serve as intrinsic rewards, giving context to the puzzles and their topics, as well as creating a more immersive experience.

This setup offers players a sense of purpose beyond simply completing puzzles, motivating them to learn the history of the world they are exploring and understand the civilization that once thrived there.

Learn more about how we deal with the game in [Mechanics](#mechanics).

### Mechanics

This section outlines the core mechanics that define player interaction within the game. From physics and movement to puzzle-solving and interactions, each mechanic is tailored to fit the distinct visual perspectives and settings within the game.

Learn more about the graphics choices of the game in [Visual design](#visual-design).

#### Physics

The physics engine adapts according to the visual perspective, enhancing immersion and supporting gameplay objectives in each view.

1. Movement

- Top-Down View:
  - **Gravity is disabled** in this view to create a grounded exploration experience, allowing the player to **focus on navigation and interaction** with the environment.
  - The player can **move freely** in all four directions—**north, south, east, and west**—offering a broad field for outdoor exploration and precise control.
- Side-Scroller View:
  - **Gravity is enabled**, introducing jumping mechanics for indoor exploration. This vertical movement adds depth to indoor navigation and allows for platforming challenges.
  - Limited to **horizontal movement** (left and right) to align with the side-scrolling perspective. Obstacles and gaps may require **jumping** to overcome.

2. Objects and Item Interaction

- Objects within both perspectives are **non-physics-based** and remain static until interacted with. This design ensures that items are easy to locate and interact with without requiring complex manipulation.
- Items can be **collected** when players approach and interact with them. This includes key items, collectibles, and objects **necessary for puzzle-solving**.

#### Actions and Interactions

- **Interact**: The player can interact with various elements within the game, including inscriptions, levers, collectible items, and locked doors. These interactions will either provide information, unlock new areas, or progress objectives.
- **Call**: During certain moments, the player can call the scientist NPC to get hints or directives from him, obtaining guidance for navigating the game world or solving puzzles. This mechanic adds a sense of companionship and progression without disrupting gameplay.

#### Puzzles implementation

Puzzles are the core element of gameplay, designed to challenge the player’s problem-solving skills while reinforcing the climate change theme. These puzzles vary in format and difficulty, offering diverse challenges in a range that goes:

- From sorting puzzles: Players may encounter puzzles where they sort items, such as waste management tasks that promote awareness of sustainability and environmental impact.
- To energy management: Other puzzles involve energy resources, where the player may need to balance resource usage to proceed or learn about alternative energy solutions.

Puzzles are seamlessly embedded within the environment, encouraging players to **explore and interact** with their surroundings to discover clues and solutions.

- Difficulty Scaling: Puzzle difficulty gradually increases as the game progresses, providing a satisfying learning curve that challenges players without becoming overwhelming.

These mechanics are designed to provide an **engaging experience** that emphasizes **exploration**, **interaction**, **problem-solving**, as well as **learning about engaging topics**. 

For further details on control schemes and input options, see [Controls](#controls).

### Controls

The control scheme has been designed to enhance ease of use, ensuring intuitive playability while minimizing complexity. We’ve mapped out core actions to essential keys, focusing on accessibility and simplicity across QWERTY and AZERTY keyboard layouts. This uniformity ensures that players in various regions can seamlessly engage with the gameplay without adjusting to unfamiliar layouts.

**Control Mapping**

| Action | QWERTY Layout | AZERTY Layout |
| ------- | -------- | ------- |
| Move Up | W | Z |
| Move Down | S | S |
| Move Left | A | Q |
| Move Right | D | D |
| Interact | F | F |
| Call | C | C |
| Menu/Settings Access | Esc | Esc |

This table ensures each primary action remains in a consistent position across both layouts, reducing friction and helping players adapt quickly.

**Schematics**

![alt text](image-1.png)
![alt text](image-2.png)

**Rationale for Minimal Controls**

The control design emphasizes straightforward mechanics to prevent player overload. By limiting the number of necessary keys, we encourage players to focus on the game’s challenges rather than adjusting to complex inputs. The mapping is strategically organized to enhance muscle memory and minimize accidental key presses, which is particularly beneficial for new players or those unfamiliar with specific layouts.

## UI

### Visual Design

The visual design of *Forsaken Planet* dynamically shifts between two perspectives: a top-down view for outdoor scenes and a side-scroller view for indoor scenes. This adaptive camera approach is designed to enhance player immersion, adapt the visual experience to suit each environment needs and vary between unique gameplay mechanics.

#### Top-Down View

- Implementation: The top-down view is used exclusively for outdoor environments. This view provides a broader perspective, allowing players to navigate and explore the landscape, observe potential paths, and interact with multiple outdoor elements.
- Design Details:
  - Environment: Open environment with clear paths, points of interest, and visible obstacles. 
  - Player & NPCs: Characters appear smaller, giving a sense of scale in expansive environments. NPCs are visible within a certain radius, aiding the player in spotting objectives and hostile elements.
  - Camera: The camera follows the player fluidly, ensuring the terrain around the character remains visible without disorienting shifts. Camera zoom or panning may be incorporated in specific scenarios to enhance visibility or focus on significant events.

#### Side-Scroller View

- Implementation: Indoor scenes utilize a side-scroller perspective, adding depth to interior exploration and allowing for more intricate interactions with obstacles and vertical elements. This view is ideal for delivering an intimate experience within enclosed, linear spaces.
- Design Details:
  - Environment: Focuses on detailed backgrounds and layered foregrounds within buildings or caves. The indoor spaces are crafted with vertical and horizontal progression paths, including either ladders or platforms to keep the gameplay fresh.
  - Player & NPCs: Characters are larger on screen, highlighting their interactions with detailed surroundings. NPCs encountered indoors are placed strategically to encourage interaction and visual appeal.
  - Camera: The camera is locked to follow the player’s horizontal and vertical movement, with slight panning or zooming adjustments based on specific events, such as dialogue sequences.

#### Asset Integration

- A cohesive asset style ensures seamless transitions between views. All assets, from character models to environmental textures, are designed with a consistent art style that adapts to both perspectives without visual incongruity.
- To explore the detailed asset specifications and integration, refer to [Assets](#assets).

This design choice supports gameplay by enhancing spatial understanding in outdoor areas while offering a more focused experience indoors, resulting in a visually and experientially engaging world.

### Hub

The **hub** serves as the **central nexus** of the adventure, functioning as both a narrative anchor and a gameplay utility. It’s from this point that players can access the various [Zones](#zones) of the game, each offering unique challenges and rewards. The design of the hub should provide clear navigation, and immerse the player in the world’s lore.

**Purpose and Role**

- Gameplay Centerpiece: The hub acts as the player’s home base, where they can prepare for their next venture.
- Narrative Progression: Story elements can be delivered here through interactions with the NPC and environmental storytelling.

#### Structure

The hub is divided into three distinct parts, each with its own functionality:

- Teleportation Room
  - Functionality: Allows players to quickly travel to unlocked zones, facilitating fast navigation across the game world.
  - Design Features:
    - A visually engaging portal system.
- Map Room
  - Functionality: Provides a detailed view of the entire game world, showing the player’s current position and the explored/locked areas.
  - Design Features:
    - A central hologram or similar interface for selecting destinations.
    - Indicators of unlocked and locked zones, with visual feedback for zone selection.
- Laboratory Room
  - Functionality: A space for interacting with the scientist, who serves as a hint-giver or lore provider.
  - Design Features:
    - An environment filled with scientific equipment and animations indicating ongoing research.
    - Dialogues that deepen the narrative and connection to the character of the scientist.

#### Visual Concept

Concept art and design for the hub should align with the game’s overall aesthetic.

**Left Area** (Teleportation Room):

Sci-fi-inspired glowing platforms, shimmering light effects when a teleport is initiated.

![alt text](<image (1).png>)
![alt text](teleport.png)

**Middle Area** (Map Room):

A room dominated by a holographic globe, with ambient lighting emphasizing its centerpiece.

![alt text](<image (2).png>)
![alt text](image-3.png)

**Right Area** (Laboratory Room):

A cluttered but organized workspace, with subtle animations like bubbling vials or flickering monitors

![alt text](<image (3).png>)

### Assets

#### Character creation

Here are the requirements of a character creation:

- **Sprite Dimensions**: All character sprites must be **64x64 pixels** to ensure consistency and compatibility with the game’s resolution and engine requirements.
- **File Format**: Each sprite or sprite sheet must be exported in a **transparent PNG** format for proper layering and seamless integration.
- **Animations**: Animations are composed of separate sprites, each representing different states or actions such as idle, moving, jumping, and so on.

To understand deeper how it should result, check in [Protagonist](#protagonist) or [Scientist](#scientist).

#### Protagonist

Color palette

![alt text](image-4.png)

##### Hexadecimal indexes

**Transparent**
**Trendy Pink** #795676
**Purple Taupe** #533E51
**Blush** #B75169
**Tyrian Purple** #0F0004
**Blackcurrant** #0B0C21
**Rose Bud Cherry** #923154
**Pompadour** #791B45
**Cinderella** #F9CFCB
**Azalea** #F9C2BD
**Prussian Blue** #000038
**Turquoise Blue** #5FCDE4
**Eunry** #CE9B97
**Pohutukawa** #60162E
**Black** #000000

##### Concept Arts

**Top-down**

Idle

![alt text](7a51932f-3d77-4f86-a4f2-e6cf5583a7fe.gif)
![alt text](8905d1ed-ed58-4d81-90c6-8c2210deedc7.gif)

**Side-scroller**

Idle

![alt text](af03bf89-b7bf-4972-8404-86cdc8e4b999.gif)

#### Scientist

Color palette

![alt text](image-5.png)

##### Hexadecimal indexes

**Transparent**
**East Bay** #565979
**Purple Taupe** #533E51
**Blush** #B75169
**Tyrian Purple** #0F0004
**Blackcurrant** #0B0C21
**Rose Bud Cherry** #923154
**Pompadour** #791B45
**Cinderella** #F9CFCB
**Azalea** #F9C2BD
**Prussian Blue** #000038
**Pastel Green** #6BE45F
**Oyster Bay** #D3E6EC
**Nepal** #96B4C1
**Water Leaf** #B9EED1
**Light Slate Grey** #78899F
**Eunry** #CE9B97
**Pohutukawa** #60162E
**Black** #000000

##### Concept Arts

**Top-down**

Idle

![alt text](256bd8bb-5505-4a92-b15f-ce9f7a41e1e8.gif)
![alt text](2973daa1-6282-4571-9dbd-bf9d852291af.gif)

## Zones

### Zone 1: Forest

### Zone 2: Nuclear Power Plant

### Zone 3: Desert

## Puzzles

### Puzzle 1: Recycling

### Puzzle 2: Energy

### Puzzle 3: Global Warming

### Puzzle 4: Restore Flora
