## Individual household electric power consumption Data Set
## (ORIGINAL DATA)

### Abstract: 
Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.

- Data Set Characteristics: Multivariate, Time-Series
- Attribute Characteristics: Real
- Associated Tasks: Regression, Clustering
- Number of Instances: 2075259
- Number of Attributes: 9
- Missing Values?: Yes
- Area: Physical
- Date Donated: 2012-08-30
- Number of Web Hits: 74071

### Source:
Georges Habrail (georges.hebrail@edf.fr), Senior Researcher, EDF R&D, Clamart, France
Alice Barard, TELECOM ParisTech Master of Engineering Internship at EDF R&D, Clamart, France

### Data Set Information:
This archive contains 2075259 measurements gathered between December 2006 and November 2010 (47 months).
Notes:
<ol>
<li><b>(global_active_power*1000/60 - sub_metering_1 - sub_metering_2 - sub_metering_3) represents the active energy consumed every minute (in watt hour) in the household by electrical equipment not measured in sub-meterings 1, 2 and 3.<li>
<li><b>The dataset contains some missing values in the measurements (nearly 1,25% of the rows). All calendar timestamps are present in the dataset but for some timestamps, the measurement values are missing: a missing value is represented by the absence of value between two consecutive semi-colon attribute separators. For instance, the dataset shows missing values on April 28, 2007.<li>
</ol>

### Attribute Information:
1.date: Date in format dd/mm/yyyy
2.time: time in format hh:mm:ss
3.global_active_power: household global minute-averaged active power (in kilowatt)
4.global_reactive_power: household global minute-averaged reactive power (in kilowatt)
5.voltage: minute-averaged voltage (in volt)
6.global_intensity: household global minute-averaged current intensity (in ampere)
7.sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
8.sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
9.sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

### Relevant Papers:
N/A

### Citation Request:
Please refer to the Machine Learning Repository's citation policy (https://archive.ics.uci.edu/ml/citation_policy.html)

## Peer Assemsnt Project
## (PROCESED DATA)

### Variables
1. sourceData: original data converted to table
2. dateData: table with data in defined time range (2007-02-01 and 2007-02-02)

### Codes
1. plot1.R: R code for plot 1
2. plot2.R: R code for plot 2
3. plot3.R: R code for plot 3
4. plot4.R: R code for plot 4

### Outputs of R codes
1. plot1.png
2. plot2.png
3. plot3.png
4. plot4.png
