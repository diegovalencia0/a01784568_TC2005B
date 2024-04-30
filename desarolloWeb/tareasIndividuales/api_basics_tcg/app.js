"use strict";

import express from 'express';

const app = express();
const port = 3000;

app.use(express.json());

let cards = [];

app.get('/showCards', (req, res) => {
    if (cards.length === 0) {
        res.status(200).send("No cards to show");
    } else {
        res.status(200).json(cards);
    }
});


app.get('/showCard/:id', (req, res) => {
    let requiredCard = cards.find(c => c.id === req.params.id);
    if (!requiredCard) {
        res.status(404).send("Card not found");
    } else {
        res.status(200).json(requiredCard);
    }
});


app.post('/addCard', (req, res) => {
    let { Id, Name, Element, Description, EnergyCost } = req.body;
    
    if (!Id || !Name || !Element || !Description || !EnergyCost) {
        res.status(400).send("Missing attributes");
    } else {
        let found = cards.find(card => card.id === Id);
        if (found) {
            res.status(400).send("Card already exists");
        } else {
            const newCard = { id: Id, name: Name, element: Element, description: Description, energyCost: EnergyCost };
            cards.push(newCard);
            res.status(200).send("Card added");
        }
    }
});

app.delete('/deleteCard/:id', (req, res) => {
    const cardId = req.params.id;
    const index = cards.findIndex(card => card.id === cardId);
    if (index === -1) {
        res.status(404).send("Card not found");
    } else {
        cards.splice(index, 1);
        res.status(200).send("Card deleted");
    }
});

app.put('/updateCard/:id', (req, res) => {
    const cardId = req.params.id;
    const updateFields = req.body;
    const index = cards.findIndex(card => card.id === cardId);
    if (index === -1) {
        res.status(404).send("Card not found");
    } else {
        
        Object.assign(cards[index], updateFields);
        res.status(200).send("Card updated");
    }
});


app.listen(port, () => {
    console.log(`Server running on http://localhost:${port}/`);
});
