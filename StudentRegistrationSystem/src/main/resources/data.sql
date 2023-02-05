
insert into student (id, first_name, last_name, course, country) 
values (1, 'Suresh', 'Reddy', 'B.Tech', 'India');
insert into student (id, first_name, last_name, course, country)
 values (2, 'Murali', 'Mohan', 'B.Arch', 'Canada');
insert into student (id, first_name, last_name, course, country) 
values (3, 'Daniel', 'Denson', 'B.Tech', 'New Zealand');
insert into student (id, first_name, last_name, course, country) 
values (4, 'Tanya', 'Gupta', 'B.Com', 'USA');


insert into roles (role_id, name) values (1, 'USER');
insert into roles (role_id, name) values (2, 'ADMIN');

insert into users (user_id, username, password) values (
1, 'varun', '$2a$12$D6d7GmnJJhJfF3Rw9BCeBue4R3jPNutTUeixn15MsiSKkKV2nF592');
insert into users (user_id, username, password) values (
2, 'sanjay', '$2a$12$D6d7GmnJJhJfF3Rw9BCeBue4R3jPNutTUeixn15MsiSKkKV2nF592');

insert into users_roles (user_id, role_id) values (
(select user_id from users where username = 'varun'),
(select role_id from roles where name = 'ADMIN')
);


insert into users_roles (user_id, role_id) values (
(select user_id from users where username = 'sanjay'),
(select role_id from roles where name = 'USER')
);



