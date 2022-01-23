const express = require('express')
const app = express()
const port = 3001

//set up

const Pool = require('pg').Pool
const pool = new Pool({
  user: 'postgres',         //can modify 
  host: 'localhost',
  database: 'code-learn-db',
  password: 'postgres',     //can modify
  port: 5432,
});

app.use(express.json())
app.use(function (req, res, next) {
  res.setHeader('Access-Control-Allow-Origin', 'http://localhost:3000');
  res.setHeader('Access-Control-Allow-Methods', 'GET,POST,PUT,DELETE,OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Access-Control-Allow-Headers');
  next();
});

// getAllQuestionID
// getQuestionList
app.get("/", async (req, res) => {
    try {
        const question = await pool.query('SELECT * FROM problem');
        res.status(200).json(question.rows);
    } catch(error) {
        res.status(500).send(error);
    }
})

// getQuestion
app.get("/:id", async (req, res) => {
    try {
        const id = parseInt(req.params.id)
        const question_id = await pool.query('SELECT * FROM problem WHERE question_id = $1', [id]);
        res.status(200).json(question_id.rows);
    } catch(error) {
        res.status(500).send(error);
    }
})
/*function changeFormatString(str) {
    if (str.match(/^-?\d+$/)) return parseInt(str);
    else if(str.match(/^\d+\.\d+$/)) return parseFloat(str);
    return str;
}*/
// run code
const axios = require('axios')
app.post("/runcode", async (req, res) => {
    try {
        const codeData = req.body.codeData;
        const questionID = req.body.questionID;

        let input = [], expectedOutput = [];
        let questionDetail = await pool.query('SELECT * FROM problem WHERE question_id = $1', [questionID]);
        questionDetail = questionDetail.rows[0];
        input.push(questionDetail["testcase_input_1"]);
        input.push(questionDetail["testcase_input_2"]);
        expectedOutput.push(questionDetail["testcase_output_1"]);
        expectedOutput.push(questionDetail["testcase_output_2"]);

        let originInput = input //input in string
        let numParam = originInput[0].split(",").length
        input = [];

        originInput.forEach(element => {
            let count = element.split(",")
            input.push(count)
        });

        let output = [];
        let actualOutput = "", actualMessage = "";

        for (let i = 0; i < 2; i++) {
            let codeNewData = codeData
            for (let j = 0; j < numParam; j++) {
                if (codeNewData.includes("input()")) codeNewData = codeNewData.replace("input()", input[i][j]);
                else break;
            }

            // call api python compiler
            let postData = JSON.stringify({ "code": codeNewData});
            postData = JSON.parse(postData)
            await axios.post('https://pythoncompiler9.herokuapp.com/python/', postData)
            .then(response => {
                if (response.data["message"] == "Success") actualOutput = response.data["output"];
                else actualMessage = response.data["output"];
            })
            .catch(error => {
                res.status(500).send(error);
            })
            actualOutput = actualOutput.slice(0, -1)
            if (actualOutput === expectedOutput[i]) actualMessage = "Right answer"
            else if (actualMessage === "") actualMessage = "Wrong answer"
            let outputSmall = await JSON.stringify({ 
                "id":  i + 1,
                "input": originInput[i],
                "actualOutput": actualOutput,
                "expectedOutput": expectedOutput[i],
                "Message": actualMessage,
            });
            outputSmall = JSON.parse(outputSmall)
            output.push(outputSmall)
        }

        res.status(200).send(output);
        // var postData = JSON.stringify({ "code": `${[codeNewData]}` });
        // postData = JSON.parse(postData)

        // axios.post('https://pythoncompiler9.herokuapp.com/python/', postData)
        // .then(response => {
        //     res.status(response.status).send(response.data);
        // })
        // .catch(error => {
        //     res.status(500).send(error);
        // })
    } catch (err) {
        console.log(err);
    }
})

/*{
"questionID" : 31,
"codeData": "n = int(input())\nanswer = 0\nfor i in range(1, n + 1):\n\tanswer += i\nprint(answer)"
}*/

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.warn(`App listening on http://localhost:${PORT}`);
});  

/*app.listen(port, () => {
    console.log(`App running on port ${port}.`)
})*/

/*app.post("/run-code", async (req, res) => {
    try {
        const code-data = req.body.code-data;
        let finalResponse = "min";

        var postData = JSON.stringify({ "code": `${[code-data]}` });
        postData = JSON.parse(postData)

        const requestOptions = {
            hostname: '',
            path: '/python/',
            method: 'POST',
            headers: { 'Content-Type': 'application/json', 'Connection': 'keep-alive'},
            //body: JSON.stringify({ code: code-data, })
        };
        
        // req = http.request(requestOptions, response => {
        //     response.on('data', d => {
        //         //finalResponse += d;
        //         res.status(200).send(d);
        //     })
        //     response.on('end', () => {
        //         console.log('No more data in response.');
        //     });

        // })
        // req.on('error', error => {
        //     console.error(error)
        // })
        // req.write(postData);
        // req.end()

        const axios = require('axios')
        axios
        .post('https://pythoncompiler9.herokuapp.com/python/', postData)
        .then(res => {
            console.log(`statusCode: ${res.status}`)
            console.log(res)
        })
        .catch(error => {
            console.error(error)
        })

    } catch(error) {
        res.status(500).send(error+"77");
    }
})*/