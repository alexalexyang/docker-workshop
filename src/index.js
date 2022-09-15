import express from 'express'
import bodyParser from 'body-parser'
import fs from 'fs'
import path from 'path';
import url from 'url';

const app = express()

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

const __filename = url.fileURLToPath(import.meta.url);
const __dirname = path.resolve(path.dirname(__filename), "../");
const filepath = `${__dirname}/data/data.json`

app.post(
    '/',
    (req, res) => {
        const body = req.body

        console.log({ filepath })
        const fixture = fs.readFileSync(filepath, 'utf8')
        const parsed = JSON.parse(fixture)

        const newData = { ...parsed, ...body }

        fs.writeFile(filepath, JSON.stringify(newData), err => err && console.log(err));

        res.send({ newData, status: "success" })
    })

const port = 3000
app.listen(port, () => {
    console.log(`Listening at port ${port}`)
})
