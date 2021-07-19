//
//  Quiz.swift
//  Wizard's Quiz
//
//  Created by Stephen Sterling on 3/1/20.
//  Copyright © 2020 Stephen Sterling. All rights reserved.
//

import Foundation

class Quiz {
    
    var allQuestions = Array<Question>()
    var chosenQuestions = Array<Question>()
    
    
    fileprivate func GetChosenQuestions() {
        
        allQuestions.shuffle()
        let copy = allQuestions.prefix(20)
        chosenQuestions.append(contentsOf: copy)
    }
        
    
    init(quizDifficulty : QuizDifficulty) {
        
        if (quizDifficulty == .Easy){
            allQuestions = easyQuiz
            
        }
        
        if (quizDifficulty == .Medium) {
            allQuestions = mediumQuiz
            
        }
        
        if (quizDifficulty == .Hard){
            allQuestions = hardQuiz
            
        }
        
        GetChosenQuestions()
    
    }
        
    private var easyQuiz = [
    
            Question(text: "What is the name of Harry's best friend?", possAnswer1: "Percy", possAnswer2: "Fred", possAnswer3: "Seamus", possAnswer4: "Ron", answerIndex: 3),
            
            Question(text: "What Hogwarts house does Harry belong to?", possAnswer1: "Hufflepuff", possAnswer2: "Ravenclaw", possAnswer3: "Slytherin", possAnswer4: "Griffindor", answerIndex: 3),
            
            Question(text: "Who is the Prizoner of Azkaban?", possAnswer1: "Voldemort", possAnswer2: "Sirius Black", possAnswer3: "Peter Pettigrew", possAnswer4: "James Potter", answerIndex: 1),
            
            Question(text: "Who is the Half Blood Prince?", possAnswer1: "Proffesor Dumbledore", possAnswer2: "Harry Potter", possAnswer3: "Professor Snape", possAnswer4: "Sirius Black", answerIndex: 2),
            
            Question(text: "What book does Professor Dumbledore leave Hermione in his will?", possAnswer1: "Tales of the Beetle and the Bard", possAnswer2: "The tales of the Three Brothers", possAnswer3: "Hogwarts, A History", possAnswer4: "The Book of Horcruxes", answerIndex: 0),
            
            Question(text: "What is the name of the creature that guards the Sorcerer's Stone at Hogwarts?", possAnswer1: "Buckbeak", possAnswer2: "Dobby", possAnswer3: "Aragog", possAnswer4: "Fluffy", answerIndex: 3),
            
            Question(text: "Who kills Albus Dumbledore", possAnswer1: "Draco Malfoy", possAnswer2: "Severus Snape", possAnswer3: "Voldemort", possAnswer4: "Sirius Black", answerIndex: 1),
            
            Question(text: "What position does Harry play on the Quidditch team?", possAnswer1: "Beater", possAnswer2: "Keeper", possAnswer3: "Seeker", possAnswer4: "Chaser", answerIndex: 2),
            
            Question(text: "What kind of creature lives in the Chamber of Secrets?", possAnswer1: "A Basilisk", possAnswer2: "A Giant", possAnswer3: "A Troll", possAnswer4: "A Centaur", answerIndex: 0),
            
            Question(text: "What is the name of the Wizarding School that Harry Attends?", possAnswer1: "Beauxbatons", possAnswer2: "Durmstrang", possAnswer3: "Iivermorny", possAnswer4: "Hogwarts", answerIndex: 3),
            
            Question(text: "How many years do you attend school at Hogarts Witchcraft and Wizardry?", possAnswer1: "4", possAnswer2: "5", possAnswer3: "6", possAnswer4: "7", answerIndex: 3),
            
            Question(text: "What is the name of Hermione's cat?", possAnswer1: "Scabbers", possAnswer2: "Crookshanks", possAnswer3: "Mrs. Norris", possAnswer4: "Kitty", answerIndex: 1),
            
            Question(text: "Who is the headmaster of Hogwarts?", possAnswer1: "Minerva Mcgonagall", possAnswer2: "Severus Snape", possAnswer3: "Remus Lupin", possAnswer4: "Albus Dumbledore", answerIndex: 3),
            
            Question(text: "Who was not a Triwizard Tournament competitor?", possAnswer1: "Hermione Granger", possAnswer2: "Victor Krum", possAnswer3: "Harry Potter", possAnswer4: "Cedric Diggory", answerIndex: 0),
            
            Question(text: "How many books are there in the actual Harry Potter series?", possAnswer1: "5", possAnswer2: "9", possAnswer3: "7", possAnswer4: "4", answerIndex: 2),
            
            Question(text: "What shape is Harry's scar on his forehead?", possAnswer1: "A Line", possAnswer2: "A Circle", possAnswer3: "A Lightning Bolt", possAnswer4: "A Wand", answerIndex: 2),
            
            Question(text: "What is a Muggle?", possAnswer1: "A Dishonest Person", possAnswer2: "A Non Magic Person", possAnswer3: "Another name for Wizard", possAnswer4: "A person withough magic parents", answerIndex: 1),
            
            Question(text: "What is the name of the bank that holds wizard money?", possAnswer1: "Gringotts", possAnswer2: "Wizardry Bank", possAnswer3: "Bank of Diagon Alley", possAnswer4: "Bank Galeon", answerIndex: 0),
            
            Question(text: "What is Neville's last name?", possAnswer1: "Granger", possAnswer2: "Finnigan", possAnswer3: "Longbottom", possAnswer4: "Weasley", answerIndex: 2),
            
            Question(text: "Who is the head of Gryffindor House?", possAnswer1: "Professor Snape", possAnswer2: "Professor Mcgonagall", possAnswer3: "Professor Sprout", possAnswer4: "Professor Dumbledore", answerIndex: 1),
            
            Question(text: "What kind of creature is a half horse and half man?", possAnswer1: "An Animagus", possAnswer2: "A werewolf", possAnswer3: "A Death Eater", possAnswer4: "Centaur", answerIndex: 3),
            
            Question(text: "What is the name of the chess game that is played in the series?", possAnswer1: "Wizard's Chess", possAnswer2: "Magic Chess", possAnswer3: "Moving Chess", possAnswer4: "Non Muggle Chess", answerIndex: 0),
            
            Question(text: "What is the name of the place that has all sorts of Wizard Shops that Harry first attended with Hagrid?", possAnswer1: "Hogsmead", possAnswer2: "Diagon Alley", possAnswer3: "Knockturn Alley", possAnswer4: "The Three Broomsticks", answerIndex: 1),
            
            Question(text: "Who is the head of the Slytherin House?", possAnswer1: "Professor Mcgonagall", possAnswer2: "Professor Snape", possAnswer3: "Professor Dumbledore", possAnswer4: "Professor Flitwick", answerIndex: 1),
            
            Question(text: "Who does Harry not like at Hogwarts?", possAnswer1: "Draco Malfoy", possAnswer2: "Hermione Granger", possAnswer3: "Neville Longbottom", possAnswer4: "Seamus Finnigan", answerIndex: 0),
            
            // new questions
        
            Question(text: "Which of the following is NOT one of the Dealthly Hallows", possAnswer1: "The Cloak of Invisiblity", possAnswer2: "The Elder Wand", possAnswer3: "The Ressurection Stone", possAnswer4: "The Potion of Invincibility", answerIndex: 3),
            
            Question(text: "Where in Hogwarts is the Slytherin Common Room located?", possAnswer1: "Slytherin Tower", possAnswer2: "Third Floor", possAnswer3: "Dungeons", possAnswer4: "Fifth Floor", answerIndex: 2),
            
            Question(text: "How did Harry and Ron get to Hogwart's in their second year?", possAnswer1: "Hogwart's Express", possAnswer2: "A flying car", possAnswer3: "Flying Broom", possAnswer4: "A Boat", answerIndex: 1),
            
            Question(text: "How does Harry free Dobby from the Malfoy's", possAnswer1: "Gave Dobby a sock", possAnswer2: "Threatened the Malfoy's", possAnswer3: "Beat Draco in a duel", possAnswer4: "Bought him from the Malfoy's", answerIndex: 0),
            
            Question(text: "What is a disrespectful term for a witch or wizard with non magic parents?", possAnswer1: "Muggle", possAnswer2: "Muggle-born", possAnswer3: "MudBlood", possAnswer4: "Squib", answerIndex: 2),
            
            Question(text: "What was the name of Hagrid's Hippogriff that was sentenced to death", possAnswer1: "Aragog", possAnswer2: "Fawkes", possAnswer3: "Errol", possAnswer4: "Buckbeak", answerIndex: 3),
            
            Question(text: "What kind of creature is Aragog?", possAnswer1: "A Spider", possAnswer2: "A Snake", possAnswer3: "A Basilisk", possAnswer4: "A Giant", answerIndex: 0),
            
            Question(text: "Who opens the Chamber of Secrets the second time?", possAnswer1: "Draco Malfoy", possAnswer2: "Ginny Weasley", possAnswer3: "Harry Potter", possAnswer4: "Professor Quirrell", answerIndex: 1),
            
            Question(text: "What does Hermione use to take extra classes in her third year?", possAnswer1: "A Portkey", possAnswer2: "A Clone Device", possAnswer3: "A Time Turner", possAnswer4: "A Pensieve", answerIndex: 2),
            
            Question(text: "Who put Harry's name in the Goblet of Fire?", possAnswer1: "Professor Snape", possAnswer2: "Igor Karkaroff", possAnswer3: "Himself", possAnswer4: "Barty Crouch Jr", answerIndex: 3),
            
            Question(text: "Who does Harry see AFTER he was 'killed' by Voldemort in the Forbidden Forest?", possAnswer1: "Professor Dumbledore", possAnswer2: "His Parents", possAnswer3: "Sirius Black", possAnswer4: "Ron and Hermione", answerIndex: 0),
            
            Question(text: "How many tasks are completed in the Triwizard Tournament?", possAnswer1: "1", possAnswer2: "3", possAnswer3: "5", possAnswer4: "7", answerIndex: 1),
            
            Question(text: "What does Molly Weasley send Ron at hogwarts, after finding out that he and Harry stole Arthur's car?", possAnswer1: "A Broom", possAnswer2: "A Letter", possAnswer3: "A Howler", possAnswer4: "Dress Robes", answerIndex: 2),
            
            Question(text: "Who tells Harry Potter that he is a wizard?", possAnswer1: "Professor Dumbledore", possAnswer2: "His Parents", possAnswer3: "Aunt Petunia", possAnswer4: "Hagrid", answerIndex: 3),
            
            Question(text: "Who is Harry trying to save when he travels to the Ministry of Magic in the Order of Pheonix?", possAnswer1: "Sirius Black", possAnswer2: "Hagrid", possAnswer3: "Professor Dumbledore", possAnswer4: "Dobby", answerIndex: 0),
            
            Question(text: "Who helps Sirius Black into Hogwarts Castle?", possAnswer1: "Professor Snape", possAnswer2: "Professor Lupin", possAnswer3: "Harry", possAnswer4: "Draco Malfoy", answerIndex: 1),
            
            Question(text: "Who becomes Minister of Magic right after Cornelius Fudge?", possAnswer1: "Professor Dumbledore", possAnswer2: "Nicolas Flamel", possAnswer3: "Rufus Scrimgeour", possAnswer4: "Kingsley Shacklebolt", answerIndex: 2),
            
            Question(text: "What is the term for Voldemort's followers?", possAnswer1: "Wingmans", possAnswer2: "Dark Marks", possAnswer3: "Chasers", possAnswer4: "Death Eaters", answerIndex: 3),
            
            Question(text: "What Hogwarts house is Draco Malfoy in?", possAnswer1: "Slytherin", possAnswer2: "Hufflepuff", possAnswer3: "Ravenclaw", possAnswer4: "Gryffindor", answerIndex: 0),
            
            Question(text: "Where was Harry's first room at the Dursley's?", possAnswer1: "Backyard", possAnswer2: "Under the Stairs", possAnswer3: "Shed", possAnswer4: "Garage", answerIndex: 1),
            
        
        
        // update 1.2
        
            Question(text: "What is the name of Ron's pet rat?", possAnswer1: "Crookshanks", possAnswer2: "Scabbers", possAnswer3: "Hedwig", possAnswer4: "Dobby", answerIndex: 1),
        
            Question(text: "What shape is Harry Potter's scar?", possAnswer1: "Circle", possAnswer2: "Square", possAnswer3: "Lighting", possAnswer4: "A wand", answerIndex: 2),
        
            Question(text: "Up until Harry started to attend Hogwarts, what kind of room did Harry have at the Dursleys", possAnswer1: "Outdoor Cabin", possAnswer2: "A shed", possAnswer3: "A closet", possAnswer4: "A bathroom", answerIndex: 2),
        
            Question(text: "Where did Harry buy his first wand?", possAnswer1: "Olivanders", possAnswer2: "The Three Broomsticks", possAnswer3: "Honeydukes", possAnswer4: "Kings Cross", answerIndex: 0),
        
            Question(text: "Who does Hermione punch in the face during her third year?", possAnswer1: "Crab", possAnswer2: "Goyle", possAnswer3: "Harry", possAnswer4: "Malfoy", answerIndex: 3),
        
            
            Question(text: "How many tasks were in the Triwizard Tournament?", possAnswer1: "2", possAnswer2: "3", possAnswer3: "4", possAnswer4: "5", answerIndex: 1),
        
            Question(text: "In the second film, what does dobby drop on the head of the Mrs. Mason?", possAnswer1: "Potato Salad", possAnswer2: "Banana Pudding", possAnswer3: "A Cake", possAnswer4: "Oatmeal", answerIndex: 2),
        
            Question(text: "Who does Bill Weasley get married to?", possAnswer1: "Fleur Delacour", possAnswer2: "Hermione Granger", possAnswer3: "Padma Patil", possAnswer4: "Parvarti Patil", answerIndex: 0),
        
        
            Question(text: "What position does Ron play on the Quidditch team?", possAnswer1: "Seeker", possAnswer2: "Keeper", possAnswer3: "Chaser", possAnswer4: "Beater", answerIndex: 1),
        
            Question(text: "Who is Harry Potter's Godfather", possAnswer1: "Lucius Malfoy", possAnswer2: "Albus Dumbledore", possAnswer3: "Hagrid", possAnswer4: "Sirius Black", answerIndex: 3)
            
        
        
        
    ]
    
    
        
