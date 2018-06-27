# RandomSimpsons

## About
This project tries to recreate the feeling of watching Simpsons reruns as a kid. Watching The Simpsons in order, or having to spend time figuring out which episode you want to watch, is just not as fun.

Each time you run this app, you'll get a random episode from the golden era of The Simpsons (defined by me as seasons 2 through 8) chosen for you. It also keeps track of what episodes have already been chosen.

## Installation
- Install Elixir ~1.6
- Clone this repository
- `mix deps.get`
- `mix escript.build`

## Use
`./random_simpsons` will give you a random golden era episode to watch.

Repeat until you've seen them all!

To start your journey over, delete the `episodes.json` file.

## Future
- Give users the ability to:
  - define the golden era for themselves
  - open the browser with a direct link to watch the episode on FX's Simpsons World
- Create an endpoint users can hit without having to install anything
  - Keep track of already-picked episodes via cookies or local storage
