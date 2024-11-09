
import React from 'react';

interface HellowPeople {
  nombre: string;
}

const Hellow: React.FC<HellowPeople> = ({ nombre }) => {
  return <h1> Hello, {nombre}!</h1>;
};

export default Hellow;

