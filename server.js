const express = require('express');
const app = express();

// Middleware untuk parsing JSON
app.use(express.json());

// Endpoint default
app.get('/', (req, res) => {
    res.send('Hello, Express with PNPM and Docker!');
});

// Jalankan server di port 3000
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}`);
});

