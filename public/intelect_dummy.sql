USE intelect;

DELETE FROM election;
ALTER TABLE election AUTO_INCREMENT = 1;
DELETE FROM election_election_group;
DELETE FROM vote;
ALTER TABLE vote AUTO_INCREMENT = 1;
DELETE FROM token;
DELETE FROM election_group;
ALTER TABLE election_group AUTO_INCREMENT = 1;
DELETE FROM user;
ALTER TABLE user AUTO_INCREMENT = 1;
DELETE FROM candidate;
ALTER TABLE candidate AUTO_INCREMENT = 1;


INSERT INTO user(username, password, type) VALUES
("admin", "$2y$10$3bFcjL2YZ8J1YcW.9QJ5Ze7KyMHERKtKymFXLVf7AJXnTVuvLrGj6", 1),
("lehrer1", "$2y$10$YuB2Ae.0UXaIlLrmolIlvu4PP8ubYdD6c2tFNSyk4rvCISwDnIm3a", 0),
("lehrer2", "$2y$10$g1VIP2vxymolR4WjEFzmVOdXtfMezmPMtQE8Byl6tZPqZ1geLG/uO", 0);

INSERT INTO election(name, description, type) VALUES
("Schulsprecherwahl HTL Krems", "Die offizielle Wahl zum Schulsprecher der HTL Krems.", 1);

INSERT INTO election_group(name, member_count, user_id) VALUES
("1AHIT", 30, 2),
("2AHIT", 15, 3);

INSERT INTO election_election_group(election_id, election_group_id) VALUES
(1, 1),
(1, 2);

INSERT INTO candidate(name, party, description, verified, election_id) VALUES
("Hans Moser", "3BTTHD", "Mehr Hans Moser Filme in der HTL!",1, 1),
("Charlie Chapplin", "3AHIT", "Mehr Charlie Chapplin Filme in der HTL!",1, 1),
("Stanly Kubrik", "6YBKT", "Mehr Kubrik Filme in der HTL!",1, 1);

INSERT INTO vote(points, election_group_id, candidate_id) VALUES
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(6, 1, 1),
(5, 1, 2),
(4, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3);