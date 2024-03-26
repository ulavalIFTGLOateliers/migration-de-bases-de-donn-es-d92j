CREATE TABLE IF NOT EXISTS band (
                                    bandName varchar(50),
                                    creation YEAR,
                                    genre varchar(50),
                                    PRIMARY KEY (bandName)
);

ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician
    ADD COLUMN role varchar(50),
    ADD COLUMN bandName varchar(50);

UPDATE musician SET role = 'vocals', bandName = 'Crazy Duo' WHERE singerName = 'Alina';
UPDATE musician SET role = 'guitar', bandName = 'Mysterio' WHERE singerName = 'Mysterio';
UPDATE musician SET role = 'percussion', bandName = 'Crazy Duo' WHERE singerName = 'Rainbow';
UPDATE musician SET role = 'piano', bandName = 'Luna' WHERE singerName = 'Luna';

INSERT INTO band (bandName, creation, genre) VALUES
                                                 ("Crazy Duo", 2015, "rock"),
                                                 ("Luna", 2009, "classical"),
                                                 ("Mysterio", 2019, "pop");
