const http = require("http");
const server = http.createServer((req, res) => {
    console.log(req.url);
    console.log("hello from my app with changes");
    res.end("hello from my app");
});
server.listen(3000, () => {
    console.log("app is running");
});