1.0 Introduction

1.1 Project overview

Cabin routine is a pixel style caretaker simulation game where the player manages and maintains a small cabin environment. The player must complete daily tasks such as cleaning, repairing, feeding animals, and managing resources while balancing time and energy. There is no combat. A failure state when the needs are not met for example energy or lack of resources. The project’s aim is to create a low stress experience where the player finds meaning in simple tasks. Through exploration of the game the player uncovers a story told entirely through environment and audio feedback.

1.2 Purpose of Document 

This document acts as a reference throughout development to ensure the project stays aligned with original goals. It entails the full design, development and technical structure of the game.

1.3 Target platform 

- Windows PC
- Mac OS
- Minimum specifications
    - OS: Windows 10
    - Memory: 4GB RAM
    - Storage: 500 MB

1.4 Target Audience

Players aged 20+ as this age range is more likely to seek a gaming experience that is relaxing and has emotional resonance. 

Evaluation of Development Mothodologies

Waterfall Model 

The Waterfall model has sequential phases. Each phase assumes that all requirements are known and specified at the start. Atmosphere and emotional response are the main goals here so a feature might function perfectly but not match the intended goal. 

Features that function correctly according to specification may still fail to achieve desired player experience. The Waterfall model provides no mechanism for revisiting earlier decisions based on such insights. Therefore, this methodology was not used. 

Spiral Model

The spiral model was also considered. This is a risk driven approach cycles through four phases: determining objectives, identifying and resolving risks, development and testing and planning the next iteration.

While the iterative nature was appealing, the models focus on technical risk identification and mitigation was not aligned with project needs. The primary risks in this project were creative achieving desired emotional tone, appropriate narrative pacing and player engagement. These are not the technical risks the Spiral model was designed to address. The model was therefore not used for this project. 

Agile Methodologies 

Agile emphasises on working software, customer collaboration and responding to change aligned with project requirements.

Within this model there are two frameworks that were examined in detail:

Extreme programming (xp)
Extreme Programming offers practices including test driven develpoment and pair programming. While valuable, the engineering focused practices felt somewhat heavyweight for a project of this scale. The emphasis on rapid releases was not inline with the project and was not chosen.

Scrum 
Scrum emerged as the most appropriate framework. 

- Timeboxed iteration of consistent duration
- Regular sprint reviews
- 



2.0 User and system requirements

2.1 User Stories

1. As a player, I want to move my character through the environment so that I can explore the cabin and surrounding areas.
2. As a player, I want to interact with objects in the world so that I can clean and repair the space.
3. As a player, I want the game to remember what I have cleaned or fixed so that my progress feels permanent and meaningful.
4. As a player, I want to hear audio fragments as I explore to that I can gradually understand the story of who lived here.
5. As a player, I want to access my inventory so that I can see what tools and discovered items I am carrying.
6. As a player, I want to save my progress so that I can return to the game later without losing what I have accomplished.
7. As a player, I want the day to gradually cycle through the morning, afternoon, evening and night so that the world feels alive and changes mood.
8. As a player, I want weather to occasionally change so that the environment feels dynamic and varied.
9. As a player, I want subtitles for all audio so that I can understand the narrative if I have hearing difficulties.

2.2 System Requirements

Functional requirements
| Requirement | Description |
| ----------- | ----------- |
| Movement system | Player movement in 4 directions. WASD or arrow keys movement. Consistent movement speed |
| Interaction System | System detects when player is in range of interactive objects |
| State Persistence | System saves the state of all interactive objects, recording if any changes have been made. |
| Audio Trigger system | The system monitors player location and action history to trigger matching audios. | 
| Inventory system | System tracks six items carried by player and displayed in grid format. |
| Save System | System serialises game state to JSON format and writes it to local storage. Multiple saves are supported. | 
| Day Cycle | System has four distint backgrounds on a 20 minute cycle. |
| Weather system | System will occasionally have a rainy state with appropriate audio changes. |
| Subtitle System | Subtitles will be displayed for all effects when enabled. | 



3.2 Complete Product Backlog

