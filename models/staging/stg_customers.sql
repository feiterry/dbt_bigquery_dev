{{ config(
    materialized='table',
    alias='customer'
) }}

with mock_data as (
    select 1 as id, 'Smith' as last_name, 'John' as first_name, '123 Magnolia Lane' as street_address, 'Austin' as city, 'TX' as state, 'USA' as country, 'john.smith@example.com' as email, '512-555-0101' as phone union all
    select 2 as id, 'Johnson' as last_name, 'Emily' as first_name, '456 Oak Ave' as street_address, 'Columbus' as city, 'OH' as state, 'USA' as country, 'emily.j@example.com' as email, '614-555-0102' as phone union all
    select 3 as id, 'Williams' as last_name, 'Michael' as first_name, '789 Pine Rd' as street_address, 'Phoenix' as city, 'AZ' as state, 'USA' as country, 'mwilliams@example.com' as email, '602-555-0103' as phone union all
    select 4 as id, 'Brown' as last_name, 'Jessica' as first_name, '101 Maple St' as street_address, 'Atlanta' as city, 'GA' as state, 'USA' as country, 'jess.brown@example.com' as email, '404-555-0104' as phone union all
    select 5 as id, 'Jones' as last_name, 'David' as first_name, '202 Birch Blvd' as street_address, 'Seattle' as city, 'WA' as state, 'USA' as country, 'djones@example.com' as email, '206-555-0105' as phone union all
    select 6 as id, 'Miller' as last_name, 'Sarah' as first_name, '303 Cedar Ct' as street_address, 'Denver' as city, 'CO' as state, 'USA' as country, 'sarah.m@example.com' as email, '303-555-0106' as phone union all
    select 7 as id, 'Davis' as last_name, 'James' as first_name, '404 Walnut Dr' as street_address, 'Boston' as city, 'MA' as state, 'USA' as country, 'jdavis@example.com' as email, '617-555-0107' as phone union all
    select 8 as id, 'Garcia' as last_name, 'Maria' as first_name, '505 Elm St' as street_address, 'Miami' as city, 'FL' as state, 'USA' as country, 'mgarcia@example.com' as email, '305-555-0108' as phone union all
    select 9 as id, 'Rodriguez' as last_name, 'Luis' as first_name, '606 Ash Ln' as street_address, 'Dallas' as city, 'TX' as state, 'USA' as country, 'luis.r@example.com' as email, '214-555-0109' as phone union all
    select 10 as id, 'Wilson' as last_name, 'Amanda' as first_name, '707 Willow Way' as street_address, 'Portland' as city, 'OR' as state, 'USA' as country, 'amanda.w@example.com' as email, '503-555-0110' as phone union all
    select 11 as id, 'Thomas' as last_name, 'Robert' as first_name, '808 Spruce St' as street_address, 'Chicago' as city, 'IL' as state, 'USA' as country, 'rthomas@example.com' as email, '312-555-0111' as phone union all
    select 12 as id, 'Taylor' as last_name, 'Megan' as first_name, '909 Hickory Dr' as street_address, 'Nashville' as city, 'TN' as state, 'USA' as country, 'megan.t@example.com' as email, '615-555-0112' as phone union all
    select 13 as id, 'Moore' as last_name, 'Kevin' as first_name, '111 Redwood Hwy' as street_address, 'San Francisco' as city, 'CA' as state, 'USA' as country, 'kmoore@example.com' as email, '415-555-0113' as phone union all
    select 14 as id, 'Jackson' as last_name, 'Rachel' as first_name, '222 Cypress Ave' as street_address, 'Charlotte' as city, 'NC' as state, 'USA' as country, 'rachel.j@example.com' as email, '704-555-0114' as phone union all
    select 15 as id, 'Martin' as last_name, 'William' as first_name, '333 Magnolia St' as street_address, 'Houston' as city, 'TX' as state, 'USA' as country, 'wmartin@example.com' as email, '713-555-0115' as phone union all
    select 16 as id, 'Lee' as last_name, 'Lisa' as first_name, '444 Poplar Rd' as street_address, 'Las Vegas' as city, 'NV' as state, 'USA' as country, 'llee@example.com' as email, '702-555-0116' as phone union all
    select 17 as id, 'Perez' as last_name, 'Carlos' as first_name, '555 Alder Dr' as street_address, 'San Antonio' as city, 'TX' as state, 'USA' as country, 'cperez@example.com' as email, '210-555-0117' as phone union all
    select 18 as id, 'Thompson' as last_name, 'Ashley' as first_name, '666 Beech St' as street_address, 'Detroit' as city, 'MI' as state, 'USA' as country, 'ashley.t@example.com' as email, '313-555-0118' as phone union all
    select 19 as id, 'White' as last_name, 'Brian' as first_name, '777 Chestnut Ln' as street_address, 'Minneapolis' as city, 'MN' as state, 'USA' as country, 'bwhite@example.com' as email, '612-555-0119' as phone union all
    select 20 as id, 'Harris' as last_name, 'Nicole' as first_name, '888 Fir Ct' as street_address, 'Salt Lake City' as city, 'UT' as state, 'USA' as country, 'nharris@example.com' as email, '801-555-0120' as phone
)

select * from mock_data
