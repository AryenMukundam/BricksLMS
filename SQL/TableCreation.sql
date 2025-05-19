CREATE TABLE subjects (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE topics (
  id INT AUTO_INCREMENT PRIMARY KEY,
  subject_id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  FOREIGN KEY (subject_id) REFERENCES subjects(id)
);


CREATE TABLE sources (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) UNIQUE NOT NULL,
  type ENUM('Book', 'PYQ', 'Teacher Notes', 'Coaching Material') NOT NULL,
  details TEXT
);

CREATE TABLE questions (
  id INT AUTO_INCREMENT PRIMARY KEY,
  topic_id INT NOT NULL,
  text TEXT NOT NULL,
  type ENUM('MCQ', 'Integer', 'Numerical') NOT NULL,
  difficulty ENUM('Easy', 'Medium', 'Hard') NOT NULL,
  correct_answer TEXT,
  explanation TEXT,
  source_id INT,
  year INT,
  FOREIGN KEY (topic_id) REFERENCES topics(id),
  FOREIGN KEY (source_id) REFERENCES sources(id)
);

CREATE TABLE options (
  id INT AUTO_INCREMENT PRIMARY KEY,
  question_id INT NOT NULL,
  label ENUM('A', 'B', 'C', 'D') NOT NULL,
  text TEXT NOT NULL,
  FOREIGN KEY (question_id) REFERENCES questions(id)
);















INSERT INTO sources (name, type, details)
VALUES ('Concepts of Physics - H.C. Verma Volume 2', 'Book', 'HCV Volume 2 covers Class 12 Physics chapters like Electrostatics, Magnetism, EMI, etc.');














INSERT INTO subjects (name) VALUES ('Physics');
INSERT INTO subjects (name) VALUES ('Chemistry');
INSERT INTO subjects (name) VALUES ('Mathematics');








INSERT INTO topics (subject_id, name) VALUES
(1, 'Electrostatics'),
(1, 'Current Electricity'),
(1, 'Magnetic Effects of Current'),
(1, 'Electromagnetic Induction'),
(1, 'Alternating Current'),
(1, 'Electromagnetic Waves'),
(1, 'Ray Optics'),
(1, 'Wave Optics'),
(1, 'Dual Nature of Matter and Radiation'),
(1, 'Atoms'),
(1, 'Nuclei'),
(1, 'Semiconductors');









INSERT INTO topics (subject_id, name) VALUES
(2, 'Basic Concepts of Chemistry'),
(2, 'Structure of Atom'),
(2, 'Periodic Table and Periodicity'),
(2, 'Chemical Bonding'),
(2, 'States of Matter'),
(2, 'Thermodynamics'),
(2, 'Equilibrium'),
(2, 'Redox Reactions'),
(2, 'Electrochemistry'),
(2, 'Chemical Kinetics'),
(2, 'Surface Chemistry'),
(2, 'Solutions'),
(2, 'Hydrogen'),
(2, 'The s-Block Elements'),
(2, 'The p-Block Elements'),
(2, 'The d- and f-Block Elements'),
(2, 'Coordination Compounds'),
(2, 'Haloalkanes and Haloarenes'),
(2, 'Alcohols, Phenols and Ethers'),
(2, 'Aldehydes, Ketones and Carboxylic Acids'),
(2, 'Organic Compounds Containing Nitrogen'),
(2, 'Biomolecules'),
(2, 'Chemistry in Everyday Life');






