--[[


Table of Contents
-----------------

1. What the Business Card Does
2. Creating Your Own Business Card
3. What NOT to Change
4. Finding Your Game ID
5. Leaving Your Card at the Coffee Shop


What the Business Card Does
---------------------------

This Business Card template is designed to give creators to share a quick summary of a Core project for players looking to find a new experience from the Coffee Shop RPG game. These tiny UI "ads" can be placed in the Coffee Shop RPG Business Card Display, where players can pick a random card, and click a button to transport to the game. 

Creating Your Own Business Card
-------------------------------

1. Add the Business Card UI Template to your Hierarchy.
2. Select the Business Card UI and change the Visibility property to Force On
3. Open the "Business Card" UI COntainer.

The Card Shape Background represents the general color and shape of the card. Do not change the general dimensions, but you can select different shapes for the Image property, and optionally delete the Paper Texture child to remove the woven paper look. 

The "Graphic Side" UI Panel contains images that you can use to form a logo or other visually interesting elements to represent the project. 
The "Info Side" UI Panel contains text boxes for the Project Title and Tagline.


What NOT to Change
------------------

You can use the Business Card Template for anything, but to keep it submittable to the system in Coffee Shop RPG, be sure not to change:

- The Business Card Client script
- The outer dimensions of the card
- the name of the outer UI Container ("Business Card")


Finding Your Game ID
--------------------

To finish the card, add your Game ID to the CUstom Properties of the Business Card UI client context folder.

To find your id, navigate to your game page on coregames.com.
In the URL, everything after "/games/" is the Game ID.

For example, the URL for the game page for Roller Derby Practice is:

    https://www.coregames.com/games/34111c/roller-derby-practice

so the Game ID is:

    34111c/roller-derby-practice

Copy the string for your game and paste it in the "GameID" Custom Property of "Business Card UI".
Then change the "BusinessName" property to the name of your game.


Leaving Your Card at the Coffee Shop
------------------------------------

To get your card added to Coffee Shop RPG, you need to submit it in the Disastronautics discord server, in the #business-cards channel.

1. Right click your finished Business Card UI template and select "Create New Template From This".
2. Name it anything you want, but it helps if it indicates your game/studio name.
3. Right click the template in Project Content and select "Export as png".


Next, join the Disastronautics Discord Server: 

https://discord.gg/RFv8VemYEp

Share your .png or .pbt file to the #business-cards channel, and I (Disastronaut) will add it to the game!

]]