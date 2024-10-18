import requests

with open("iframe.txt", "r") as f:
    queries = [line.strip() for line in f.readlines()]
for query in queries:
    index1 = query.find("#tgWebAppData")
    index2 = query.find("&tgWebAppVersion")
    if index1 != -1 and index2 != -1:
        encoded_data = query[index1 + 14:index2]
        decoded_data = requests.utils.unquote(encoded_data)
        with open("decoded_data.txt", "a") as output_file:
            output_file.write(decoded_data + "\n")