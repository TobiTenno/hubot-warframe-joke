#Hubot Warframe Jokes
[![Contact me on Discord](https://img.shields.io/badge/discord-Tobiah%238452-7289DA.svg)](https://discord.gg/0108TK6065s44uH5j)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](http://choosealicense.com/licenses/mit/)


Let your Hubot's inner cephalon out with these Warframe jokes.


##Configuration
| Key | Description | Default |
|---------------| -------------| --------------|
|`HUBOT_ALLOW_DIRTY_JOKES` | Whether or not to allow dirty jokes from your cephalon | `false`
|`HUBOT_BLOCK_END` | Configurable string for the end of a block | `\n\n`
|`HUBOT_MD_CODE_BLOCK` | Configurable string for a code block | ```


##Usage

###Installation

`
npm install --save hubot-warframe-joke
`

Add `hubot-warframe-joke` to your `external-scripts.json` file.

```json
[
  "hubot-warframe-joke"
]
```

###Commands
|Command | Result|
|--- | --- |
|`joke` | Tells a joke |
|`dirtyjoke` | Tells a dirty joke (Can be turned off)|

###Sample interaction
```
user1> hubot joke
hubot> - Excalibur. Cut with the grain.


user1> hubot dirtyjoke
hubot> - Rhino. Protection first, charging later.
```