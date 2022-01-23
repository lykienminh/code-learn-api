# **code-learn-api**

### GET /
*Get all question*

### GET /:id
*Get question {id}*

### POST /runcode

{
"questionID" : 31,
"codeData": "n = int(input())\nansnwer = 0\nfor i in range(1, n + 1):\n\tanswer += i\nprint(answer)"
}

# ** _result_ ** 

[\n
    {\n
        "id": 1,\n
        "input": "5",\n
        "actualOutput": "",\n
        "expectedOutput": "15",\n
        "Message": "name 'answer' is not defined"\n
    },\n
    {\n
        "id": 2,\n
        "input": "7",\n
        "actualOutput": "",\n
        "expectedOutput": "28",\n
        "Message": "name 'answer' is not defined"\n
    }\n
]