const fs = require("fs")
const dbConnection = require("./db_connection")
const sql = fs.readFileSync(`${__dirname}/db_build.sql`).toString()


const buildDatabase = () =>{
    dbConnection.query(sql, (err, res) =>{
        if(err) {console.log("Database build error :", err)
    }else{

        console.log("database build successful")
        dbConnection.end(() =>{ console.log("connection closed")})
    }
    })
}

buildDatabase();

module.exports = buildDatabase