| Story | Epic | Points | 
| ----- | ---- | ------ |
| As a player, I want to move my character through the environmment so that I can explore the cabin and surrounding areas. | Movement | 5 | 
| As a Player, I want to interact with objects in the world so that I can clean and repair the space. | Interaction | 8 |
| As a Player, I want the game world to remember what I have cleaned or fixed so that my progress feels permanent. | Persistence | 5 |
| As a player, I want to access my inventory so that I can see what tools and items I am carrying | UI | 3 | 
| As a player, I want to save my progress so that I can return later without lsoing accomplishments. | Persistence | 5 |
| As a player, I want weather to occasionally change so the environment feels dynamic. | Atmosphere | 5 | 
| As a player, I want to examine discovered narrative objects so I can reflect on their meaning. | Narrative | 5 | 
| As a player, I want haptiic feedback when using tools so actions feel more satisfying. | Interaction | 3 | 
| As a player, I want seperate volume controls so I can customise my experience. | Accessibility | 2 | 
| As a player, I want contextual prompts so I know what I can interact with. | UI | 3 | 
| As a player, I want to store keepsakes in a special box so I can see my collection. | Narrative | 3 | 
| As a player, I want to sit on chairs so I can rest and take in the atmosphere. | Interaction | 2 | 

3.3 Definitoin of Done 

A user story is considered complete when: 
1. All acceptance criteria have been met.
2. All associated tese have passed.
3. Code has been reviewed by at least one other team member.
4. Feature has been tested on target hardware.
5. Documentation has been updated if necessary.
6. No new bugs have been introduced.


4.0 Detailed Design Documentation 

4.1 Overall Game Design 

4.1.1 Game Concept 

CabinRoutine is a meditative game about tending to a forgotten cabin in the woods. Through simple daily tasks, the player pieces together the story of the place. There are no objectives, no timers and no way to fail only a space to care for and a story to discover. 

4.1.2 Core Game Loop

The player observes the environment, noticing elements that draw their attention. They choose to act, using apporpriate tools to clean or repair what they have noticed. Completing actions reveal discoveries, physical objects or audio fragments. The player reflects on what they have found and the cycle continues organically based on their curiosity. 

4.1.3 Design Pillars 

- Tactile Maintenance: All interactions feel physically satisfying through animation, sound and haptics.
- Atmospheric Storytelling: Narrative emerges from environment and audio, never from text
- Mindful Exploration: No direction, no pressure, no punishment the player moves at their own pace.

4.2 Story and Narrative Design 

4.2.1 Story Summary 

A traveller hiking through remote woodland discovers a small cabin. The cabin is neglected but not abandoned. Something draws the traveller to stay. As they clean and repair the space, they begin to experience auditory echoes fragments of sound for a full immersion experience.

4.2.2 Narrative Delivery Method 

All narrative is delivered through: 

- Audio fragments: Brief, ethereal sounds triggered by player presence and actions
- Environmental objects: Items that imply aspects of the occupant's life and personality
- Keepsake examination: Closer inspection of discovered items may trigger additional audio

No text, dialogue boxes or exposition are used. 

4.3 Characters

4.3.1 The Player Character 

| Attribute | Description |
| --------- | ----------- |
| Visibility | First person perspective | 
| Motivation | Implied through action | 

The player character is a blank slate, allowing players to project themselves into the role. 

4.4 Environment and Level Design 

4.4.1 World structure 

The game world is a single persistent map divided into four zones:

| Zone | Key features | 
| ---- | ------------ |
| Cabin interior | Fireplace, bookshelves, kitchen, sleeping loft |
| Porch | Rocking chair, railing, view of clearing |
| Clearing | Woodpile, garden patch, bench |
| Stream Path | Winding trail, stream, sitting rock | 

4.4.2 Interactive Object placement

| Zone | Interactive objects |
| Cabin interior | broom, cloth, hammer, lantern, fireplace |
| Porch | Rocking chair (sit) |
| Clearing | Axe, woodpile, garden tools |
| Stream path | Sitting rock |

4.5 Gameplay Mechanics

4.5.1 Core mechanics 

Movement system:
- 4 direction movement
- Collision detection with all solid objects

Interaction system:
- Area based detection
- Contextual action based on held tool
- Animation triggers baed on successful interaction
- Visual state change

Tool system:

| Tool | Action | Required for |
| ---- | ------ | ------------ |
| Broom | Sweep floors | Dusty surfaces | 
| Cloth | Wipe surfaces | Dirty surfaces |



