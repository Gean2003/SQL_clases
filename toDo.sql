CREATE TABLE "toDo" (
  "id" int PRIMARY KEY,
  "title_task" varchar,
  "complete" bool,
  "description" varchar
);

insert into "toDo"  (id, title_task, complete, description) values (3,'Mejorar logica de programacion', true, 'hacer Lose ejerciciso de leetcode')
insert into "toDo"  (id, title_task, complete, description) values (4,'Cenar', true, 'Tienes qie alimentarte')

select * from "toDo";

select id, title_task, description from "toDo" where  complete = true
