CREATE TABLE WEAVED_REQUEST (
	ID INT IDENTITY PRIMARY KEY,
	REQUEST_IDENTIFIER INT NOT NULL
);

CREATE TABLE REQUEST_STANDARD_DEVIATION (
	ID INT IDENTITY PRIMARY KEY,
	STANDARD_DEVIATION FLOAT,
	REQUEST_ID INT,
	FOREIGN KEY (REQUEST_ID) REFERENCES WEAVED_REQUEST(ID)
);


CREATE TABLE THREAD_PER_REQUEST (
	ID INT PRIMARY KEY,
	NAME VARCHAR(20) NOT NULL
);
INSERT INTO THREAD_PER_REQUEST ( ID, NAME ) VALUES ( 0, 'Zero' );
INSERT INTO THREAD_PER_REQUEST ( ID, NAME ) VALUES ( 1, 'One' );
INSERT INTO THREAD_PER_REQUEST ( ID, NAME ) VALUES ( 2, 'Two' );
INSERT INTO THREAD_PER_REQUEST ( ID, NAME ) VALUES ( 3, 'Three' );
INSERT INTO THREAD_PER_REQUEST ( ID, NAME ) VALUES ( 4, 'Four' );
INSERT INTO THREAD_PER_REQUEST ( ID, NAME ) VALUES ( 5, 'Five' );
INSERT INTO THREAD_PER_REQUEST ( ID, NAME ) VALUES ( 6, 'Six' );
INSERT INTO THREAD_PER_REQUEST ( ID, NAME ) VALUES ( 7, 'Seven' );
INSERT INTO THREAD_PER_REQUEST ( ID, NAME ) VALUES ( 8, 'Eight' );
INSERT INTO THREAD_PER_REQUEST ( ID, NAME ) VALUES ( 9, 'Nine' );
