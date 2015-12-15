# hubot-d20

Hubot implementation of [Michael Enger's d20.js](https://github.com/michaelenger/d20.js).

## Installation

In hubot project repo, run:

`npm install hubot-d20 --save`

Then add **hubot-d20** to your `external-scripts.json`:

```json
[
  "hubot-d20"
]
```

## Sample Interaction

```
mfazio23>> hubot roll 3d20
hubot>> @mfazio23 19

mfazio23>> hubot verbose roll 3d20
hubot>> @mfazio23 23 [4,8,11]
```
