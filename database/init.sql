CREATE TABLE posts(
 id SERIAL PRIMARY KEY,
 title VARCHAR (100) NOT NULL,
 image_posts VARCHAR (100)  NOT NULL, 
 descriptionShort TEXT  NOT NULL,
 descriptionLong TEXT  NOT NULL, 
 date DATE  NOT NULL,  
 author INT  NOT NULL, 
 rating FLOAT NOT NULL,
 video VARCHAR (500)  NOT NULL 
 );

CREATE TABLE authors(
 id SERIAL PRIMARY KEY,
 name VARCHAR (50) NOT NULL,
 image_authors VARCHAR (100)  NOT NULL,
 email VARCHAR (100)  NOT NULL,
 description TEXT NOT NULL);

/* Constraint relating posts and authors, the 2 tables are connected */

 ALTER TABLE posts 
 ADD FOREIGN KEY (author)
 REFERENCES authors (id);


/* For dopping previous tables in elephantSQL */
 DROP TABLE IF EXISTS posts; DROP TABLE IF EXISTS authors


 /* Injecting some authors and posts */

 INSERT INTO authors (name, image_authors, email, description) VALUES
('Mike the lizzards-lover ','mike.jpg','mike@gmail.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.'),
('André the ocean-expert','andre.jpg','andre@gmail.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.'),
('Gustavo the enthusiast','gus.jpg','gus@gmail.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.'),
('Barbara','barbara.jpg','barbara@gmail.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.');


