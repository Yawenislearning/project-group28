
CREATE TABLE IF NOT EXISTS nyc_zipcode(
    id SERIAL PRIMARY KEY,
    zipcode INTEGER ,
    poname VARCHAR,
    state VARCHAR,
    county VARCHAR,
    geometry geometry(Polygon, 4326)
);


CREATE TABLE IF NOT EXISTS nyc_311(
    id SERIAL PRIMARY KEY,
    date DATE,
    zipcode INTEGER,
    complaint_type VARCHAR,
    geometry GEOMETRY(Point, 4326)
);

CREATE TABLE IF NOT EXISTS nyc_tree(
    id SERIAL PRIMARY KEY,
    zipcode INTEGER,
    spc_common VARCHAR,
    health VARCHAR,
    status VARCHAR,
    geometry GEOMETRY(Point, 4326)
);

CREATE TABLE IF NOT EXISTS zillow(
    id SERIAL PRIMARY KEY,
    zipcode INTEGER,
    date DATE,
    rent DECIMAL
);

CREATE TABLE IF NOT EXISTS nypd(
    arrest_key INTEGER PRIMARY KEY,
    arrest_date DATE,
    pd_cd TEXT ,
    pd_desc TEXT,
    age_group TEXT,
    geometry GEOMETRY(Point, 4326)
);

CREATE INDEX idx_geometries_geom_gist ON nyc_zipcode USING gist (geometry)


