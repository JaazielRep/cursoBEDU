import React from "react";
import { TextInput, Text } from "react-native";
import PropTypes from "prop-types";

export default function Saludar(param){
    let {nome, apeido} = param;
    return <Text>Hola, {nome} {apeido}!</Text>
}

Saludar.defaultProps = {
    nome: "Jaaziel",
    apeido: "Moreno",
}

Saludar.propTypes = {
    nome: PropTypes.string.isRequired,
    apeido: PropTypes.string, 
}