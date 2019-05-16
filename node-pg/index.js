const { Client } = require('pg');

prepareDbClient()
  .then(async (client) => {
    try {
      await main(client);
    } catch (e) {
      console.error(e);
    }

    await client.end();
  })
  .catch(console.error);

async function prepareDbClient() {
  const client = new Client({
    user: process.env.DB_USER,
    database: 'books_stock',
    password: process.env.DB_PASSWORD,
  });

  await client.connect();

  return client;
}

async function main(client) {
  const user = await getUserByUsername('jake_black');
  console.log('User: ', user);

  const comments = await getBookComments(34);
  console.log('Comments: ', comments);

  async function getUserByUsername(username) {
    const res = await client.query({
      name: 'get-user-by-username',
      text: `
        SELECT first_name, last_name
          FROM users
         WHERE username = $1
      `,
      values: [ username ],
    });

    return res.rows[0];
  }

  async function getBookComments(bookId) {
    const res = await client.query({
      name: 'get-book-comments',
      text: `
        SELECT u.username, uc.created_at, uc.content, buc.rating 
          FROM book_user_comments buc
          JOIN user_comments uc ON uc.id = buc.user_comment_id
          JOIN users u ON u.id = uc.user_id
         WHERE buc.book_id = $1
         ORDER BY uc.created_at DESC
      `,
      values: [ bookId ],
    });

    return res.rows;
  }
}
