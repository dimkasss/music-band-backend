import express from 'express';
import cors from 'cors';
import knex from 'knex';

const db = knex({
    client: 'pg',
    connection: {
      host: '127.0.0.1',
      user: 'postgres',
      password: 'test',
      database: 'music-bands'
    }
})

const app  = express();
app.use(cors());

app.get('/bands', async (req, res) => {
    const { name, bandtype } = req.query;
    res.send(await db.select('*').from('bands'))
})

app.listen(3000, () => console.log('Server is listening on port 3000'))