### code-learn-api

# GET /
*Get all question*

# GET /:id
*Get question {id}*

# POST /runcode

{
"questionID" : 31,
"codeData": "n = int(input())\nansnwer = 0\nfor i in range(1, n + 1):\n\tanswer += i\nprint(answer)"
}

** result ** 

[
    {
        "id": 1,
        "input": "5",
        "actualOutput": "",
        "expectedOutput": "15",
        "Message": "name 'answer' is not defined"
    },
    {
        "id": 2,
        "input": "7",
        "actualOutput": "",
        "expectedOutput": "28",
        "Message": "name 'answer' is not defined"
    }
]