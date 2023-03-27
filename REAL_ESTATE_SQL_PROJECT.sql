SELECT * FROM real_estates.makaan_properties_buy;

-- CHANGING ALL TRUE TO YES AND ALL FALSE TO NO
select is_RERA_registered
, case when is_RERA_registered = 'TRUE' then 'YES'
       when is_RERA_registered = 'FALSE' then 'NO'
       ELSE is_RERA_registered
       END
 FROM real_estates.makaan_properties_buy;
 
 -- UPDATING THE COLUMN WITH YES AND NO
update makaan_properties_buy
 set is_RERA_registered = case when is_RERA_registered = 'TRUE' THEN 'YES'
      When is_RERA_registered = 'FALSE' THEN 'NO'
      ELSE is_RERA_registered
      END;
      
-- THE NUMBER OF PROPERTIES REGISTERED AND NOT REGISTERED.
select Distinct(is_RERA_registered), count(is_RERA_registered)
From real_estates.makaan_properties_buy
group by is_RERA_registered
order by 2;

/*PROPERTIES WHICH ARE NOT REGISTERED WITH THEIR CORRESPONDING 
BUILDER_NAME,LOCALITY_NAME AND SUB_URBAN_NAME*/
SELECT Property_name, Builder_name,Locality_Name,Sub_urban_name
FROM real_estates.makaan_properties_buy
Where is_RERA_registered = 'No';

-- CHANGING ALL TRUE TO YES AND ALL FALSE TO NO
select is_plot
, case when is_plot = 'TRUE' then 'YES'
       when is_plot = 'FALSE' then 'NO'
       ELSE is_plot
       END
 FROM real_estates.makaan_properties_buy;
 
  -- UPDATING THE COLUMN WITH YES AND NO
update makaan_properties_buy
 set is_plot = case when is_plot = 'TRUE' THEN 'YES'
      When is_plot = 'FALSE' THEN 'NO'
      ELSE is_plot
      END;      
      
-- THE NUMBER OF PROPERTIES WHICH IS_PLOT.
select Distinct(is_plot), count(is_plot)
From real_estates.makaan_properties_buy
group by is_plot
order by 2;

-- THE TYPE OF PROPERTIES BUILT ON A PLOT
select Property_Name,Property_type
FROM real_estates.makaan_properties_buy
Where is_plot = 'Yes';
      
-- CHANGING ALL TRUE TO YES AND ALL FALSE TO NO
select is_Apartment
, case when is_Apartment = 'TRUE' then 'YES'
       when is_Apartment = 'FALSE' then 'NO'
       ELSE is_Apartment
       END
 FROM real_estates.makaan_properties_buy;
 
-- UPDATING THE COLUMN WITH YES AND NO
update makaan_properties_buy
 set is_Apartment = case when is_Apartment = 'TRUE' THEN 'YES'
      When is_Apartment= 'FALSE' THEN 'NO'
      ELSE is_Apartment
      END;
      
-- THE NUMBER OF PROPERTIES WHICH IS_APARTMENT.    
select Distinct(is_Apartment), count(is_Apartment)
From real_estates.makaan_properties_buy
group by is_Apartment
order by 2;

-- APARTMENTS BY PROPERTY_STATUS,IS_FURNISHED AND NO_OF_BHK
select Property_Name,Property_status,is_furnished,No_of_BHK
FROM real_estates.makaan_properties_buy
Where is_Apartment = 'Yes';

-- CHANGING ALL TRUE TO YES AND ALL FALSE TO NO
select is_ready_to_move
, case when is_ready_to_move = 'TRUE' then 'YES'
       when is_ready_to_move = 'FALSE' then 'NO'
       ELSE is_ready_to_move
       END
 FROM real_estates.makaan_properties_buy;
 
-- UPDATING THE COLUMN WITH YES AND NO
update makaan_properties_buy
 set is_ready_to_move = case when is_ready_to_move = 'TRUE' THEN 'YES'
      When is_ready_to_move= 'FALSE' THEN 'NO'
      ELSE is_ready_to_move
      END;
      
-- THE NUMBER OF PROPERTIES WHICH IS_READY_TO_MOVE   
select Distinct(is_ready_to_move), count(is_ready_to_move)
From real_estates.makaan_properties_buy
group by is_ready_to_move
order by 2;

-- PROPERTIES WHICH ARE READY TO MOVE BY THE NO_OF_BHK AND STATE OF FURNISHEED
select Property_Name,is_furnished,No_of_BHK
FROM real_estates.makaan_properties_buy
Where is_ready_to_move = 'Yes';

-- CHANGING ALL TRUE TO YES AND ALL FALSE TO NO
select is_commercial_Listing
, case when is_commercial_Listing = 'TRUE' then 'YES'
       when is_commercial_Listing = 'FALSE' then 'NO'
       ELSE is_commercial_Listing
       END
 FROM real_estates.makaan_properties_buy;
 
 -- UPDATING THE COLUMN WITH YES AND NO
update makaan_properties_buy
 set is_commercial_Listing = case when is_commercial_Listing = 'TRUE' THEN 'YES'
      When is_commercial_Listing= 'FALSE' THEN 'NO'
      ELSE is_commercial_Listing
      END;
      
-- THE NUMBER OF PROPERTIES WHICH IS_COMMERCIAL_LISTING   
select Distinct(is_commercial_Listing), count(is_commercial_Listing)
From real_estates.makaan_properties_buy
group by is_commercial_Listing
order by 2;

