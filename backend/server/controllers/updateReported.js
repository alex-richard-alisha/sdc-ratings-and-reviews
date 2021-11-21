/* eslint-disable camelcase */
const pool = require('../../database/index');

const report = async (request, response) => {
  const { review_id } = request.params;
  let client;

  try {
    client = await pool.connect();
    await client.query('update reviews set reported = true where id = $1', [review_id]);
    response.sendStatus(204).end();
  } catch (e) {
    response.sendStatus(400).end();
  } finally {
    client.release();
  }
};

module.exports = { report };
