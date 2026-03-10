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

3.1 Epic structure 

Product backlog is organised into epics. Each epic contains multiple user stories with associated tasks, acceptance criteria and story point estimates. 

| Epic | Description | Priority | Story Points |
| ---- | ----------- | -------- | ------------ |
| Player Movement and controls | All functionality related to moving the player character through the world and controlling the camera. | Critical | 13 | 
| Object Interaction | Systems for identifying, approaching and manipulating interactive objects in the environment. | Critical | 21 |
| World persistence | Saving and loading game state, maintaining object states across sessions. | High | 13 |
| Audio System | All audio funstionality including ambient layers and interactive sounds. | Critical | 21 | 
| Narrative delivery | Systems for triggering and managing narrative audio fragments and keepsake objects. | High | 13 |
| U ser Interface | Inventory displays, pause menu, settings screens and all UI elements. | Medium | 8 |

3.2 Complete Product Backlog

| Story | Epic | Points | 
| ----- | ---- | ------ |
| As a player, I want to move my character through the environmment so that I can explore the cabin and surrounding areas. | Movement | 5 | 
| As a Player, I want to interact with objects in the world so that I can clean and repair the space. | Interaction | 8 |
