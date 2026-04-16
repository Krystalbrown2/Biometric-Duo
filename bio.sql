DROP database IF EXISTS bio;
CREATE database bio;
USE bio;

CREATE TABLE profile(
    employee_id INT NOT NULL auto_increment,
    FirstName TEXT NOT NULL,
    LastName TEXT NOT NULL,
    Email TEXT NOT NULL,
    Worktitle TEXT NOT NULL,
    PRIMARY KEY (employee_id)
);

CREATE TABLE attendance(
    attendance_id INT NOT NULL auto_increment,
    employee_id INT NOT NULL,
    date Date NOT NULL,
    Clock_in_time TIME,
    Clock_out_time TIME,
    attendance_status VARCHAR(20),
    PRIMARY KEY (attendance_id),
    FOREIGN KEY (employee_id) REFERENCES profile(employee_id)
);

CREATE TABLE burnoutstatus(
    burnout_id INT NOT NULL auto_increment,
    employee_id INT NOT NULL,
    Stress_level INT,
    Fatigue_level INT,
    Mood VARCHAR(20),
    date DATE,
    PRIMARY KEY (burnout_id),
    FOREIGN KEY (employee_id) REFERENCES profile(employee_id)
);

CREATE TABLE performancemetrics(
    performance_id INT NOT NULL auto_increment,
    employee_id INT NOT NULL,
    Error_rate DECIMAL (5,2),
    Task_completion_rate DECIMAL (5,2),
    Productivity_score INT,
    Evaluation_date DATE,
    PRIMARY KEY (performance_id),
    FOREIGN KEY (employee_id) REFERENCES profile(employee_id)
);

INSERT INTO profile (FirstName, LastName, Email, Worktitle) VALUES ('Krystal', 'Brown', 'kb@gmail.com', 'Artist');

INSERT INTO profile (FirstName, LastName, Email, Worktitle) VALUES ('Sade', 'Anderson', 'sade@gmail.com', 'Developer');

INSERT INTO profile (FirstName, LastName, Email, Worktitle) VALUES ('John', 'Doe', 'john@gmail.com', 'Engineer');

INSERT INTO attendance (employee_id, date, Clock_in_time, Clock_out_time, attendance_status) VALUES (01, '2025-04-12', '09:45:00','17:00:00', 'Late');

INSERT INTO attendance (employee_id, date, Clock_in_time, Clock_out_time, attendance_status) VALUES (02, '2026-01-28', '09:15:00','17:10:00', 'Late');

INSERT INTO attendance (employee_id, date, Clock_in_time, Clock_out_time, attendance_status) VALUES (03, '2026-04-16', '08:55:00','16:45:00', 'Present');

INSERT INTO burnoutstatus (employee_id, Stress_level, Fatigue_level, Mood, date) VALUES (01, 7, 8, 'Stressed', '2025-04-12');

INSERT INTO burnoutstatus (employee_id, Stress_level, Fatigue_level, Mood, date) VALUES (02, 4, 3, 'Happy','2026-01-28');

INSERT INTO burnoutstatus (employee_id, Stress_level, Fatigue_level, Mood, date) VALUES (03, 5, 6,  'Fair','2026-04-16');

INSERT INTO performancemetrics (employee_id, Error_rate, Task_completion_rate, Productivity_score, Evaluation_date) VALUES (01, 2.50, 95.00, 8, '2025-04-12');

INSERT INTO performancemetrics (employee_id, Error_rate, Task_completion_rate, Productivity_score, Evaluation_date) VALUES (02, 5.00, 85.00, 9, '2026-01-28');

INSERT INTO performancemetrics (employee_id, Error_rate, Task_completion_rate, Productivity_score, Evaluation_date) VALUES (03, 1.00, 98.00, 9, '2026-04-16');



INSERT INTO instrumentsplayed (Musician, Instrument) VALUES (1, 'Piano');
INSERT INTO instrumentsplayed (Musician, Instrument) VALUES (2, 'Saxophone');
INSERT INTO instrumentsplayed (Musician, Instrument) VALUES (3, 'Saxophone');
