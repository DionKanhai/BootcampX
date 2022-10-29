const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

// grab the command first two cmd line args from user
const cohortName = process.argv[2];
const limit = process.argv[3] || 5;

//provide placeholders values ($1, $2) to parameterize query
const queryString = `SELECT students.id as student_id, students.name  as name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE $1
LIMIT $2`;
// storing values in an array which will be replaced in order of $1, $2 in the query
const values = [`%${cohortName}%`, limit]

// pass the query and values to the function
pool
  .query(queryString, values)
  .then(res => {
  // res returns an array 
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);

  })
})
  .catch(err => console.error('query error', err.stack));