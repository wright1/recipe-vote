const { Pool } = require("pg")
const env = require("env2")
env("./config.env")


let connectionString = 
process.env.NODE_ENV === "test" ? 
process.env.TEST_DATABASE_URL :
process.env.DATABASE_URL;

if(!connectionString) throw new Error("Database Url must be set")


module.exports = new Pool({
    connectionString,
    max: 2,
    ssl: !connectionString.includes("localhost")
});