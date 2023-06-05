import random

with open('dataToClean.csv') as f:
    lines = f.readlines()

columnTitles = lines[0].split("\",\"")
columnTitles[len(columnTitles) - 1] = "All_motor_vehicles"

titlesToUse = ["Year", "Region_name", "All_motor_vehicles"]
columnNumbers = []
outputString = ""

for title in titlesToUse:
    columnNumbers.append(columnTitles.index(title))
    outputString += "\"" + title + "\","

outputString += "\n"

for i in range(1, 10000):#len(lines)):
    line = lines[random.randint(1, len(lines) - 1)]
    lineArray = line.split("\",\"")
    lineArray[len(lineArray) - 1] = lineArray[len(lineArray) - 1][:-2]
    for index in columnNumbers:
        outputString += "\"" + lineArray[index] + "\","
    outputString = outputString[:-1]
    outputString += "\n"

with open('cleanData.csv', 'w') as f:
    f.write(outputString)