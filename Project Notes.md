# TipIndex

## Summary of the application

The subject of my application is based on English Football. It is essentially similar to a fantasy
draft where users can select players they believe will perform on a given game(week).

My application will allow anyone to browse through an index of Tips, or if signed in, post
their own Tips. Tips will consist of as many Players they wish, and also what Game(week) which they
believe their Players will perform well on.

## Model requirements

I am planning to start with 4 models

- A |user| has_many |tips|, and |tips| belongs_to a |user|

- |tips| has_many |players| and |games|

- |players| has_many |games| through |tips|, and |games| has_many |players| through |tips|


### User
has_many :tips

username: string
email: string
password_digest :string

### player
has_many :tips
has_many :games, through: :tips

name: string
position: string
team: string
price: integer

### game
has_many :tips
has_many :players, through: :tips

gameweek_number: integer - This will be an integer from 1 to 38 (There are 38 gameweeks in a season)

### tip
belongs_to :user

name: string - A User will title their tip
comment: text - A User will provide a description for their tip
player_id :integer
game_id :integer


## Scope Methods

Scope allows you to query models with finder methods to return ActiveRecord::Relation instances.

These are a few scope methods which I could possibly implement into the application

- return tips where a certain Player is included
  - Tip.find_by
- return tips which includes a minimum of 4 Players
- return all tips for a selected game(week)
- return tips which include a certain Player position
-

## Authentication

I will implement login through Facebook alongside standard user authentication.

## Nested Resource

The nested route will be a user/new route, allowing a user to create a new tip. This will naturally
lead to a show route and index of all tips from the user.

## Other Requirements

- I will include validations for the attributes.
  - Signup will require username and email to be unique, as well as a password to be present.
  - Login will require a username and password to be present.
  - Players will require a name, position team and price to be present.
  - Gameweek will require a gameweek number - between 1 and 38
- I will include validation errors, with descriptive messages.
