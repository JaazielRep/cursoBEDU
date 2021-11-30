import React from 'react'
import { View, Text, Button, SafeAreaView } from 'react-native'

export default function SettingsScreen(props) {
    const {navigation} = props;
    const goToPage = (paramPage) => {
        navigation.navigate(paramPage);
    }
    return (
        <SafeAreaView>
            <Text>Set Screen</Text>
            <Button onPress={() => goToPage('Home')} title="TEST 1"/>
        </SafeAreaView>
    )
}