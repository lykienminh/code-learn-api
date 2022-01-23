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

[<br />
    {<br />
        "id": 1,<br />
        "input": "5",<br />
        "actualOutput": "",<br />
        "expectedOutput": "15",<br />
        "Message": "name 'answer' is not defined",<br />
    },<br />
    {<br />
        "id": 2,<br />
        "input": "7",<br />
        "actualOutput": "",<br />
        "expectedOutput": "28",<br />
        "Message": "name 'answer' is not defined",<br />
    }<br />
]<br />