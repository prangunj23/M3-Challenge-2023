import statistics

with open('sortedData.csv') as f:
    lines = f.readlines()

# print(lines)

outputString = "\"Year\",\"Mean\",\"Median\"\n"
yearData = []
year = "2000"

for line in lines:
    if line[:4] != year:
        outputInfo = [year, int(statistics.mean(yearData)), int(statistics.median(yearData))]
        for data in outputInfo:
            outputString += "\"" + str(data) + "\","
        outputString = outputString[:-1]
        outputString += "\n"
        yearData = []
        year = line[:4]
    else:
        dataPoint = line[5:-1]
        dataPoint = int(dataPoint)
        yearData.append(dataPoint)

with open('trafficDataSummaryStatistics.csv', 'w') as f:
    f.write(outputString)
