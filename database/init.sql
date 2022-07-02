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
);