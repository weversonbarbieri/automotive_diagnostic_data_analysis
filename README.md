### Automotive Diagnostic Data Analysis Project
#### Overview
This project analyzes automotive diagnostic data focusing on DTCs (Diagnostic Trouble Codes), vehicle manufacturers and hardware correlations. The analysis helps identify patterns in vehicle diagnostics and common failure points.


#### Local Database Setup. Obs: All SQL queries are on the create_database.sql file
1. Create a new database
2. Create the main table
3. Import CSV data
4. use the local Database Credentials

#### Dataset Analysis - Original vs Cleaned
The original dataset came from two different sources that were merged: Zoho Forms and Google Sheets. Initially, the data contained diagnostic information from automotive ECU cases with inconsistent formatting, duplicate entries, and unstructured text fields. The raw data included timestamps in different formats, varying case number patterns, and mixed vehicle information formats. The original DTC codes, which were sometimes buried in text descriptions, were extracted and placed in dedicated columns (original_dtcs and fs1_dtcs).

The cleaning process also involved separating the diagnostic problems and resolutions into distinct fields. Original problem descriptions were moved to original_problems, while ECU-specific issues were placed in fs1_ecu_problems. The resolution field was standardized to contain only the final outcome of each case. Technical notes were cleaned to remove HTML formatting while preserving the essential information. These columns remained unchanged during cleaning: created_time, h_number, entry_type, technician, source, year, make, model, engine_size, hdw_number, part_number, notes. Cleaned Dataset Format: 
Split into organized columns:
- original_problems: Extracted initial reported issues
- original_dtcs: Separated DTC codes
- fs1_ecu_problems: Specific ECU-related issues
- fs1_dtcs: Follow-up DTC codes
- fs1_original_problems_related: Yes/No field for problem correlation
- additional_notes: Extra technical information
- resolution: Final case outcome

## Sample Analysis Results
![Tech performance](https://github.com/weversonbarbieri/automotive_diagnostic_data_analysis/blob/b0bc0a508f6b1877b07cb523dc0775d57a6a6d40/images/diag_performance_tech_24.png)

![Top 15 DTCs](https://github.com/weversonbarbieri/automotive_diagnostic_data_analysis/blob/f9ecab53988f5f4b50a9c8f675f51ba4ce2a7b2d/images/top_dtcs.png)


![Distribution from a given DTC accross Vehicle's Manufacturers](https://github.com/weversonbarbieri/automotive_diagnostic_data_analysis/blob/c5b80bc6b1c9fa741f2bb8e5d2a8d8206e923ea7/images/code_p0633_distr._make.png)


![Top 10 Hardware Part Numbers Ocurrence from a give DTC](https://github.com/weversonbarbieri/automotive_diagnostic_data_analysis/blob/c5b80bc6b1c9fa741f2bb8e5d2a8d8206e923ea7/images/p0633_top_10_hdw_pn_occerence.png)
