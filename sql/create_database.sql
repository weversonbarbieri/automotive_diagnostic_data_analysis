-- Create a new database
CREATE DATABASE diagnostic_data_table;

-- Create the table on the Postgres local database
create table df_zoho_google_cleaned(
  created_time TEXT,
  h_number TEXT,
  entry_type TEXT,
  technician TEXT,
  source TEXT,
  year TEXT,
  make TEXT,
  model TEXT,
  engine_size TEXT,
  hdw_number TEXT,
  part_number TEXT,
  notes TEXT,
  original_problems TEXT,
  original_dtcs TEXT,
  fs1_ecu_problems TEXT,
  fs1_dtcs TEXT,
  fs1_original_problems_related TEXT,
  additional_notes TEXT,
  resolution TEXT,
);

-- Import the data from the csv file to the local database
COPY zoho_google_data_cleaned_table
FROM 'C:\Language_Projects\Language_Projects\Python\Flagship_1\automotive_diagnostic_data_analysis\data\df_zoho_google_cleaned.csv'
DELIMITER ','
CSV HEADER;