DROP TABLE IF EXISTS `user`;
DROP TABLE IF EXISTS `role`;
DROP TABLE IF EXISTS `user_role`;
DROP TABLE IF EXISTS `role_permission`;
DROP TABLE IF EXISTS `permission`;
DROP TABLE IF EXISTS `comment`;
DROP TABLE IF EXISTS `post`;

CREATE TABLE user
(
    `user_id`  bigint(11)   not null primary key auto_increment,
    `username` varchar(40)  not null,
    `password` varchar(255) not null
);
CREATE TABLE role
(
    `role_id` bigint(11)   not null primary key auto_increment,
    `name`    varchar(255) not null
);
CREATE TABLE `user_role`
(
    `user_id` bigint(11) NOT NULL,
    `role_id` bigint(11) NOT NULL
);
CREATE TABLE `role_permission`
(
    `role_id`       bigint(11) NOT NULL,
    `permission_id` bigint(11) NOT NULL
);
CREATE TABLE `permission`
(
    `permission_id` bigint(11)   not null primary key auto_increment,
    `url`           varchar(255) not null,
    `name`          varchar(255) not null,
    `description` varchar(255) NULL
);
CREATE TABLE comment
(
    comment_id bigint(11) not null primary key auto_increment,
    post_id    bigint(11) not null,
    user_id    int(4)     not null,
    content    text(500)  not null
);
CREATE TABLE post
(
    post_id bigint(11)  not null primary key auto_increment,
    title   varchar(40) not null,
    user_id bigint(11)  not null
);


INSERT INTO role (role_id, name)
VALUES (1, 'USER');
INSERT INTO role (role_id, name)
VALUES (2, 'ADMIN');
INSERT INTO role (role_id, name)
VALUES (3, 'GUEST');

INSERT INTO permission (permission_id, url, name)
VALUES (1, '/user/login', 'anon');
INSERT INTO permission (permission_id, url, name)
VALUES (2, '/user/register', 'anon');
INSERT INTO permission (permission_id, url, name)
VALUES (3, '/user/test', 'user');
INSERT INTO permission (permission_id, url, name)
VALUES (4, '/user/admin', 'admin');


INSERT INTO role_permission (role_id, permission_id)
VALUES (1, 1);
INSERT INTO role_permission (role_id, permission_id)
VALUES (1, 2);
INSERT INTO role_permission (role_id, permission_id)
VALUES (1, 3);
INSERT INTO role_permission (role_id, permission_id)
VALUES (1, 4);

INSERT INTO role_permission (role_id, permission_id)
VALUES (3, 1);
INSERT INTO role_permission (role_id, permission_id)
VALUES (3, 2);
