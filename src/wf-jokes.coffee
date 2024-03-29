# Description:
#   Send users a joke
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_ALLOW_DIRTY_JOKES
#
# Commands:
#   hubot joke - sends a warframe joke
#   hubot dirtyjoke - sends a potentially awkward warframe joke
#   hubot hug - sends the operator a hug
#
# Author:
#   aliasfalse

util = require('util')
md = require('node-md-config')

allowLewd =  || false;

jokes = ["Saryn. Want some STD?",
         "Mesa. Ya'll bow down to the cowgirl.",
         "Mag. Plenty of things she can pull.",
         "Volt. Doing it fast and clean.",
         "Ash. Thrust, thrust, thrust your blade...",
         "Loki. Always good and prepared for every occasion.",
         "Rhino. Protection first, charging later.",
         "Chroma. THIS IS A STRICTLY SCALIE HOUSEHOLD.",
         "Valkyr. Ropes, whips, and claws have never been THIS FUN.",
         "Oberon. Everybody gets some of him.",
         "Frost. Don't mind your frozen balls. Just chill.",
         "Vauban. Throws balls around. What else is there to say?",
         "Trinity. A dish best eaten from inbetween.",
         "Nyx. Domination at its finest.",
         "Excalibur. Starting out strong, last one to finish.",
         "Inaros. POCKET SAND.",
         "Equinox. Can't love yourself better than this.",
         "Atlas. Prepare for some fistin'.",
         "Nova. Prepare your body to be basted by explosions.",
         "Wukong. WHY WON'T YOU FINISH?!",
         "Nezha. Not to be confused with Hatsune Miku.",
         "Ivara. Tugging on your hips with these dashwires.",
         "Opticor, Lanka, Snipetron, Punchthrough. Maximum penetration.",
         "Phage. Several strokes and your ultimate weapon's ready to go again.",
         "Braton. A first timer's best friend.",
         "Vectis. Top quality wood.",
         "Grakata. You just need to let out more money shots!",
         "Atterax. If normal punching and contact just isn't your type.",
         "Prova. Compensation's always an option.",
         "Kohm. Don't tell me you didn't read that one a different way. I know.",
         "Stug. Every lady would want some of those blobs of life.",
         "Prime Gear. Technically normal. They just got the golden shower.",
         "Boltor. Perfect for an alternative on 'nailing'."]

cleanJokes = ["Prova. Compensation's always an option.","Clem. Clem. Grakaaaataaaaaa.",
              "Zephyr. Will take you to the heavens. Does not accept normies. BAKAAAAAWWWWWWWWWWW!",
              "Banshee. Prepare your earplugs when you're tuning her out.",
              "Excalibur. Cut with the grain.",
              "Lacera. Morning, neighbor! Trim your hedges.",
              "Sydon. If you think a pitchfork's not enough to start a riot.",
              "Latron. Pop some bottlecaps for your brand new trophy.",
              "Excalibur Umbra. CRAWLING IN MY SKIN, THESE WOUNDS THEY WILL NOT HEAL-",
              "Mios. Just think of it like a visit to the dentist.",
              "Excalibur Prime, how's that forma on your face?",
              "Vauban. Why did you make the bouncy castle from hell?",
              "Badder than a ceramic dagger fight over primed reach",
              "You should feel bad about that. Let me rub your face in it to help."]

module.exports = (robot) ->
    robot.respond /dirtyjoke/, (res) ->
        if allowLewd
            res.send util.format('%s%s%s', '```diff\n-', 
                res.random(jokes), md.blockEnd)
        else
            res.send util.format('%s%s%s', '```diff\n-', 
                res.random(cleanJokes), md.blockEnd)
      
    robot.respond /joke/, (res) ->
        res.send util.format('%s%s%s', '```diff\n-', 
            res.random(cleanJokes), md.blockEnd)
    robot.respond /hug/, (res) ->
        res.send util.format('%s%s%s', md.codeMulti, 'Operator, Cephalons do not g-g-g-give huuuu~~ Screw it. ⊂（♡⌂♡）⊃', md.blockEnd)