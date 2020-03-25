const config = require("platformsh-config").config();

console.log(config.getRoute("wordpress").url.split("/")[2]);
// var url = "https://backend.pr-1-djjnuwy-wkdydhxitndua.eu-3.platformsh.site/"
// console.log(url.split("/")[2])
