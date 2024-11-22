# Game Design - Forsaken Planet

<details>
<summary>Click to expand</summary>

- [Game Design - Forsaken Planet](#game-design---forsaken-planet)
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
        - [Concept Art](#concept-art)
  - [Zones](#zones)
    - [Zone 1: Forest](#zone-1-forest)
      - [Objectives](#objectives-1)
      - [Gameplay Elements](#gameplay-elements)
      - [Visual and Conceptual Design](#visual-and-conceptual-design)
      - [Audio Design](#audio-design)
      - [Unique Features](#unique-features)
    - [Zone 2: Nuclear Power Plant](#zone-2-nuclear-power-plant)
      - [Objectives](#objectives-2)
      - [Gameplay Elements](#gameplay-elements-1)
      - [Visual and Conceptual Design](#visual-and-conceptual-design-1)
      - [Audio Design](#audio-design-1)
      - [Unique Features](#unique-features-1)
    - [Zone 3: Desert](#zone-3-desert)
      - [Objectives](#objectives-3)
      - [Gameplay Elements](#gameplay-elements-2)
      - [Visual and Conceptual Design](#visual-and-conceptual-design-2)
      - [Audio Design](#audio-design-2)
      - [Unique Features](#unique-features-2)
  - [Puzzles](#puzzles)
    - [Puzzle 1: Recycling](#puzzle-1-recycling)
      - [Objectives](#objectives-4)
      - [Related items](#related-items)
      - [Puzzle walkthrough](#puzzle-walkthrough)
      - [Rewards](#rewards)
    - [Puzzle 2: Energy](#puzzle-2-energy)
      - [Objectives](#objectives-5)
      - [Related items](#related-items-1)
      - [Puzzle walkthrough](#puzzle-walkthrough-1)
      - [Rewards](#rewards-1)
    - [Puzzle 3: Global Warming](#puzzle-3-global-warming)
      - [Objectives](#objectives-6)
      - [Related items](#related-items-2)
      - [Puzzle walkthrough](#puzzle-walkthrough-2)
      - [Rewards](#rewards-2)
    - [Puzzle 4: Restore Flora](#puzzle-4-restore-flora)
      - [Objectives](#objectives-7)
      - [Related items](#related-items-3)
      - [Puzzle walkthrough](#puzzle-walkthrough-3)
      - [Rewards](#rewards-3)

</details>

## Game Overview

<img src="https://github.com/user-attachments/assets/50a39179-4200-482f-b410-16211a05d68a" width="50">

**Title**: Forsaken Planet

**Genre**: Serious Knowledge-Vania and Puzzle game

**Target audience**: Casual & Explorer gamer (12+)

**Platforms**: PC (Windows, macOS, Linux)

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

<img width="500" src="https://github.com/user-attachments/assets/ca7a826b-9474-4ae5-8d9f-1bbbe5b16f67">

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

<img width="500" src="https://github.com/user-attachments/assets/48fdce5c-4112-429d-b7d2-d3c044accf9e">
<br>
<img width="500" src="https://github.com/user-attachments/assets/cc0b232a-0cf0-43a1-b84b-f412808a952b">


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
    - Indicators of unlocked and locked zones, with visual feedbacks for zone selection.
- Laboratory Room
  - Functionality: A space for interacting with the scientist, who serves as a hint-giver or lore provider.
  - Design Features:
    - An environment filled with scientific equipment and animations indicating ongoing research.
    - Dialogues that deepen the narrative and connection to the character of the scientist.

#### Visual Concept

Concept art and design for the hub should align with the game’s overall aesthetic.

**Left Area** (Teleportation Room):

Sci-fi-inspired glowing platforms, shimmering light effects when a teleport is initiated.

<img width="250" src="https://github.com/user-attachments/assets/23731f15-6fd1-4f4e-9b1c-a8b65dab96ca">
<br>
<img width="250" src="https://github.com/user-attachments/assets/d76ab90c-c9af-40c9-9ea4-9855c40da4fc">

**Middle Area** (Map Room):

A room dominated by a holographic globe, with ambient lighting emphasizing its centerpiece.

<img width="250" src="https://github.com/user-attachments/assets/c16ba340-ce32-4be9-a108-af1be77c1f5f">
<br>
<img width="200" src="https://github.com/user-attachments/assets/058e6169-e992-481b-a70f-9d93c2f8731a">

**Right Area** (Laboratory Room):

A cluttered but organized workspace, with subtle animations like bubbling vials or flickering monitors

<img width="250" src="https://github.com/user-attachments/assets/f5bb0ef7-adcf-45b2-bf27-8b9681ccb709">

### Assets

#### Character creation

Here are the requirements of a character creation:

- **Sprite Dimensions**: All character sprites must be **64x64 pixels** to ensure consistency and compatibility with the game’s resolution and engine requirements.
- **File Format**: Each sprite or sprite sheet must be exported in a **transparent PNG** format for proper layering and seamless integration.
- **Animations**: Animations are composed of separate sprites, each representing different states or actions such as idle, moving, jumping, and so on.

To understand deeper how it should result, check in [Protagonist](#protagonist) or [Scientist](#scientist).

#### Protagonist

Color palette

<img width="250" src="https://github.com/user-attachments/assets/2eede717-cdb5-4f87-8663-e22b8f0b9048">

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

<img width="250" src="https://github.com/user-attachments/assets/d541f78b-ad78-44ed-8e85-496d65d913d1">
<img width="250" src="https://github.com/user-attachments/assets/512b5bc7-798b-4e0d-9d1c-e50fb2944c2a">

**Side-scroller**

Idle

<img width="250" src="https://github.com/user-attachments/assets/1a502720-4d85-478d-9a62-3924af60f9ec">

#### Scientist

Color palette

<img width="250" src="https://github.com/user-attachments/assets/e2b80eba-2667-4236-8b1b-63b3882a1923">

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

##### Concept Art

**Side-scroller**

Idle

<img width="250" src="https://github.com/user-attachments/assets/0e8d3708-fd8e-4fd8-b75b-5cd37c89b20c">
<img width="250" src="https://github.com/user-attachments/assets/63a7d784-12d6-45fe-8e07-4930d7ebaf0f">

## Zones

### Zone 1: Forest

The **Forest** is the **introductory area** of the game, designed to ease players into the core mechanics while immersing them in the game's world. Players encounter beginner-friendly challenges here, providing ample opportunity to learn, explore, and understand the game’s narrative foundation.

#### Objectives

In the Forest, the player’s main objectives include:

1. Uncovering Hints and Story Elements
  The Forest is teeming with lore elements, from ancient carvings on tree trunks to abandoned journals. These details hint at the world’s backstory.

2. Solving [Puzzle 1](#puzzle-1-recycling)

- **Mechanic**: Players interact with environmental objects like bins and wastes scattered around. The goal is to sort items correctly (e.g., separating glass, paper, and plastic). Successful sorting earns rewards and hints for further puzzles.
- **Challenge Level**: Easy, acting as a tutorial for more complex puzzles later.

3. Collecting Seeds for [Puzzle 4](#puzzle-4-restore-flora)

- **Objective**: Players collect unique seeds from the Forest. These will be used in a later puzzle where players regenerate barren lands.

#### Gameplay Elements

- **Exploration**: The player explores a semi-open area, encountering sometimes wildlife.
- **Interaction**: Environmental interaction is a key mechanic; environment like bushes and trees can react to player actions, and some objects can be picked up.

#### Visual and Conceptual Design

- **Visuals**: The Forest's aesthetic is vibrant, with a focus on varying shades of green complemented by occasional bright-colored flora.
- **Lighting**: A soft sunlight filters through the canopy, with dynamic lighting effects to highlight areas of interest.
- **Concept Art**:

<img width="500" src="https://github.com/user-attachments/assets/79d285f2-9c92-4076-8dbd-15d08c1a3175">

#### Audio Design

- Background Music: A serene, melodic tune with natural undertones, like bird chirps and rustling leaves, creates an immersive experience.
- Environmental Sounds: Layered ambient sounds, such as distant waterfalls, insect hums, and occasional footsteps on foliage.

#### Unique Features

- Dynamic Ecosystem: The player’s actions (e.g., cleaning up wastes) visually **impact** the Forest. Cleaning wastes restores vibrancy to nearby plants, making the area feel alive, and some tiny areas could be accessed.
- Hidden Collectibles: Lore scrolls and rare seeds add **replayability** to the Forest area.

### Zone 2: Nuclear Power Plant

The **Nuclear Power Plant** is the **second area** players explore, diving deeper into the game’s themes of **environmental conservation** and **energy resource** management. This zone shifts to a more industrial tone, showcasing the consequences of past energy misuse. The environment introduces intermediate-level challenges tied to understanding energy systems, offering both educational and narrative value.

#### Objectives

In the Nuclear Power Plant, players are tasked with:

1. Discovering Hints and Story Elements
  The plant is filled with clues about its abandonment, such as faded warning signs and malfunctioning machinery. These provide insights into the catastrophic decisions leading to its downfall.

2. Solving [Puzzle 2](#puzzle-2-energy)

- **Mechanic**: Players explore the plant’s core facilities to restart a dormant nuclear fission reactor. This involves aligning circuits, balancing energy outputs, and safely controlling the reactor’s reactivation with its panel.
- **Challenge Level**: This puzzle integrates a side-scroller view, requiring platforming and timing to navigate unstable platforms.

3. Understanding cars energy
  Players examine abandoned vehicles, identifying their energy sources (e.g., gasoline, electricity, or hydrogen). They would understand which options are more environmentally friendly based on provided data.

#### Gameplay Elements

- Exploration: Players navigate a semi-linear map that combines exploration of plant exteriors with confined interiors full of machinery and tools.
- Interaction: Interaction centers around repairing, operating, and understanding energy-related mechanisms.
- Platforming: Mid-level platforming is introduced, with obstacles such as broken walkways and deactivated elevators.

#### Visual and Conceptual Design

**Visuals**: The Nuclear Power Plant involves industrial design. Expect detailed machinery, control rooms, and towering cooling towers. The plant contrasts stark steel with concrete structures.
**Lighting**: Dynamic lighting plays a critical role, with dim, flickering lights in interior areas and an ominous orange glow in reactor rooms, juxtaposed against natural light in outdoor sections.
**Concept Art**:

<img width="500" src="https://github.com/user-attachments/assets/8064acf1-118f-4615-bcfc-c729e54897ee">
<img width="500" src="https://github.com/user-attachments/assets/560e3e79-47e1-447b-932b-3618906d653f">

#### Audio Design

- Background Music: Industrial-themed, with deep, resonant tones and mechanical rhythms, contrasted by softer ambient melodies in less tense moments.
- Environmental Sounds: Includes the hum of machines, distant alarms, dripping water, and occasional echoes of footsteps or wildlife reclaiming parts of the plant.

#### Unique Features

- Interactive Energy Education: Players gain an understanding of nuclear fission and green energy choices through **engaging puzzles**. The game subtly educates players on the pros and cons of energy technologies.
- Hidden Collectibles: Energy schematics, notes from former workers, and rare items like fuel cells or vintage car parts provide replay value.

### Zone 3: Desert

The **Desert** is the **third area** players explore, presenting a stark contrast to previous zones. This region highlights the devastating effects of **global warming** and **environmental neglect**. The arid, sun-scorched landscape offers challenging puzzles and narrative threads that delve deeper into the **consequences of climate change** and its impact on the world.

#### Objectives

In the Desert, the player's primary goals are:

1. Discovering Hints and Story Elements
  Players uncover scattered remnants of a past civilization, such as cracked solar panels, abandoned research stations, and dried riverbeds. These environmental details and artifacts reveal how rising temperatures and mismanagement led to the current desolation.

2. Solving [Puzzle 3](#puzzle-3-global-warming)

- Mechanic: Players must restart CO2 scrubbers scattered throughout the zone to counteract the effects of greenhouse gases. This involves activating control panels in a timed sequence, balancing speed and accuracy as the intense heat affects the environment.
- Challenge Level: Incorporates side-scroller mechanics in enclosed areas like abandoned research facilities. The timed aspect increases tension, forcing players to quickly strategize and adapt.

3. Solving [Puzzle 4](#puzzle-4-restore-flora)

- Mechanic: Players find desolate garden plots and plant seeds that can be collected in Zone 1: Forest. The challenge lies in locating planting locations and understanding where to find seeds to revitalize the area.
- Challenge Level: This puzzle requires backtracking, connecting the player’s actions across zones. It emphasizes the environmental narrative by showcasing the long-term consequences of restoration efforts.

#### Gameplay Elements

- Exploration: Players traverse a vast, semi-linear desert map filled with obstacles such as sand dunes, dried-out machinery, and ruins.
- Interaction: Interaction revolves around reactivating machinery, piecing together fragments of the world’s story, and reviving dead ecosystems.

#### Visual and Conceptual Design

**Visuals**: The Desert features a palette dominated by yellows, oranges, and browns, creating an oppressive, barren atmosphere. Heat haze effects, cracked earth, and the remnants of failed technology, such as rusted turbines or broken solar farms, underscore the desolation.
**Lighting**: Harsh sunlight dominates outdoor spaces, casting sharp shadows, while interiors of research facilities are dimly lit, often illuminated by flickering emergency lights.
**Concept Art**: 

<img width="500" src="https://github.com/user-attachments/assets/49b51af8-157c-4263-8956-db12e33d92d4">

#### Audio Design

- Background Music: Sparse and atmospheric, with low, resonant tones that evoke isolation. Percussive elements mimic the sound of shifting sands and windstorms.
- Environmental Sounds: The howling wind, creaking metal, and the distant rumble of collapsing structures emphasize the desert’s harshness.

#### Unique Features

- Dynamic Environmental Effects: The **extreme heat affects** the player's ability to stay for a long time in the zone **as long as the CO2 scrubbers are not activated**.
- Environmental Restoration: Players’ actions, such as reactivating CO2 scrubbers and planting flora, have **visible effects on the environment**.

## Puzzles

### Puzzle 1: Recycling

The **Recycling puzzle** is the **first puzzle** of the game, taking place in the [Zone 1](#zone-1-forest).

#### Objectives

The main objective of the puzzle is to **sort the wastes** the player can find in the area **into the appropriate bins**.

#### Related items

There are several items related to this puzzle:

- Wastes
- Bins
- Information sheets explaining waste recycling

#### Puzzle walkthrough

The puzzle walkthrough involves several steps, with different gameplay mechanics and consequences, alongside what the scientist can say to the player.

| Steps | Gameplay mechanics | Consequences | NPC's data |
| ----- | ------- | -------- | ------ |
| Find wastes on the way | See wastes | Not neglecting the wastes will make the flowers grow and bloom | "Try to explore this area, there should be some stuff that would be needed for understanding what happened." |
| Can interact with them | Interaction with wastes | Not neglecting the wastes will make the flowers grow and bloom | "I see that you picked up something. It should be a kind of waste, from the past. According to my calculations, it should be part of the 1.5 tons of waste that the average life form generated here every year. Try to put it in the right place." |
| Find bins | Interaction with bins | | "Hooo, we got almost the same at home! I don't know how it's called here though... It should be useful depending on what you can find." |
| Find hints | Interaction with hints | | |
| Understand that wastes go in the bin | | | |
| Gather all the wastes | Interaction with wastes | | "Ookay, it seems that you gathered all the wastes you could find... Try to put them in the right place." |
| Put them in the inappropriate bins | Interaction with bins, interaction with wastes | Not sort the wastes correctly won't have the expected effect: the path won't open | "We got the same ones at home, you should know how they work..." |
| Put them in the appropriate bins | Interaction with bins, interaction with wastes | Sort the wastes correctly will have the expected effect: the path will open | "Good job buddy, I wish you do not neglect your wastes at home." |

#### Rewards

By solving the puzzle, the player **restores the environment** where the wastes were found, he can access different parts, or even find something related to the lore.

### Puzzle 2: Energy

The **Energy puzzle** is the **second puzzle** of the game, taking place in the [Zone 2](#zone-2-nuclear-power-plant).

#### Objectives

The main objective of the puzzle is to **reactivate a dormant nuclear fission reactor** to supply power to the planet.

#### Related items

There are several items related to this puzzle:

- Reactor's panel
- Wires
- Information sheets

#### Puzzle walkthrough

The puzzle walkthrough involves several steps, with different gameplay mechanics and consequences, alongside what the scientist can say to the player.

| Steps | Gameplay mechanics | Consequences | NPC's data |
| ----- | ------- | -------- | ------ |
| Get into the building | Change view from top-down to side-scroller | Gameplay changes | "Wow this is really interesting! It should be a place where they created energy somehow, let's try to reactivate the process." |
| Interact with wires | Interaction with wires | Introduction to connecting wires, cannot reactivate the plant | "I guess those cables are not connected to each other." |
| Interact with the unfixed panel | Interaction with panel | Cannot reactivate the plant | "The panel is not supplied by power, try to make sure everything is connected in the building." |
| Find hints | Interaction with hints | | |
| Connect wires | Interaction with wires, connect wires | Can reactivate the plant | "I can detect electricity going in this one, it's fixed." |
| Interact with the fixed panel | Interaction with panel | Can reactivate the plant | "Now everything is reaady to reactivate this stuff!" |

#### Rewards

By solving the puzzle, the player **supplies energy** to several elements within the different areas. He can access new zones, or even find something new related to the lore.

### Puzzle 3: Global Warming

The **Global Warming puzzle** is the **third puzzle** of the game, taking place in the [Zone 3](#zone-3-desert).

#### Objectives

The main objective of the puzzle is to **reactivate CO2 scrubbers** the player can find in the area **to reduce the temperature**.

#### Related items

There are several items related to this puzzle:

- CO2 scrubbers' panel
- Information sheets

#### Puzzle walkthrough

The puzzle walkthrough involves several steps, with different gameplay mechanics and consequences, alongside what the scientist can say to the player.

| Steps | Gameplay mechanics | Consequences | NPC's data |
| ----- | ------- | -------- | ------ |
| Get into the zone | Time-limited actions | Gameplay changes to a tensional one | "What the frick, it's hot! You should be quick or you'll faint." |
| See scrubber | Exploration | | "This is a CO2 scrubber, it has been designed to eliminate the carbon dioxyde in the area. I believe they became old..." |
| Interact with srubber | Interaction with scrubbers | If the player doesn't activate all the rubbers in time, he loses the game | "It seems that you activated its panel somehow... There should be more nearby, be quick." |
| Interact with all srubbers | Interaction with scrubbers | Activating all the srubbers on time will make the player able to explore more | "Wow, good job, it's colder now. You're able to explore in depth the area now." |

#### Rewards

By solving the puzzle, the player **reduces the CO2 rate** in the air, **reducing the overall temperature**. He can explore the zone in depth, or even find something new related to the lore.

### Puzzle 4: Restore Flora

The **Restore Flora puzzle** is the **fourth puzzle** of the game, taking place in the [Zone 3](#zone-3-desert).

#### Objectives

The main objective of the puzzle is to **plant the seeds** that the player can find in [Zone 1](#zone-1-forest) **into seedlings**.

#### Related items

There are several items related to this puzzle:

- Seeds
- Seedlings
- Information sheets

#### Puzzle walkthrough

The puzzle walkthrough involves several steps, with different gameplay mechanics and consequences, alongside what the scientist can say to the player.

| Steps | Gameplay mechanics | Consequences | NPC's data |
| ----- | ------- | -------- | ------ |
| See seedlings | See seedlings | | "Maybe we should plant some trees around there to restore some flora. We may find some seeds and dirt somewhere." |
| Interact with seedlings without seeds | Interaction with seedlings | | "Those seedlings don't have any seeds." |
| Interact with seeds in the Forest | Interaction with seeds | Get seeds | "Cleaning this zone allowed the tree to spread seeds throughout the area! That's awesome." |
| Interact with seedlings with seeds | Interaction with seedlings | Plant in seedlings | "Those seedlings do have seeds now." |
| Interact with all seedlings with seeds | Interaction with seedlings | Plant in seedlings | "You planted all the seeds that you could, well done buddy." |

#### Rewards

By solving the puzzle, the player **plants seeds** and **revitalize the area**. He can access new zones, or even find something new related to the lore.
