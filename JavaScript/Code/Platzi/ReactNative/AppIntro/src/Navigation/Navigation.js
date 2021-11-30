import React from 'react'
import { View, Text } from 'react-native'
import { createStackNavigator } from '@react-navigation/stack'
import HomeScreen from '../screens/HomeScreen';
import SettingsScreen from '../screens/SettingsScreen';

const Stack = createStackNavigator();

export default function Navigation() {
    return(
        <Stack.Navigator>
            <Stack.Screen name = "Home" component = {HomeScreen}/>
            <Stack.Screen name = "Settings" component = {SettingsScreen}/>
        </Stack.Navigator>
    )
}
