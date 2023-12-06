
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
    zipcode INTEGER,
    date DATE,
    rent DECIMAL
);

CREATE INDEX idx_geometries_geom_gist ON zipcode USING gist (geometry)
