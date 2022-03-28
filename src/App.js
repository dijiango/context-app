import Topbar from "./components/bars/Topbar";
import Review from './components/Review';
import Create from './components/Create';
import Home from './components/Home/Home';
import LandingPage from "./components/LandingPage";

import { BrowserRouter, Routes, Route } from 'react-router-dom';
import QuizPage from "./components/quiz/QuizPage";

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <Topbar />
        <Routes>
          <Route path="/quiz" element={ <QuizPage />} />
          <Route path='/review' element={ <Review /> } />
          <Route path='/create' element={ <Create /> } />
          <Route path='/home' element={ <Home /> } />
          <Route path='/' element={ <LandingPage /> } />
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
