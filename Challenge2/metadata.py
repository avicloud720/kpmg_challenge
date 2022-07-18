import requests
import json
baseUrl = 'http://169.254.169.254/latest/meta-data/'
resultantArray = []

def getMetadata(baseUrl):
    response_API = requests.get(baseUrl)
    metadata = response_API.text
    metaArray = metadata.splitlines()
    for x in metaArray:
        if '/' not in x:
            resultantArray.append(baseUrl+x)
        else:
            getMetadata(baseUrl+x)
    return resultantArray
getMetadata(baseUrl)

data = []

for y in resultantArray:
    getValue = requests.get(y)
    finalValue = getValue.text
    data.append(y+'/'+finalValue)

directoryPath = []
for i in data:
    directoryPath.append(i.lstrip('http://169.254.169.254/latest/'))
jsonObject = {}

for path in directoryPath:
    current = jsonObject

    for segment in path.split('/'):
        if segment != '':
            if segment not in current:
                current[segment] = {}
            current = current[segment]

print(jsonObject)
