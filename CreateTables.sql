CREATE TABLE Object_Definition (
    def_guid VARCHAR(50) NOT NULL,
    type VARCHAR(3) NOT NULL,
    name VARCHAR(50) NOT NULL,
    leanix_ready BIT,
    PRIMARY KEY (def_guid)
) ENGINE = InnoDB;

CREATE TABLE Model (
    mod_guid VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(1500),
    group_path VARCHAR(250) NOT NULL,
    leanix_ready BIT,
    PRIMARY KEY (mod_guid)
) ENGINE = InnoDB;

CREATE TABLE Object_Occurrence (
    id INT NOT NULL AUTO_INCREMENT,
    def_guid VARCHAR(50) NOT NULL,
    mod_guid VARCHAR(50) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (def_guid)
        REFERENCES Object_Definition(def_guid)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (mod_guid)
        REFERENCES Model(mod_guid)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE = InnoDB;