-- CHANGING ALL TRUE TO YES AND ALL FALSE TO NO
select is_PentaHouse
, case when is_PentaHouse = 'TRUE' then 'YES'
       when is_PentaHouse = 'FALSE' then 'NO'
       ELSE is_PentaHouse
       END
 FROM real_estates.makaan_properties_buy;
 
 -- UPDATING THE COLUMN WITH YES AND NO
update makaan_properties_buy
 set is_PentaHouse = case when is_PentaHouse = 'TRUE' THEN 'YES'
      When is_PentaHouse= 'FALSE' THEN 'NO'
      ELSE is_PentaHouse
      END; 
      
-- THE NUMBER OF PROPERTIES WHICH IS_PENTHOUSE      
select Distinct(is_PentaHouse), count(is_PentaHouse)
From real_estates.makaan_properties_buy
group by is_PentaHouse
order by 2;

-- PENTHOUSE BY PROPERTY_STATUS,IS_FURNISHED AND NO_OF_BHK
select Property_Name,Property_status,is_furnished,No_of_BHK
FROM real_estates.makaan_properties_buy
Where is_PentaHouse = 'Yes';

-- CHANGING ALL TRUE TO YES AND ALL FALSE TO NO
select is_studio
, case when is_studio = 'TRUE' then 'YES'
       when is_studio = 'FALSE' then 'NO'
       ELSE is_studio
       END
 FROM real_estates.makaan_properties_buy;
 
  -- UPDATING THE COLUMN WITH YES AND NO
update makaan_properties_buy
 set is_studio = case when is_studio = 'TRUE' THEN 'YES'
      When is_studio= 'FALSE' THEN 'NO'
      ELSE is_studio
      END;   
      
-- THE NUMBER OF PROPERTIES WHICH IS_STUDIO     
select Distinct(is_studio), count(is_studio)
From real_estates.makaan_properties_buy
group by is_studio
order by 2;
      
-- STUDIOS BY PROPERTY_STATUS,IS_FURNISHED AND NO_OF_BHK
select Property_Name,Property_status,is_furnished,No_of_BHK
FROM real_estates.makaan_properties_buy
Where is_studio = 'Yes';

-- REMOVING UNUSED COLUMNS
SELECT *
FROM real_estates.makaan_properties_buy;
Alter TABLE real_estates.makaan_properties_buy
DROP COLUMN Posted_On,
DROP COLUMN listing_domain_score;

-- THE DIFFERENT CITY_NAME BY AVG,MIN AND MAX PRICE_PER_UNIT_AREA
SELECT City_name, AVG(Price_per_unit_area) AS avg_price_per_unit_area,
 MIN(Price_per_unit_area) AS min_price_per_unit_area,
 MAX(Price_per_unit_area) AS max_price_per_unit_area
FROM real_estates.makaan_properties_buy
GROUP BY City_name;
 
 -- THE DIFFERENT LOCALITY_NAME BY AVG,MIN AND MAX PRICE_PER_UNIT_AREA
SELECT Locality_Name, AVG(Price_per_unit_area) AS avg_price_per_unit_area,
 MIN(Price_per_unit_area) AS min_price_per_unit_area,
 MAX(Price_per_unit_area) AS max_price_per_unit_area
FROM real_estates.makaan_properties_buy
GROUP BY Locality_Name;

 -- THE DIFFERENT SUB_URBAN_NAME BY AVG,MIN AND MAX PRICE_PER_UNIT_AREA
SELECT Sub_urban_name, AVG(Price_per_unit_area) AS avg_price_per_unit_area,
 MIN(Price_per_unit_area) AS min_price_per_unit_area,
 MAX(Price_per_unit_area) AS max_price_per_unit_area
FROM real_estates.makaan_properties_buy
GROUP BY Sub_urban_name;

-- PRICE,AVG,MIN AND MAX PRICE BY CITY_NAME,LOCALITY_NAME AND SUB_URBAN_AREA
SELECT City_name, Locality_Name, Sub_urban_name, Price, AVG(Price) AS avg_price,
 MIN(Price) AS min_price,
 MAX(Price) AS max_price
FROM real_estates.makaan_properties_buy
GROUP BY City_name, Locality_Name, Sub_urban_name, Price;

-- THE DIFFERENT CITY_NAME BY AVG,MIN AND MAX PRICE
SELECT City_name, AVG(Price) AS avg_price,
 MIN(Price) AS min_price,
 MAX(Price) AS max_price
FROM real_estates.makaan_properties_buy
GROUP BY City_name;

-- THE NUMBER OF PROPERTY_TYPE BY PROPERTY_STATUS, NO_OF_BHK AND IS_FURNISED
SELECT Property_type, Property_status,No_of_BHK,is_furnished, COUNT(*) AS count
FROM real_estates.makaan_properties_buy
group by Property_type, Property_status, No_of_BHK,is_furnished;

-- THE TOTAL NUMBER OF UNFURNISHED,SEMI_FURNISHED AND FURNISHED
SELECT is_furnished, COUNT(*) AS count
FROM real_estates.makaan_properties_buy
group by is_furnished;

-- THE NUMBER OF PROPERTIES BUILT BY A BUILDER WITH THE AVERAGE PRICE
SELECT Builder_name, COUNT(*) AS num_Property_id, AVG(price) AS avg_price
FROM real_estates.makaan_properties_buy
GROUP BY Builder_name;