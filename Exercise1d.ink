/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR shell = 0

-> seashore

== seashore ==
You are sitting on the beach. 

It is { advance_time () }.
You see many things while walking. {not sand_castle:A sandcastle,} An umbrella, the sky, clouds, some seagulls.
{&You want to pick up shells| You feel very hungry.|You are tired.}

+ [Stroll down the beach] -> beach2
-> DONE

== beach2 ==
This is further down the beach.
It is { advance_time () }. 
The amount of shells you have is this amount: {shell}.
+{time == 1} [Pick up some seashells] -> shells
+ [Move back up the beach] -> seashore
*{shell > 1} [Make a necklace] -> shell_ending
+[I want to swim] -> swim_ending
*[Kick sandcastle] -> sand_castle


== shells ==
You pick up the shells.
~shell = shell + 1
-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
== shell_ending == 
You gained a lot of shells. You made a necklace with them. Somehow.
-> END

== swim_ending ==
You got tired of walking around and decided to swim in the water.
-> END

== sand_castle == 
You decided to kick a sandcastle. What's wrong with you? Someone put a lot of effort into making that castle.
-> seashore
