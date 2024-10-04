# ICP 03Oct24

[//]: # (Make a table of the ICP 03Oct24 data)
### Project 1
| Requirements | Description                                           | Story Points | Priority | Sprint No. |
|--------------|-------------------------------------------------------|--------------|----------|------------|
| 1            | 10x10 Grid                                            | 1            | high     |            |
| 2            | column and row labels                                 | 1            | low      |            |
| 3            | handle an input number of shis between 1 and 5        | 3            | medium   |            |
| 4            | allow placement of shis on the grid                   | 3            | high     |            |
| 5            | ship and grid art                                     | 8            | high     |            |  
| 6            | handle shots and hit evaluation                       | 5            | high     |            |
| 7            | handle turn based play                                | 5            | medium   |            |
| 8            | draw hits and misses on the grid                      | 3            | medium   |            |
| 9            | sink ships which are hit on every tile                | 3            | low      |            |
| 10           | show the player and opponent grid but not their ships | 13           | high     |            |
| 11           | handle game scoring                                   | 3            | low      |            |
| 12           | win/loss conditions                                   | 5            | medium   |            |
| 13           | return to main menu                                   | 3            | medium   |            |
| total        |                                                       | 56           |          |            |  

- Time required: 37.5 + 86 hours = 123.5 hours
- Average hours per week: 123.5 / 2 = 61.75 hours per week
- Story points per week: 56 / 2 = 28 points per week
- Hours per point: 123.5 / 56 = 2.21 hours per point

[//]: # (Make a table of the ICP 03Oct24 data)

### Project 2
| Requirements | Description                                           | Story Points | Priority | Sprint No. |
|--------------|-------------------------------------------------------|--------------|----------|------------|
| 14           | finish requirements from project 1 on new project     | 13           | high     |            |
| 15           | easy AI (random)                                      | 8            | medium   |            |
| 16           | medium AI (random - smart)                            | 13           | medium   |            |
| 17           | hard AI (omniscient)                                  | 5            | medium   |            |
| 18           | 3x3 shot (custom feature)                             | 3            | low      |            | 
| 19           | server, client 1, client 2 startup script             | 1            | high     |            |
| 20           | documentation                                         | 3            | low      |            |
| total        |                                                       | 46           |          |            |

- Time required: 12.5 + 51 hours = 63.5 hours
- Average hours per week: 63.5 / 2 = 31.75 hours per week
- Story points per week: 46 / 2 = 23 points per week
- Hours per point: 63.5 / 46 = 1.38 hours per point

### Averages over both projects
- Average hours per point: (2.21 + 1.38) / 2 $\approx$ 1.8 hours per point
- Average hours per week: (61.75 + 31.75) / 2 $\approx$ 46.75 hours per week
- Average story points per week: (28 + 23) / 2 = 25.5 points per week

## Method 1:

### sprint 1
- Using an average of 25.5 story points per week gives 51 story points per sprint.

| Requirement ID | Description of Requirement                                                 | Story Points | Priority | Sprint No  |
|----------------|----------------------------------------------------------------------------|--------------|----------|------------|
| 1              | Support multiple users.                                                    | 5            | Medium   | 1          |
| 2              | Support users with different privilege levels.                             | 8            | Low      | 1          |
| 3              | Onboard new devices easily.                                                | 8            | High     | 1          |
| 4              | Customizable user interface for each user.                                 | 13           | Low      | 1          |
| 5              | Prompt user to confirm suspected errors in commands or other major changes | 1            | Medium   | 1          |
| 6              | Support automated routines.                                                | 8            | Medium   | 1          |
| 15             | Regularly backed up to local storage and/or cloud.                         | 8            | High     | 0          |
| total          |                                                                            | 51           |          |            |

### sprint 2
| Requirement ID | Description of Requirement                                                 | Story Points | Priority | Sprint No |
|----------------|----------------------------------------------------------------------------|--------------|----------|-----------|
| 7              | Control devices with or without internet access.                           | 13           | High     | 2         |
| 8              | Provide an easy-to-use interface for controlling smart home devices.       | 5            | Medium   | 2         |
| 9              | Interface available on web browser and local control panel.                | 8            | Low      | 2         |
| 10             | Emergency shutoff conditions.                                              | 3            | High     | 2         |
| 11             | Allow user to control multiple devices at once.                            | 5            | Low      | 2         |
| 12             | Allow user to set up automated routines for devices.                       | 3            | Medium   | 2         |
| 13             | Allow remote access through secure connection.                             | 8            | High     | 2         |
| 18             | Log trends in devices that send data.                                      | 3            | Medium   | 0         |
| 19             | Log user interactions with the system.                                     | 3            | Medium   | 0         |
| total          |                                                                            | 51           |          |           |


## Method 2:
- Using a goal of 45 total hours per week and an average of 1.8 hours per story point, the team can complete 25 story points per week.

Sprint 1:

| Requirement ID | Description of Requirement                                                 | Story Points | Priority | Sprint No |
|----------------|----------------------------------------------------------------------------|--------------|----------|-----------|
| 1              | Support multiple users.                                                    | 5            | Medium   | 0         |
| 2              | Support users with different privilege levels.                             | 8            | Low      | 0         |
| 3              | Onboard new devices easily.                                                | 8            | High     | 0         |
| 5              | Prompt user to confirm suspected errors in commands or other major changes | 1            | Medium   | 0         |
| 12             | Allow user to set up automated routines for devices.                       | 3            | Medium   | 0         |
| total          |                                                                            | 25           |          |           |

| Requirement ID | Description of Requirement                                                 | Story Points | Priority | Sprint No |
|----------------|----------------------------------------------------------------------------|--------------|----------|-----------|
| 4              | Customizable user interface for each user.                                 | 13           | Low      | 0         |
| 6              | Support automated routines.                                                | 8            | Medium   | 0         |
| 10             | Emergency shutoff conditions.                                              | 3            | High     | 0         |
| 14             | Hosted on Raspberry Pi device.                                             | 1            | High     | 0         |
| total          |                                                                            | 25           |          |           |

[//]: # ()
[//]: # (| 7              | Control devices with or without internet access.                           | 13           | High     | 0         |)

[//]: # (| 8              | Provide an easy-to-use interface for controlling smart home devices.       | 5            | Medium   | 0         |)

[//]: # (| 9              | Interface available on web browser and local control panel.                | 8            | Low      | 0         |)

[//]: # (| 11             | Allow user to control multiple devices at once.                            | 5            | Low      | 0         |)

[//]: # (| 13             | Allow remote access through secure connection.                             | 8            | High     | 0         |)

[//]: # (| 15             | Regularly backed up to local storage and/or cloud.                         | 8            | High     | 0         |)

[//]: # (| 16             | Available 24/7.                                                            | 3            | High     | 0         |)

[//]: # (| 17             | Suggest routines based on common activity patterns                         | 13           | Medium   | 0         | )

[//]: # (| 18             | Log trends in devices that send data.                                      | 3            | Medium   | 0         |)

[//]: # (| 19             | Log user interactions with the system.                                     | 3            | Medium   | 0         |)

[//]: # (| 20             | Send alerts to user when device not functioning properly.                  | 8            | High     | 0         |)
