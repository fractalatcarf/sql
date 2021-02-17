CREATE TABLE `batchs` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` VARCHAR
);

CREATE TABLE `students` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `first_name` VARCHAR,
  `age` INTEGER,
  `batch_id`INTEGER
);

INSERT INTO batchs (name) values ('#558');
INSERT INTO batchs (name) values ('#496');
INSERT INTO batchs (name) values ('#430');

INSERT INTO students (first_name, age, batch_id) values ('Julien', 24, 1);
INSERT INTO students (first_name, age, batch_id) values ('Amir', 31, 1);
INSERT INTO students (first_name, age, batch_id) values ('Anne', 24, 1);
INSERT INTO students (first_name, age, batch_id) values ('Mira', 38, 1);
INSERT INTO students (first_name, age, batch_id) values ('Paul', 49, 2);
INSERT INTO students (first_name, age, batch_id) values ('Leyla', 20, 2);