INSERT INTO posts (title, image_posts, descriptionShort, descriptionLong, date, author, rating, video) VALUES
('Patagonian Mara',
'pataganonianMara.jpg',
'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
'<p class="card-text"><p>The Mara is one of the largest rodents in the world, with an astounding average weight of 8kg (10 lb.) and reaching a maximum of 16 Kg (21 lb.). Although it is big and heavy this rodent is extremely fast and agile when faced with danger. Its long and powerful legs give the Mara all the speed and aerial jumps it needs to run from predators, reaching speeds of up to 70 km/h (43 mi/h).
Maras are endemic to Argentina, but is found all over the Chilean side of Patagonia nonetheless. They''re completely herbivorous, feeding on grasses and herbs. Within the park they are the preyed by mountain lions, eagles, foxes and other flying predators. It has the ability of living without consuming water thanks to their metabolism and diet.</p><p>Watch here - <a href="https://www.youtube.com/watch?v=GyGvf9Unm2o">Patagonian Mara</a></p> </p>',
'2022-05-16',
2,
3.9,
'https://www.youtube.com/embed/GyGvf9Unm2o'
),
('Proboscis Monkey',
 'ProboscisMonkey.jpg',
 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
 '<p class="card-text"><p>These weird animals earned the name Proboscis from their bulbous noses, which can grow up to 7 inches long.
Though they may appear odd to us, they also prove that beauty is in the eye of the beholder. Because Proboscis Monkey males actually use their ginormous noses to attract female mates. 
Found in the jungles of Borneo (including the Kabili-Sepilok Forest Reserve), these monkeys are largely arboreal. spending most of their time in the trees. But, surprisingly, they are extremely strong swimmers as well. 
Due to palm oil deforestation and other forms of habitat destruction, their populations have declined sharply in recent years. So the species is currently listed as endangered on the IUCN Red list.
<a href="https://www.youtube.com/watch?v=GyGvf9Unm2o">Patagonian Mara</a></p> </p>',
'2022-05-18',
1,
4.1,
'https://www.youtube.com/embed/JDYstx7znOc'
),
('Mantis shrimp',
'Mantisshrimp.jpg',
'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. ',
'<p class="card-text">Located in the Indian and tropical western Pacific oceans, the peacock mantis shrimp might look harmful, but it actually packs a mean punch. According to Oceana, the international ocean preservation advocacy group, its punch is one of the fastest movements in the animal kingdom.
In fact, its 50-mph (80 Kmh) punch has been likened to the acceleration of a bullet from a gun, so it would almost definitely be strong enough to break the glass wall of an aquarium! However, they only unleash this strength when trying to break open their preferred food: molluscs and crabs.
Watch here - Mantis Shrimp<a href="https://www.youtube.com/watch?v=GyGvf9Unm2o">Patagonian Mara</a></p> </p>',
'2022-05-20',
3,
4.3,
'https://www.youtube.com/embed/E0Li1k5hGBE'
),
('Frill-Necked Lizard',
'Frill-NeckedLizard.jpg',
'The strike is one of the fastest limb movements in the animal kingdom”, says Patek. “It’s especially impressive considering the substantial drag imposed by water.',
'<p class="card-text">The frilled lizard (Chlamydosaurus kingii), also known commonly as the frill-necked lizard, frilled dragon or frilled agama, is a species of lizard in the family Agamidae. It is endemic to northern Australia and southern New Guinea. This species is the only member of the genus Chlamydosaurus.
Its common names come from the large frill around its neck, which usually stays folded against the lizard''s body. C. kingii is largely arboreal, spending the majority of its time in the trees. Its diet consists mainly of insects and small vertebrates. Frill-necked lizards, or ''frillies'' as some call them, will occasionally eat plants as well, although this behaviour is uncommon. It is a relatively large lizard, averaging 85 cm (2.79 ft) in total length (including tail) and is kept as an exotic pet.
<a href="https://www.youtube.com/watch?v=GyGvf9Unm2o">Patagonian Mara</a></p> </p>',
'2022-05-17',
1,
4.4,
'https://www.youtube.com/embed/rLY2gNiOFzk'
),
('Thorny devil',
'Thornydevil.jpg',
'These lizards feature a spiny "false head" on the back of their neck, which they present to potential predators by dipping their real head. The "false head" is made of soft tissue',
'<p class="card-text">The thorny devil was first described by the biologist John Edward Gray in 1841. While it is the only species contained in the genus Moloch, many taxonomists suspect another species might remain to be found in the wild.[2] The thorny devil is only distantly related to the morphologically similar North American horned lizards of the genus Phrynosoma. This similarity is usually thought of as an example of convergent evolution.
The names given to this lizard reflect its appearance: the two large horned scales on its head complete the illusion of a dragon or devil. The name Moloch was used for a deity of the ancient Near East, usually depicted as a hideous beast.[3] The thorny devil also has other nicknames people have given it such as the "devil lizard", "horned lizard", and the "thorny toad".[4]
<a href="https://www.youtube.com/watch?v=GyGvf9Unm2o">Patagonian Mara</a></p> </p>',
'2022-05-10',
3,
4.5,
'https://www.youtube.com/embed/9CQ_ZJtqgxw'
),
('Tawny Frogmouth',
'TawnyFrogmouth.jpg',
'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. ',
'The Tawny Frogmouth is an enigmatic bird of the night, difficult to find in daytime, typically well camouflaged amongst the branches of a tree, imitating a broken tree branch or loose piece of bark. They hunt at night, preferring to eat nocturnal insects, worms, snails, and slugs.The Tawny Frogmouth resembles an owl but isnt one. Unlike an owl, it has no talons, and its feet are considered weak. Its distinctive flattened facial structure classifies it as a frogmouth.
They are found throughout Australia, including Tasmania.Watch here -  Tawny Frogmouth in nature',
'2022-05-19',
3,
4.2,
'https://www.youtube.com/embed/5BFM0pKjUbI'
),
('Blobfish',
'Blobfish.jpg',
'the blobfish is not a great swimmer: it is not very fast and therefore prefers prey that are immobile or slower than it. It is an opportunistic predator, that is to say, it eats whatever it happens to catch. They eat primarily pennatules, sea snails, ',
'Blobfish are typically shorter than 30 cm (12 in). They live at depths between 600 and 1,200 m (2,000 and 3,900 ft), where the pressure is 60 to 120 times greater than that at sea level, which would likely make gas bladders inefficient for maintaining buoyancy.[2] Instead, the flesh of the blobfish is primarily a gelatinous mass with a density slightly less than that of water; this allows the fish to float above the sea floor without expending energy on swimming. The blobfish has a relative lack of muscle, but this is not a disadvantage, as its main food source is edible matter that floats in front of it, such as deep-ocean crustaceans.[3]
Blobfish are often caught as bycatch in bottom trawling nets.
The popular impression of the blobfish as bulbous and gelatinous is partially an artifact of the decompression damage done to specimens when they are brought to the surface from the extreme depths in which they live.[4] In their natural environment, blobfish appear more typical for their superclass Osteichthyes (bony fish).
',
'2021-12-05',
1,
3.7,
'https://www.youtube.com/embed/f_hNzjFCQFg'
),
('Red-Lipped Batfish',
'Red-LippedBatfish.jpg',
'is a poor swimmer, but modified fins act as makeshift legs, helping it to ‘walk’ along the sand. Well, it’s more of a froggy waddle, but when a little more speed is required, the batfish can push off with the ‘pelvic’ fins beneath its body…',
'The red-lipped batfish flaunts its outrageous scarlet pout with all the charisma of a 1980s goth frontman. No one knows exactly why the batfish sports its signature look, but it may help it to attract mates, or to recognise others of the same species at spawning (reproduction) sites.
The red-lipped batfish lives at depths of up to 75 metres in the waters surrounding the Galápagos Islands, where it is adapted to life as a bottom dweller, living and feeding on the seafloor. It is a poor swimmer, but modified fins act as makeshift legs, helping it to ‘walk’ along the sand. Well, it’s more of a froggy waddle, but when a little more speed is required, the batfish can push off with the ‘pelvic’ fins beneath its body and use its muscular tail to propel itself through the water.
The fish also sports a fleshy appendage on the top of its head called an illicium, which contains a chemical-emitting lure that’s thought to help it attract the small fish and invertebrates on which it feeds. This fish is enigmatic, it’s eccentric, and with no known predators, we should be able to enjoy its Instagram-worthy pout for some time to come
The red-lipped batfish (Ogcocephalus Darwin), also known as the Galapagos batfish, actually has red lips, as its name suggests, and legitimately looks like a person. Scientists believe that the lips enhance its recognition during spawning. It can be found around the Galapagos Islands, typically doesn’t grow longer than a foot, and feeds on other small fish and crustaceans. The way it’s built allows it to sit and even walk, like a human, and that, along with its indifferent facial expression, makes for a pretty hilarious image. Check out the video at the end of the article to see it in action...',
'2021-05-19',
2,
4.2,
'https://www.youtube.com/embed/JuMGmS32YvY'
),
('Shoebill',
'Shoebill.jpg',
'Sound terrifying? Yeah, it is. But it’s also impossible not to be impressed by these giants. Shoebills have been a beloved species for a long time. They appear in the artwork of the ancient Egyptians. ',
'Of all the possible names, how on earth is it called the Shoebill? “Monsterface” would be better. Or “Death Pelican.” Or “Literally the Most Frightening Bird On Earth.”
Though I don’t think I’d go anywhere near one, humans don’t have to worry. Shoebills, which live in the swamps of eastern tropical Africa, are after smaller prey. But only slightly smaller. They eat big fish like lungfish, eels, and catfish, and also crazy stuff like Nile monitor lizards, snakes, and baby crocodiles. This bird eats crocodiles!
And they hunt like total bosses of the swamp. The Shoebill will stand there, motionless as a statue, and wait for some poor lungfish or baby crocodile to swim by. Then the bird will pounce forward, all five feet of it, with its massive bill wide open, engulfing its target along with water, mud, vegetation, and probably any other hapless fish minding their own business. Clamping down on its prey, the bird will start to swing its massive head back and forth, tipping out whatever stuff it doesn’t want to eat. When there’s nothing but lungfish or crocodile left, the Shoebill will give it a quick decapitation with the sharp edges of the bill (because of course it does) and swallow away.
Watch here - Scary ShoeBill',
'2021-12-15',
4,
4.6,
'https://www.youtube.com/embed/noF-CLNSUZU'
),
('Japanese Spider Crab',
'JapaneseSpiderCrab.jpg',
'mostly found off the southern coasts of the Japanese island of Honshū, from Tokyo Bay to Kagoshima Prefecture. Outlying populations have been found in Iwate Prefecture and off Su-ao in Taiwan.[3] Adults are found at depths between 50 and 600 m',
'The Japanesespidercrabhasthegreatest leg span ofanyarthropod, reachingupto 3.7 m (12.1 ft) fromclawtoclaw.[6] The bodymaygrowto 40 cm (16 in) in carapace width and thewholecrabcanweighupto 19 kg (42 lb)[7]—second in massonlytothe American lobster among all livingarthropodspecies. The maleshavethelonger chelipeds;[4] femaleshavemuchshorterchelipeds, whichareshorterthanthefollowing pair oflegs.[3] Apart fromitsoutstandingsize, theJapanesespidercrabdiffersfromothercrabs in a numberofways. The first pleopods ofmalesareunusuallytwisted, and the larvae appear primitive.[1] The crabis orange withwhitespotsalongthelegs.[8] Itisreportedtohave a gentledispositiondespiteitsferociousappearance.[8] The Japanesenameforthisspeciesis taka-ashi-gani, (Japanese: たかあしがに), literallytranslatingto “talllegscrab.” It also has a uniquemoltingbehaviorthatoccursforabout 100 minutes, in whichthecrab loses itsmobility and startsmoltingitscarapacerear and endswithmoltingitswalkinglegs.[9] Itsarmoredexoskeletonhelpsprotectitfrom larger predators such asoctopuses, but also usescamouflage. The crab''sbumpycarapaceblendsintotherockyoceanfloor. Tofurtherthedeception, a spidercrabadornsitsshellwithsponges and otheranimals.[10] The way in which a spidercrabsisableto pick up and coveritselfwith such organismsisbyfollowing a specificroutinebehavior. Upon pickinguptheobjectwiththecrab''sslenderchelipeds, thechelaeareusedtotwist and tear off theorganism, such as a wormtubeorsponge, fromthesubstrate on whichitcurrentlyresides.[11] Unlikeotherspeciesofcrab, such astheChileancrab Acanthonyxpetiveri, theJapanesespidercrabdoes not specificallylookformatchingcolorstoblendintoitsenvironment; itsimplycamouflages in a waythatdisguisesitsentirestructure.This ismostlikelybecauseJapanesespidercrabsarenocturnallyactive, so insteadoftryingtodisguisethemselveswhencatchingprey, theyareactually just tryingtoavoidpredators at night.Oncethe material ispickedup, itisbroughttothecrab''smouthpartstospecificallyorient and shapeitbeforeitisattachedtotheexoskeleton. Then, throughmechanicaladhesion and secretions, thematerialsattachtothecrab, and areabletoregenerate, and colonize on thecrab.',
'2021-05-12',
3,
3.8,
'https://www.youtube.com/embed/czloebyuINI')
;