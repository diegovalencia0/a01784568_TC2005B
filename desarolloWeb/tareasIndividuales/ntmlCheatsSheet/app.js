'use strict';

import express from "express";
import path from "path";
import { fileURLToPath } from 'url';

const app = express();
const port = 3002;

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

app.use(express.static(path.join(__dirname, 'public')));

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'html_cheat_sheet.html'));
});

app.get('/css', (req, res) => {
    res.sendFile(path.join(__dirname, 'public', 'css_cheat_sheet.html'));
});

app.listen(port, () => {
    console.log(`Server running on http://localhost:${port}/`);
});
