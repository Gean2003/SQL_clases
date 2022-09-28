CREATE TABLE "Users" (
  "id_users" uuid PRIMARY KEY,
  "name_users" varchar UNIQUE NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "age_user" int,
  "password_user" varchar UNIQUE NOT NULL
);

CREATE TABLE "Courses" (
  "id_course" int PRIMARY KEY,
  "title_course" varchar,
  "description_course" varchar,
  "level_course" varchar,
  "teacher_course" varchar,
  "user_id" uuid
);

CREATE TABLE "Course_video" (
  "course_video_id" int PRIMARY KEY,
  "course_video_title" varchar NOT NULL,
  "course_video_url" varchar UNIQUE,
  "id_course" int
);

CREATE TABLE "Categories" (
  "id_category" int primary KEY,
  "name_categories" varchar,
  "id_course" int
);

CREATE TABLE "Role" (
  "id_role" int primary KEY,
  "name_role" varchar,
  "user_id" uuid
);

ALTER TABLE "Courses" ADD FOREIGN KEY ("user_id") REFERENCES "Users" ("id_users");

ALTER TABLE "Course_video" ADD FOREIGN KEY ("id_course") REFERENCES "Courses" ("id_course");

ALTER TABLE "Role" ADD FOREIGN KEY ("user_id") REFERENCES "Users" ("id_users");

ALTER TABLE "Categories" ADD FOREIGN KEY ("id_course") REFERENCES "Courses" ("id_course");



insert into "Users" (
id_users,
name_users,
email,
age_user,
password_user
)values(
'80f041f7-0db3-44a0-a34e-504f37517bff',
'Gean',
'gean1mail.com',
18,
'gean1234'
);

insert into "Users" (
id_users,
name_users,
email,
age_user,
password_user
)values(
'f6ea8ef9-4d51-4481-b4ef-b91529df37ab',
'Carlos',
'carlos2mail.com',
20,
'carlos123a'
);

insert into "Users" (
id_users,
name_users,
email,
age_user,
password_user
)values(
'42db338b-c484-4100-ae89-fc0d8863697a',
'Ricardo',
'ricardo3@mail.com',
23,
'ricardo1a23'
);

insert into "Role" (
id_role,
name_role ,
user_id 
)values(
1,
'estudent',
'80f041f7-0db3-44a0-a34e-504f37517bff'
);

insert into "Role" (
id_role,
name_role ,
user_id 
)values(
2,
'teacher',
'f6ea8ef9-4d51-4481-b4ef-b91529df37ab'
);

insert into "Role" (
id_role,
name_role ,
user_id 
)values(
3,
'admin',
'42db338b-c484-4100-ae89-fc0d8863697a'
);

insert into "Courses"  (
id_course,
title_course ,
description_course ,
level_course ,
teacher_course ,
user_id 
)values(
1,
'curso de react 2022',
'aprende react en en este fantastico video',
'principiante',
'Fernanando',
'80f041f7-0db3-44a0-a34e-504f37517bff'
);

insert into "Course_video" (
course_video_id,
course_video_title,
course_video_url,
id_course
)values (
1,
'primeros pasos en react',
'wwww.eqeq.com',
1
);


insert  into "Categories" (
id_category,
name_categories ,
id_course 
)values (
1,
'programacion',
1
);
