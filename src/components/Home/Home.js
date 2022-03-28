import { React, useState, useEffect } from 'react';
// import Flashcard from '../Flashcard';


function Home() {

  const [deck, setDeck] = useState([]);

  useEffect(() => {
    fetch('/decks')
    .then(r => r.json())
    .then(data => setDeck(data))
  }, [])

return (
  <div>
    {
    deck.map((deck) => {
      <h2>You have a deck!</h2>
    })
    }
  </div>
)}

export default Home;