    private var mediumQuiz = [
            
            Question(text: "How old was Harry when he was first visted by Hagrid?", possAnswer1: "8", possAnswer2: "9", possAnswer3: "10", possAnswer4: "11", answerIndex: 3),
            
            Question(text: "What was the street address of the house Harry lived in with the Dursley's?", possAnswer1: "3 Privet Drive", possAnswer2: "4 Privet Drive",
                possAnswer3: "5 Privet Drive", possAnswer4: "7 Privet Drive", answerIndex: 1),
            
            Question(text: "Which of the following is NOT one of the Unforgivable Curses?", possAnswer1: "Imperius Curse", possAnswer2: "Killing Curse", possAnswer3: "Cruciatus Curse", possAnswer4: "Poisonous Curse", answerIndex: 3),
            
            Question(text: "Which Professor teaches Transfiguration at Hogwarts?", possAnswer1: "Professor Flitwick", possAnswer2: "Professor Mcgonagall", possAnswer3: "Professor Dumbledor", possAnswer4: "Professor Sprout", answerIndex: 1),
            
            Question(text: "Which Professor teaches Herbology at Hogwarts", possAnswer1: "Professor Flitwick", possAnswer2: "Professor Mcgonagall", possAnswer3: "Professor Dumbledore", possAnswer4: "Professor Sprout", answerIndex: 3),
            
            Question(text: "If you wanted to disarm another person, Which spell would you use?", possAnswer1: "Stupefy", possAnswer2: "Disarmio", possAnswer3: "Expelliarmus", possAnswer4: "Petrificus Totalus", answerIndex: 2),
            
            Question(text: "Who is Fluffy", possAnswer1: "A Giant Spider", possAnswer2: "Half Horse, Half Human", possAnswer3: "A Phoenix", possAnswer4: "A Three-Headed Dog", answerIndex: 3),
            
            Question(text: "Who created the Sorcerer's Stone", possAnswer1: "Albus Dumbledore", possAnswer2: "Harry Potter", possAnswer3: "Nicholas Flamel", possAnswer4: "Voldemort", answerIndex: 2),
            
            Question(text: "Harry Potter's Patronus is a...", possAnswer1: "Doe", possAnswer2: "Stag", possAnswer3: "Bird", possAnswer4: "Bunny", answerIndex: 1),
            
            Question(text: "What does the Cruciatus Curse do?", possAnswer1: "Torture", possAnswer2: "Kill", possAnswer3: "Control", possAnswer4: "Freeze", answerIndex: 0),
            
            Question(text: "What spell would you use against a Dementor?", possAnswer1: "Petrificus Totalus", possAnswer2: "Reducto", possAnswer3: "Expelliarmus", possAnswer4: "Expecto Patronum", answerIndex: 3),
            
            Question(text: "Which spell would you use to wipe someone's memory?", possAnswer1: "Lumos", possAnswer2: "Sectumsempra", possAnswer3: "Obliviate", possAnswer4: "Accio", answerIndex: 2),
            
            Question(text: "What did Dumbledore leave Ron in his will?", possAnswer1: "A Wand", possAnswer2: "A Book", possAnswer3: "A Deluminator", possAnswer4: "A Suit", answerIndex: 2),
        
            Question(text: "What does the Imperius Curse do?", possAnswer1: "Poison", possAnswer2: "Kill", possAnswer3: "Control", possAnswer4: "Torture", answerIndex: 2),
            
            Question(text: "Who is Harry's first Crush?", possAnswer1: "Ginny Weasley", possAnswer2: "Romilda Vane", possAnswer3: "Hermione Granger", possAnswer4: "Cho Chang", answerIndex: 3),
            
            Question(text: "What is the name of the Weasley's family owl?", possAnswer1: "Errol", possAnswer2: "Hedwig", possAnswer3: "Carl", possAnswer4: "Scabbers", answerIndex: 0),
            
            Question(text: "What was James Potter nickname?", possAnswer1: "Mooney", possAnswer2: "Prongs", possAnswer3: "Padfoot", possAnswer4: "Wormtail", answerIndex: 1),
            
            Question(text: "Who was the first, petrified by the basilisk?", possAnswer1: "Colin Creevey", possAnswer2: "Hermione Granger", possAnswer3: "Mrs. Norris", possAnswer4: "Romilda Vane", answerIndex: 2),
            
            Question(text: "What is Voldemort's name?", possAnswer1: "Mundungus Fletcher", possAnswer2: "Mykew Gregorovitch", possAnswer3: "Tom Riddle", possAnswer4: "Regulus Black", answerIndex: 2),
            
            Question(text: "Where does Harry find Ravenclaw's Diadem?", possAnswer1: "The Department of Mysteries", possAnswer2: "Ravenclaw Common Room", possAnswer3: "Malfoy Manor", possAnswer4: "Room of Requirement", answerIndex: 3),
            
            
            Question(text: "What teaching position is supposedly cursed?", possAnswer1: "Potions", possAnswer2: "Defense Against the Dark Arts", possAnswer3: "Divination", possAnswer4: "History of Magic", answerIndex: 1),
            
            
            Question(text: "Where do Wizards get access to the Hogwart's Express?", possAnswer1: "Platform Nine", possAnswer2: "Platform Ten", possAnswer3: "Platform Nine and a Half", possAnswer4: "Platform Nine and Three Quarters", answerIndex: 3),
            
            Question(text: "What is the name of the Station where students aboard the Hogarts Express?", possAnswer1: "Kings Cross", possAnswer2: "Yorkshire", possAnswer3: "Wales", possAnswer4: "Buckinghamshire", answerIndex: 0),
            
            Question(text: "How many points do you get for catching the golden snitch?", possAnswer1: "250", possAnswer2: "150", possAnswer3: "350", possAnswer4: "500", answerIndex: 1),
            
            Question(text: "What spell would you use if you needed to summon an item?", possAnswer1: "Expelliarmus", possAnswer2: "Expecto Patronum", possAnswer3: "Lumos", possAnswer4: "Accio", answerIndex: 3),
        
        
        // new questions
        
            Question(text: "How does Harry travel to London after leaving the Dursley's in Prizoner of Azkaban?", possAnswer1: "Disapparated", possAnswer2: "King's Cross Station", possAnswer3: "The Knight Bus", possAnswer4: "Broom", answerIndex: 2),
            
            Question(text: "How many children do Molly and Arthur Weasley have?", possAnswer1: "4", possAnswer2: "5", possAnswer3: "6", possAnswer4: "7", answerIndex: 3),
            
            Question(text: "What was the name of Fred and George's Joke Shop", possAnswer1: "Weasley's Wizard Wheezes", possAnswer2: "Weasley's Joke Shop", possAnswer3: "Weasley's Joke Stop", possAnswer4: "Weasley's Wizards Jokes", answerIndex: 0),
            
            Question(text: "How does Harry breathe underwater in the second task of the Triwizard Tournament?", possAnswer1: "Bubble-Head Charm", possAnswer2: "Gillyweed", possAnswer3: "Scuba Suit", possAnswer4: "Breathing Charm", answerIndex: 1),
            
            Question(text: "What is Albus Dumbledore's brother's name?", possAnswer1: "Regulus", possAnswer2: "Bryan", possAnswer3: "James", possAnswer4: "Aberforth", answerIndex: 3),
            
            Question(text: "Who killed Bellatrix Lestrange?", possAnswer1: "Lord Voldemort", possAnswer2: "Albus Dumbledore", possAnswer3: "Harry Potter", possAnswer4: "Molly Weasley", answerIndex: 3),
            
            Question(text: "Who teaches Flying at Hogwarts", possAnswer1: "Professor Flitwick", possAnswer2: "Professor Mcgonagall", possAnswer3: "Professor Hooch", possAnswer4: "Professor Sprout", answerIndex: 2),
            
            Question(text: "What is the name of Dumbledore's Phoenix?", possAnswer1: "Aragog", possAnswer2: "Fawkes", possAnswer3: "Griphook", possAnswer4: "Griffin", answerIndex: 1),
            
            Question(text: "What kind of animal is Harry able to communicate with?", possAnswer1: "A Snake", possAnswer2: "A Dragon", possAnswer3: "An Owl", possAnswer4: "A Dog", answerIndex: 0),
            
            Question(text: "What kind of animal represents the Gyriffindor House?", possAnswer1: "A Hippogriff", possAnswer2: "A Snake", possAnswer3: "A Lion", possAnswer4: "An Eagle", answerIndex: 2),
            
            Question(text: "What does did Harry want to become once finishing at Hogwarts?", possAnswer1: "A Quidditch Player", possAnswer2: "An Auror", possAnswer3: "A Ministry Worker", possAnswer4: "A Professor at Hogwarts", answerIndex: 1),
            
            Question(text: "Who is the oldest of the following Weasley's", possAnswer1: "Bill", possAnswer2: "Charlie", possAnswer3: "Percy", possAnswer4: "George", answerIndex: 0),
            
            Question(text: "What spell did Hermione use to fix Harry's glasses?", possAnswer1: "Reparo", possAnswer2: "Oculus Reparo", possAnswer3: "Oculus Mendio", possAnswer4: "Mendio", answerIndex: 1),
            
            Question(text: "Who did Harry Potter take to the Yule Ball?", possAnswer1: "Cho Chang", possAnswer2: "Hermione Granger", possAnswer3: "Parvati Patil", possAnswer4: "Luna Lovegood", answerIndex: 2),
            
            Question(text: "What is the name of the poltergeist that causes trouble at Hogwarts?", possAnswer1: "Sir Nick", possAnswer2: "The Grey Lady", possAnswer3: "Fat Friar", possAnswer4: "Peeves", answerIndex: 3),
            
            Question(text: "What sort of food helps cure sadness from a Dementor?", possAnswer1: "Chocolate", possAnswer2: "Licorice", possAnswer3: "Strawberry", possAnswer4: "Apple", answerIndex: 0),
            
            Question(text: "What does Harry use to save Ron's life when he started foaming from the mouth in Slughorn's office?", possAnswer1: "A potion", possAnswer2: "A Bezoar", possAnswer3: "A Spell", possAnswer4: "An Antidote", answerIndex: 1),
            
            Question(text: "Which floor held the forbidden corridor that contained the Sorcerer's Stone?", possAnswer1: "Dungeons", possAnswer2: "First", possAnswer3: "Third", possAnswer4: "Fifth", answerIndex: 2),
            
            Question(text: "What is Ron Weasley most afraid of?", possAnswer1: "Professor Snape", possAnswer2: "Spiders", possAnswer3: "Lord Voldemort", possAnswer4: "Snakes", answerIndex: 1),
            
            Question(text: "Who tries to keep Harry from getting on the Hogwarts Express in his seond year?", possAnswer1: "Draco Malfoy", possAnswer2: "Lucius Malfoy", possAnswer3: "Dobby the House Elf", possAnswer4: "Tom Riddle", answerIndex: 2),
            
            Question(text: "What kind of careers do Hermione's parents have", possAnswer1: "Doctors", possAnswer2: "Massage Therapists", possAnswer3: "Lawyers", possAnswer4: "Dentists", answerIndex: 3),
            
            Question(text: "How many horcruxes did Voldemort create?", possAnswer1: "7", possAnswer2: "6", possAnswer3: "8", possAnswer4: "5", answerIndex: 0),
            
            
            
            // update 1.2
        
            Question(text: "In which film did Scabbers turn into Peter Pettigrew?", possAnswer1: "Prizoner of Azkaban", possAnswer2: "Goblet of Fire", possAnswer3: "Order of Phoenix", possAnswer4: "Chamer of Secrets", answerIndex: 0),
            
            Question(text: "What creature takes Dolores Umbridge off into the Forbidden Forrest?", possAnswer1: "Goats", possAnswer2: "Unicorns", possAnswer3: "Dragons", possAnswer4: "Centaurs", answerIndex: 3),
        
            Question(text: "What is the name of the Squad that Umbridge created to help her with disciplinary actions?", possAnswer1: "Prefects Squad", possAnswer2: "Inquisitorial Squad", possAnswer3: "Slytherin Squad", possAnswer4: "Disciplinary Squad", answerIndex: 1),
        
            Question(text: "In which year did harry first visit Hogsmeade?", possAnswer1: "1", possAnswer2: "2", possAnswer3: "3", possAnswer4: "4", answerIndex: 2),
            
            Question(text: "What came onto the train to look for Sirius Black during Harry's third year?", possAnswer1: "A Dementor", possAnswer2: "Death Eaters", possAnswer3: "A Grindylow", possAnswer4: "The Ministry of Magic", answerIndex: 0),
        
            Question(text: "Who erases Gilderoy Lockhart's mind when he is in the Chamber of Secrets?", possAnswer1: "Hermione", possAnswer2: "Ron", possAnswer3: "Harry", possAnswer4: "Himself", answerIndex: 3),
        
            Question(text: "What spell creates a light from a wand like a flashlight?", possAnswer1: "Lumos", possAnswer2: "Accio", possAnswer3: "Reparo", possAnswer4: "Nox", answerIndex: 0),
        
            Question(text: "Which spell does Hermione use to repair Harry's glasses in the first year?", possAnswer1: "Accio", possAnswer2: "Reducto", possAnswer3: "Occulus Reparo", possAnswer4: "Reparo Glasses", answerIndex: 2),
        
            Question(text: "What event is going on when the death eaters attack the Burrow, right before Harry, Ron, and Hermione disapparate?", possAnswer1: "An Anniversary Party", possAnswer2: "A Birthday Party", possAnswer3: "A Funeral", possAnswer4: "A wedding", answerIndex: 3),
        
            Question(text: "What is the device called that Dumbledore uses to revisit old memories?", possAnswer1: "A Portkey", possAnswer2: "A Pensieve", possAnswer3: "A Boggart", possAnswer4: "A Memorium", answerIndex: 1)
        
        
        
    ]
    
    
    
    
    private var hardQuiz = [
    
            Question(text: "If you wanted to levitate an object, which spell would you use?", possAnswer1: "Wingardium Leviosa", possAnswer2: "Reducto", possAnswer3: "Stupefy", possAnswer4: "Expelliarmus", answerIndex: 0),
            
            Question(text: "Who does Hagrid ask Harry to look after when Professor Umbridge forces him leave Hogwart's?", possAnswer1: "Fang", possAnswer2: "Aragog", possAnswer3: "Grawp", possAnswer4: "Fluffy", answerIndex: 2),
            
            Question(text: "Which of the following is NOT used as a Horcrux by Voldemort", possAnswer1: "Ravenclaw's Diadem", possAnswer2: "Syltherin's Locket", possAnswer3: "Marvolo Gaunt's Ring", possAnswer4: "Gryffindor's Sword", answerIndex: 3),
            
            Question(text: "Which Horcrux was destroyed by Voldemort?", possAnswer1: "Harry", possAnswer2: "The Locket", possAnswer3: "The Cup", possAnswer4: "Nagini the Snake", answerIndex: 0),
            
            Question(text: "What spell would you use to get into a LOCKED room?", possAnswer1: "Expelliarmus", possAnswer2: "Lumos", possAnswer3: "Wingardium Leviosa", possAnswer4: "Alohomora", answerIndex: 3),
            
            Question(text: "How old was Nicholas Flamel when he decided to destroy the Sorcerer's Stone?", possAnswer1: "147", possAnswer2: "324", possAnswer3: "665", possAnswer4: "892", answerIndex: 2),
            
            
            Question(text: "When is Harry's Birthday?", possAnswer1: "August 31st", possAnswer2: "July 31st", possAnswer3: "June 1st", possAnswer4: "June 30th", answerIndex: 1),
            
            Question(text: "Who poses as Mad Eye Moody in The Goblet of Fire?", possAnswer1: "Barty Crouch Jr", possAnswer2: "Mundungus Fletcher", possAnswer3: "Voldemort", possAnswer4: "Victor Krum", answerIndex: 0),
            
            Question(text: "Which row inside the Hall of Prophecies holds the orb that contains a prophecy about Harry and Voldemort?", possAnswer1: "77", possAnswer2: "103", possAnswer3: "97", possAnswer4: "85", answerIndex: 2),
            
            Question(text: "Which potion is known as Liquid Luck?", possAnswer1: "Essence of Dittany", possAnswer2: "Polyjuice Potion", possAnswer3: "Veritaserum", possAnswer4: "Felix Felicis", answerIndex: 3),
        
            Question(text: "What is the name of Harry Potter's oldest son?", possAnswer1: "Severus", possAnswer2: "James", possAnswer3: "Albus", possAnswer4: "Sirius", answerIndex: 1),
        
            Question(text: "What is Neville Longbottom most afraid of?", possAnswer1: "Professor Snape", possAnswer2: "Spiders", possAnswer3: "The Forbidden Forest", possAnswer4: "Voldemort", answerIndex: 0),
            
            Question(text: "Who was the original owner of the Cloak of Invisibility?", possAnswer1: "Albus Dumbledore", possAnswer2: "Harry Potter", possAnswer3: "Ignotis Peverell", possAnswer4: "Tom Riddle", answerIndex: 2),
        
            Question(text: "What was James Potter Patronous?", possAnswer1: "A Bird", possAnswer2: "A Doe", possAnswer3: "A Frog", possAnswer4: "A Stag", answerIndex: 3),
            
            Question(text: "Who bought Harry's first Broom?", possAnswer1: "Sirius", possAnswer2: "Mcgonagall", possAnswer3: "Dumbledore", possAnswer4: "Hagrid", answerIndex: 1),
            
            Question(text: "What was Hagrid getting in Knocturn alley when Harry accidentally ended up there by floo powder?", possAnswer1: "Flesh Eating Slug Repellent", possAnswer2: "Dragon's Blood", possAnswer3: "Dragon Eggs", possAnswer4: "Sorcerer's Stone", answerIndex: 0),
            
            Question(text: "After all this time..?", possAnswer1: "Never Forget", possAnswer2: "Always", possAnswer3: "I will always love her", possAnswer4: "Of course", answerIndex: 1),
            
            Question(text: "What is the name of Albus Dumbledore's sister?", possAnswer1: "Emily", possAnswer2: "Anabelle", possAnswer3: "Ariana", possAnswer4: "Fleur", answerIndex: 2),
            
            Question(text: "I open at the..", possAnswer1: "Finish", possAnswer2: "End", possAnswer3: "Final", possAnswer4: "Close", answerIndex: 3),
            
            Question(text: "What is Neville Longbottom's toad's name?", possAnswer1: "Trevor", possAnswer2: "Scabbers", possAnswer3: "Crookshanks", possAnswer4: "Hedwig", answerIndex: 0),
            
            Question(text: "What do you see in the Mirror of Erised", possAnswer1: "Dead Relatives", possAnswer2: "Dreams", possAnswer3: "Desires", possAnswer4: "The Future", answerIndex: 2),
            
            Question(text: "What is the name of the candy and sweets shop in Hogsmeade?", possAnswer1: "Hog's Head", possAnswer2: "Honeydukes", possAnswer3: "The Magic Neep", possAnswer4: "The Three Broomsticks", answerIndex: 1),
            
            Question(text: "Besides allowing you to make the Elixir of Life, what else can you use the Sorcerer's Stone for?", possAnswer1: "Turn any metal to gold", possAnswer2: "Ressurect Loved Ones", possAnswer3: "Provide Luck", possAnswer4: "Use as an andidote for anything", answerIndex: 0),
            
            Question(text: "How many Knuts are in a Sickle?", possAnswer1: "5", possAnswer2: "20", possAnswer3: "14", possAnswer4: "29", answerIndex: 3),
            
            Question(text: "How many Sickles are in a Galleon?", possAnswer1: "4", possAnswer2: "20", possAnswer3: "17", possAnswer4: "10", answerIndex: 2),
            
            // new questions
        
            
            Question(text: "What is the name of the Shrunken Head from the Knight Bus?", possAnswer1: "Errol", possAnswer2: "Dre Head", possAnswer3: "Fluffy", possAnswer4: "Stan Shunpike", answerIndex: 1),
            
            Question(text: "What is the name of the driver of the Knight Bus?", possAnswer1: "Stan Shunkpike", possAnswer2: "Ernie Prang", possAnswer3: "Charity Burbage", possAnswer4: "Ludo Bagman", answerIndex: 1),
            
            Question(text: "Which one of these teams did not compete in the Quiddich World Cup that Harry attended in the Goblet of Fire?", possAnswer1: "Ireland", possAnswer2: "Austrailia", possAnswer3: "Germany", possAnswer4: "Brazil", answerIndex: 0),
            
            Question(text: "Who was headmaster of Hogwarts when the Chamber of Secrets was opened the first time?", possAnswer1: "Professor Dumbledore", possAnswer2: "Professor Mcgonagall", possAnswer3: "Professor Black", possAnswer4: "Professor Dippet", answerIndex: 3),
            
            Question(text: "What kind of Dragon breed was Hagrid's pet Dragon?", possAnswer1: "Hungarian Horntail", possAnswer2: "Welsh Green", possAnswer3: "Norwegian Ridgeback", possAnswer4: "Chinese Fireball", answerIndex: 2),
            
            Question(text: "What kind of animal did Harry think he was in the dream of Arthur Weasley being attacked?", possAnswer1: "The Grim", possAnswer2: "A Snake", possAnswer3: "A Centaur", possAnswer4: "A Dragon", answerIndex: 1),
            
            Question(text: "What part of a Phoenix provides healing powers?", possAnswer1: "Feathers", possAnswer2: "Wings", possAnswer3: "Claws", possAnswer4: "Tears", answerIndex: 3),
            
            Question(text: "What body part does Ron leave behind during his Apparation Exam?", possAnswer1: "An Eyebrow", possAnswer2: "A Big Toe", possAnswer3: "A Pinky Finger", possAnswer4: "A fingernail", answerIndex: 0),
            
            Question(text: "In which year was Harry Potter born?", possAnswer1: "1980", possAnswer2: "1991", possAnswer3: "1985", possAnswer4: "1993", answerIndex: 0),
            
            Question(text: "What is the name of a person with no magical abilities, but has atleast one magical parent?", possAnswer1: "Muggle", possAnswer2: "MudBlood", possAnswer3: "Squib", possAnswer4: "No-Mag", answerIndex: 2),
            
            Question(text: "Who watched over Harry in Little Whinging as he grew up, although he was not aware of it?", possAnswer1: "Albus Dumbledore", possAnswer2: "Hagrid", possAnswer3: "Minerva Mcgonagall", possAnswer4: "Arabella Figg", answerIndex: 3),
            
            Question(text: "What is the name of the potion that will force the drinker to tell the truth?", possAnswer1: "Felix Felicis", possAnswer2: "Veritaserum", possAnswer3: "Amortentia", possAnswer4: "Draught of Peace", answerIndex: 1),
            
            Question(text: "What is Hermione's middle name?", possAnswer1: "Jean", possAnswer2: "Lee", possAnswer3: "Elizabeth", possAnswer4: "Arabel", answerIndex: 0),
            
            Question(text: "What is Luna Lovegood's Patronus?", possAnswer1: "Stag", possAnswer2: "Hare", possAnswer3: "Doe", possAnswer4: "Bunmy", answerIndex: 1),
            
            Question(text: "What position did Cho Chang play in Quidditch?", possAnswer1: "Beater", possAnswer2: "Keeper", possAnswer3: "Seeker", possAnswer4: "Chaser", answerIndex: 2),
            
            Question(text: "What is the name of the spell that causes buzzing in the ears?", possAnswer1: "Morsmordre", possAnswer2: "Silencio", possAnswer3: "Buzzicio", possAnswer4: "Muffliato", answerIndex: 3),
            
            Question(text: "What was Voldemort's Mother's maiden name?", possAnswer1: "Gaunt", possAnswer2: "Slytherin", possAnswer3: "Malfoy", possAnswer4: "Morfin", answerIndex: 0),
            
            Question(text: "What is the name of the North American School of Magic?", possAnswer1: "Beauxbatons", possAnswer2: "Ilvermony", possAnswer3: "Durmstrang", possAnswer4: "Castelobruxo", answerIndex: 1),
            
            Question(text: "What did Dumbledore set on fire to prove to Tom Riddle that he was a Wizard", possAnswer1: "A Field", possAnswer2: "A Tree", possAnswer3: "A Wardrobe", possAnswer4: "A Chair", answerIndex: 2),
            
            
            // update 1.2
        
        
            Question(text: "According to Luna Lovegood, who are the only ones that can see Thestrals?", possAnswer1: "Underage Wizards", possAnswer2: "People who have seen Death", possAnswer3: "Ghosts", possAnswer4: "Nargles", answerIndex: 1),
            
        
            Question(text: "Who tells Harry that will be the first to dance at the Yule Ball?", possAnswer1: "Dumbledore", possAnswer2: "Snape", possAnswer3: "Hermione", possAnswer4: "Mcgonagall", answerIndex: 3),
        
            Question(text: "What is the spell to send the Dark Mark in the sky?", possAnswer1: "Morsmordre", possAnswer2: "Muffliato", possAnswer3: "Molliare", possAnswer4: "Prior Incantato", answerIndex: 0),
        
            Question(text: "If you wanted an object to repel water, which spell would you use?", possAnswer1: "Immobulus", possAnswer2: "Ebublio", possAnswer3: "Impervius", possAnswer4: "Carpe Retractum", answerIndex: 2),
        
            
            Question(text: "What color does Ron try to turn Scabbers on the train in his first year?", possAnswer1: "Blue", possAnswer2: "Yellow", possAnswer3: "Green", possAnswer4: "Purple", answerIndex: 1),
        
            
            Question(text: "How many different ingredients does polyjuice potion contain", possAnswer1: "4", possAnswer2: "5", possAnswer3: "6", possAnswer4: "7", answerIndex: 3),
        
            Question(text: "What is the hand movement for Wingardium Leviosa", possAnswer1: "Swish and Flick", possAnswer2: "Circular movement", possAnswer3: "Square movement", possAnswer4: "Up and Down", answerIndex: 0),
            
                
            Question(text: "Where did Snape grow up as a kid?", possAnswer1: "Godrick's Hollow", possAnswer2: "Hogwarts", possAnswer3: "Spinner's End", possAnswer4: "London", answerIndex: 2),
        
            Question(text: "Who bit Remus Lupin and turned him into a werewolf?", possAnswer1: "Voldemort", possAnswer2: "Fenir Greyback", possAnswer3: "Silas Danso", possAnswer4: "Randal Barric", answerIndex: 1),
        
            Question(text: "What does the spell Defodio do?", possAnswer1: "To cause the target confusion", possAnswer2: "To defend another spell", possAnswer3: "To create certain foods", possAnswer4: "To gouge out portion of earth or stone", answerIndex: 3)
    
    ]
    
}

