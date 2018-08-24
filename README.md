<h2 align="center">DICE AND DICE</h2>
DND, or Dice and Dice, is a simple individual project which has per objective to make trivial decisions. Those decisions are made by choosing arbitrary options. The options are available thanks to data that the user was prompted to input previously.
For example:
-I introduce as a variable Jeans: red_jeans, blue_jeans and green_jeans.
-I introduce as a variable T-shirt: red_tshirt, blue_tshirt, green_tshrit.
-I ask DND what should I wear today?
-I obtain as a response that I should wear green_jeans and blue_tshirt.

* Ability to write code that is easy to change.
* Ability to test-drive my code.
* Ability to build with objects.
* Ability to fluidly work with Ruby.
* Ability to effectively use, Ruby's REPL, irb.

## Domain Model
```
As a user,
So that I can customise my DND,
I'd like DND to enquire me about the topic.
```
|Objects|Messages|
|--|--|
|Topic||
|DND|enquire_topic|
```
As a user,
So that I can customise my DND,
I'd like DND to enquire me about the choices.
```
|Objects|Messages|
|--|--|
|Topic||
|Choice||
|DND|enquire_choice|
```
As a user,
So that I can check the information of my DND,
I'd like to enquire DND about my inputs.
```
|Objects|Messages|
|--|--|
|Topic||
|Choice||
|DND|show_input(input)|
```
As a user,
So that I can correct input mistakes,
I'd like DND to overwrite inputs.
```
|Objects|Messages|
|--|--|
|Topic||
|Choice||
|DND|overwrite_input(input)|
```
As a user,
So that I can customise my DND,
I'd like DND to enquire me about the options.
```
|Objects|Messages|
|--|--|
|Topic||
|Choice||
|Option||
|DND|enquire_option|
```
As a user,
So that I can save time,
I'd like DND to give me a trivial answer.
```
|Objects|Messages|
|--|--|
|Topic||
|Choice||
|Option||
|DND|answer|

## Diagram of Correlation

DND <== enquire_topic ==> Topic </br>
DND <== enquire_choice ==> Choice </br>
DND <== show_input(input) ==> Topic/Choice </br>
DND <== overwrite_input ==> Topic/Choice </br>
DND <== enquire_option ==> Option </br>
DND <== answer ==> String </br>

## Example of Use
