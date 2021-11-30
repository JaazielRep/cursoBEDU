import 'react-native-gesture-handler';
import { NavigationContainer } from '@react-navigation/native';
import { StatusBar } from 'expo-status-bar';
import React from 'react';
import { StyleSheet, Text, View } from 'react-native';
import LoginForm from './src/components/LoginForm';
import Saludar from './src/components/Saludar';
import Navigation from './src/Navigation/Navigation';
import NavigationTab from './src/Navigation/NavigationTab';
import NavigationDrawer from './src/Navigation/NavigationDrawer';

export default function App() {
  return (
    
    <NavigationContainer>
      {/*<NavigationContainer initialRouteName = "Settings">
      <View style={styles.container}>
        <Text>Sin pretextos hoy</Text>
        <LoginForm></LoginForm>
        <Saludar></Saludar>
        <Saludar nome = "Alan" apeido="Medrano"></Saludar>
        <StatusBar style="auto" />
      </View>
      <Navigation />
      <NavigationTab />*/}
      <NavigationDrawer />
    </NavigationContainer>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
