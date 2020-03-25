const config = require("platformsh-config").config();

console.log(config.getRoute("wordpress").url.split("/")[2]);
console.log(config.credentials('backend').host)
console.log(config.credentials('backend').host.url.split("/")[2])
