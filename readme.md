# Cabin Routine 
Table of contents
- [Introduction](#introduction)
- [Software tools](#software-tools)
- [Coding Techniques](#coding-techniques)
- [Research](#research)
- [User Requirements](#user-requirements)
- [Scrum style stories](#scrum-style-stories)
- [System Requirements](#system-requirements)
- [Overall Design](#overall-design)
- [Game Story](#game-story)
- [Design Strategy](#design-strategy)
- [Development Strategy](#development-strategy)
- [Evaluation of strategies](#evaluation-of-strategies)
- [Programming laguage](#programming-language)
- [User Interface and controls](#user-interface-and-controls)
- [Game loop](#game-loop)
- [Character](#character)
- [Artwork](#artwork)
- [Game Rules](#game-rules)
- [Gameplay](#gameplay)
- [Backlog](#backlog)
- [Backlog Reviews](#backlog-reviews)
- [Function definitions](#function-definitions)
- [Tests](#tests)
- [Core Features](#core-features)
- [Burndown Chart](#burndown-chart)
- [Development Review Meetings](#development-review-meetings)
- [Future Development Opportunities](#future-development-opportunities)
- [Final Evaluation](#final-evaluation)


## Introduction 
Cabin routine is a pixel style caretaker simulation game where the player manages and maintains a small cabin environment. The player must complete daily tasks such as cleaning, repairing, feeding animals, and managing resources while balancing time and energy. There is no combat. A failure state when the needs are not met for example energy or lack of resources. The project’s aim is to create a low stress experience where the player finds meaning in simple tasks. Through exploration of the game the player uncovers a story told entirely through environment and audio feedback.
## Software tools
- Windows PC
- Mac OS
- Minimum specifications
    - OS: Windows 10
    - Memory: 4GB RAM

## Coding techniques
## Research
Several games were analysed to identify key features that can be applied to the project. These games were selected because they focus on routine based gameplay, environmental interaction and relaxing mechanics. By comparing their features, the inclusion of systems such as cleaning, repairng and daily tasks in the game is justified. 

### Unpacking
Features: Object placement, organising items, calm gameplay
Why it suits my game: Supports cleaning/ tidying mechanics and shows that simple tasks can be satisfying without pressure

### House Flipper 
Features: Cleaning, repairing, tool based interactions, visible before/after changes 
How it compliments the game: Justifies including repair and maintenance tasks with clear visual progress

### Stardew Valley 
Features: Daily routine, resource management, gradual progression 
How it compliments the game: Supports a structured daily loop where the player maintains the cabin over time

### Animal crossing: New Horizons 
Features: Relaxed gameplay customisation, open-ended tasks 
How it compliments the game: Reinforces a cozy, low pressure experience with player freedom

### Cozy Grove
Features: Daily tasks, environment restoration, simple objectives
How it suits the game: Supports routine-based gameplay and gradual improvement of the environment
## User requirements
Functional requirements
| Requirement | Description |
| ----------- | ----------- |
| Movement system | Player movement in 4 directions. WASD or arrow keys movement. Consistent movement speed |
| Interaction System | System detects when player is in range of interactive objects |
| State Persistence | System saves the state of all interactive objects, recording if any changes have been made. |
| Audio Trigger system | The system monitors player location and action history to trigger matching audios. | 
| Inventory system | System tracks six items carried by player and displayed in grid format. |
| Save System | System serialises game state to JSON format and writes it to local storage. Multiple saves are supported. | 
| Day Cycle | System has four distint backgrounds dependent on the tasks that are completed |
| Weather system | System will occasionally have a rainy state with appropriate audio changes. |
| Subtitle System | Subtitles will be displayed for all effects when enabled. | 

## Scrum style stories
1. As a player, I want to move my character through the environment so that I can explore the cabin and surrounding areas.
2. As a player, I want to interact with objects in the world so that I can clean and repair the space.
3. As a player, I want the game to remember what I have cleaned or fixed so that my progress feels permanent and meaningful.
4. As a player, I want to hear audio fragments as I explore to that I can gradually understand the story of who lived here.
5. As a player, I want to access my inventory so that I can see what tools and discovered items I am carrying.
6. As a player, I want to save my progress so that I can return to the game later without losing what I have accomplished.
7. As a player, I want the day to gradually cycle through the morning, afternoon, evening and night so that the world feels alive and changes mood.
8. As a player, I want weather to occasionally change so that the environment feels dynamic and varied.
9. As a player, I want subtitles for all audio so that I can understand the narrative if I have hearing difficulties.

## Overall Design
Cabin Routine is a pixel art 2D simulation game. Focused on managing and maintaining a small cabin environment. The design focuses on simplicity and routine based gameplay. Players complete daily tasks such as cleaning, repairing and organising. The user interface is minimalistic to match the calm atmosphere. The visual style uses soft colours and simple sprites to create a relaxing and immersive experience.

## Game story
The game follows a lone caretaker responsible for maintaining a remote cabin. While the story is minimal, it is told through the environment and the players daily actions. The cabin gradually changes based on how well it is maintained, reflecting the player's effort and progress. This allows players to create their own narrative. 

## Design strategy
The design strategy focuses on iterative development. A simplified version of the game is developed first to ensure core functions are working correctly before expanding.   The project follows structured development methods, incorporating elements of agile development such as regular reviews and task backlogs. This approach reduces risk, allows for continuous improvement and ensures the final game remains focused on its core gameplay experience. 

## Development Strategy
### Evaluation of strategies
Several software development strategies were considered including Waterfall, Spiral, Extreme Programming (XP) and Scrum. 

#### Waterfall methodology 
This methodology has a linear approach. Each stage must be completed before moving onto the next. (Requirements, analysis, design, development, testing, deployment)

Strengths:
- Provides a clear structure and documentation
- Easy to manage
- Ensures all requirements are defined before development begins

Weaknesses:
- Not flexible- (changes are difficult once a stage has been complete)
- Does not support experimentation which is important in game design
- Testing occurs late so issues are discovered too late

Evaluation: 
This methodology is not suitable. Game development requires experimentation and iteration. Especially when refining gameplay systems. Part of development involved learning Godot requirements changed over time. A rigid structure like waterfall would have limited creativity and slowed progress. 

#### Spiral methodology 
The spiral model combines iterative development with risk analysis. It progresses through repeated cycles (planning, risk analysis, development, evaluation)

Strengths:
- Strong focus on risk management
- Supports iterative development and continuous improvement
- Allows feedback at each stage

Weaknesses:
- Can be complex and time consuming to manage
- Requires detailed planning and risk assesment
- Not ideal for small project due to overhead

Evaluation:
The spiral model would work as some aspects align with the projects needs. Its iterative nature aligns well with game development, especially for testing gameplay ideas. However, the level of risk analysis and documentation required would be excessive for a small project. It would likely slow development rather than improve it. 

#### Extreme Programming (XP)
Extreme programming (XP) is an Agile methodology focused on high quality code, frequent releases. The development strategy consists of pair programming and continuous testing. 

Strengths: 
- Encourages clean, efficient code and regular testing
- Supports rapid feedback and continuous feedback
- Promotes adaptability to changing requirements

Weaknesses:
- Relies heavilty on team collaboration (pair programming)
- Can be difficault to follow strictly without experience
- Requires consisten discipline and time commitment

 Evaluation: 
 XP would be partially effective, mainly its focus on iteration and testing. However, key practices like pair programming are not relevant in this project. Some XP principles such as frequent testing and small updates, could improve quality, but the full methodology is not practical for a solo-developed game. 

#### Scrum Methodology 
Scrum is an agile framework that organises work into sprints, with tasks managed in a baclog and reviewed regularly. 

Strengths:
- Highly flexible and adaptable to change
- Encourages regular progress tracking through sprint and reviews
- Helps prioritise tasks using a backlog
- Suitable for iterative development

Weaknesses:
- Requires discipline in maintaining backlog and sprint reviews
- Can be less effective if not followed consistently
- Designed for teams, so some roles are less relevant in solo work (e.g. Scrum Master)

Evaluation:
Scrum was the most suitable methodology for this project. It allowed development to adapt when progres was slow in the early stages due to learning Godot. The use of a backlog and sprint structure helped organise tasks and prioritise essential features. Although not all Scrum elements were fully implemented, it supported flexible and iterative development, which is ideal for game creation. 

## Programming language
The game is developed using GDScript, the primary scripting language of the Godot engine. GDScript is a high level, python like language that is intergrated within Godot, making it suitable for rapid development. It allows for effiecient implementation of core systems. Usinf GDScript simplifies debugging and supports modular code sturcture which is beneficial for managing a small scale project like Cabin Routine. 

## User interface and controls
The user interface is designed to be minimal ensuring it does not distract from core gameplay. Key information such as energy levels and time progression is displayed clearly on screen using simple visual elements. The controls are straightforward, using keyboard input for movement (e.g. WASD or arrow keys) and a single key for interaction. This simple control system scheme makes the game easy to learn and accessible to a wide range of players while supporting smooth and intuitive gameplay. 

## Game loop
The player observes the environment, noticing elements that draw their attention. They choose to act, using appropriate tools to clean or repair what they have noticed. Completing actions reveal discoveries, physical objects or audio fragments. The player reflects on what they have found and the cycle continues organically based on their curiosity. 

## Character 
<img width="333" height="291" alt="image" src="https://github.com/user-attachments/assets/99c69a13-9385-4c16-9644-bbf0644b22f3" />
The character is a smiple pixel art care taker sprite designed to fit the minimal and calm aesthetic. The design is small in scale with limited detail, allowing it to be easily recognisable while maintaining performance efficiency. The character uses a consistent pose and basic colour palette, making it suitable for repreated animations such as walking and interacting with objects, 

## Artwork 
<img width="414" height="809" alt="image" src="https://github.com/user-attachments/assets/a68feed6-9c63-42b2-970e-441036f2d33d" />

This is from an asset pack on itch.io at https://kenmi-art.itch.io/cute-fantasy-rpg. This greatly reduced development time as it removed the need to create all visaul assets from scratch while still maintaining a consistent and professional appearance. 

<img width="325" height="313" alt="image" src="https://github.com/user-attachments/assets/46faccba-145d-4de5-8f46-c6660889fa76" />

The wall tiles are pixel art assets used to construct the cabin environment. They feature a simple repeating pattern that allows for easy level design and scalability. The tiles are designed to seamlessly connect, enabling the creation of enclosed spaces such as rooms and interiors. Their consistent style ensures they blend well with both the character and other environmental assets. 

## Game Rules
| Rule | Implementation | Rationale |
|----- | -------------- | --------- |
| Energy depletion | Each action consumes energy. Reaching zero triggers respawn | Creates gentle consequence without severe punishment |
| Time progresion | Actions advance time. Certain tasks available at certain times | Encourages varied play patterns |
| Task optionality | No required objectives | Supports relaxed gameplay and player freedom | Task completion | Completing tasks improves the cabin's condition | Reinforces progress and player impact | 
## Gameplay 

<img width="432" height="613" alt="image" src="https://github.com/user-attachments/assets/a61e5f6d-4eeb-4f43-97ed-8c8c00209227" />

The gameplay is centred around completing small repeatable tasks within the cabin environment. The player moves around the space, interacts with objects, manages limited energy while progressing through time. The core loop involves identifying tasks, completing them and observing changes in the environment. The design promotes a relaxed place, allowing players to engage with the game without pressure while still maintaining a sense of progression and purpose. Storyboard created in figma.
## Backlog
The product backlog was organised using the MoSCow method (Must have, Should have, Could have, Won't have). This prioritisation framework ensured that critical features were delivered even if the scope needed adjustment. 
### Product backlog
| User story | Priority | MoSCoW | Acceptance Criteria |
| ---------- | -------- | ------ | ------------------- |
| As a player, I want to move around the cabin so that I can interact with objects | High | Must | Player can move in 4 directions | 
| As a player, I want to interact with objectsso that I can complete tasks. | High | Must | Interaction key  works on objects | 
| As a player, I want time to progress so that tasks feel dynamic | Medium | Should | Time increases after actions | 
| As a player, I want tasks to complete so that I can see progress | Medium | Should | Tasks update visually |
| As a player, I want a simple UI so that I can see energy/time | Medium | Should | UI displays correct values | 
| As a player, I want sound effects so that the game feels immersive | Low | Could | Sounds play on interaction |
| As a player, I want multiple rooms so that gameplay has variety | Low | Could | Player can move between areas |

### Sprint backlog 

| Task | Status | Notes |
| ---- | ------ | ----- |
| Set up Godot project | Done | Initial set up completed |
| Implement player movement | Done | Basic movement working |
| Add interaction system | Done | Simple object interaction |
| Implement time system | Incomplete | Basic system implemented |
| Add UI (time) | Incomplete | UI partially working | 
| Add sound effects | Not started | Lower priority |
| Add aditional rooms | Not started | Basic functionality was prioritised |

## Backlog reviews
Backlog reviews were conducted at regular intervals to ensure priorities remained relevant. Tasks that were completed were removed, while unfinished tasks were either carried forward or deprioritised. Feedback from development progress influencecd backlog adjustments. This ensured focus remained on delivering core features first. 

## Tests 
| Test case | Expected outcome | Result |
| --------- | ---------------- | ------ |
| Player movement | Player moves in all directions | Pass |
| Object interaction | Player can interact with objects | Pass | 
| Time progression | Time increases with actions | Partial |
| UI display | UI updates correctly | Partial |

## Burndown chart
<img width="667" height="443" alt="image" src="https://github.com/user-attachments/assets/98c1b7cc-286d-41d8-acbb-c29f5c871e6f" />

## Development Review Meetings 

Development review meetings were held regularly to reflect on progress and plan upcoming work. During each meeting, tasks completed since last session were reviewed, new tasks identified and any challenges or blockers were discussed. This process helped maintain organisation, ensured consistent progress and allowed for timely problem solving. 

Week 1-2
- Completed: Project setup, research
- Next: Begin core mechanics
- Blockers: learning Godot engine

Week 3 
- Completed: Movement, interaction
- Next: UI
- Blockers: Time management

Week 4
- Completed: Core gameplay loop
- Next: Polish features
- Blockers: Limited time remaining
  
## Future Development Opportunities
- Create inventory
- Save progress
- varying and randomising tasks
- Refine experience, audio, colours
- More things to interact with
- Storymode

## Final Evaluation
The project successfully delivered a simplified version of Cabin Routine, including core systems such as movement and interaaction. Scrum practices such as backlog prioritisation and sprint tracking supported development. Progress was initially slow due to familiarisation with the engine. While some planned features were not completed, the final product meets its minimum requirements and demonstrates a functional gameplay loop.

