CREATE TABLE posts(
 id SERIAL PRIMARY KEY,
 title VARCHAR (100) NOT NULL,
 image VARCHAR (100)  NOT NULL, 
 descriptionShort TEXT  NOT NULL,
 descriptionLong TEXT  NOT NULL, 
 date DATE  NOT NULL,  
 author_id INT  NOT NULL, 
 rating FLOAT NOT NULL,
 video VARCHAR (500)  NOT NULL 
 );

CREATE TABLE authors(
 id SERIAL PRIMARY KEY,
 name VARCHAR (50) NOT NULL,
 image VARCHAR (100)  NOT NULL,
 email VARCHAR (100)  NOT NULL,
 description TEXT NOT NULL);

/* Constraint relating posts and authors, the 2 tables are connected */

 ALTER TABLE posts 
 ADD FOREIGN KEY (author_id)
 REFERENCES authors (id);


/* For dopping previous tables in elephantSQL */
 DROP TABLE IF EXISTS posts; DROP TABLE IF EXISTS authors


 /* Injecting some authors and posts */

 INSERT INTO authors (name, image, email, description) VALUES
('Mike the lizzards-lover ','mike.jpg','mike@gmail.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.'),

('Barbara','barbara.jpg','barbara@gmail.com', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.');


INSERT INTO posts (title, image, descriptionShort, descriptionLong, date, author_id, rating, video) VALUES
('Patagonian Mara',
'pataganonianMara.jpg',
'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
'<p class="card-text"><p>The Mara is one of the largest rodents in the world, with an astounding average weight of 8kg (10 lb.) and reaching a maximum of 16 Kg (21 lb.). Although it is big and heavy this rodent is extremely fast and agile when faced with danger. Its long and powerful legs give the Mara all the speed and aerial jumps it needs to run from predators, reaching speeds of up to 70 km/h (43 mi/h).

Maras are endemic to Argentina, but is found all over the Chilean side of Patagonia nonetheless. They''re completely herbivorous, feeding on grasses and herbs. Within the park they are the preyed by mountain lions, eagles, foxes and other flying predators. It has the ability of living without consuming water thanks to their metabolism and diet.</p><p>Watch here - <a href="https://www.youtube.com/watch?v=GyGvf9Unm2o">Patagonian Mara</a></p> </p>',
'2022-05-16',
2,
3.9,
'https://www.youtube.com/embed/GyGvf9Unm2o'
);