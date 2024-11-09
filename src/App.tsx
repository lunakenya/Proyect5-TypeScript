// src/App.tsx (TypeScript)
import React from 'react';
import './App.css';
import Hellow from './components/main';

const App: React.FC = () => {
  return (
    <div className="App">
      <header className="App-header">
        <Hellow nombre="Kenya" />
        <Hellow nombre="Juan Pablo" />
        <Hellow nombre="Luna" />
      </header>
    </div>
  );
};

export default App;
