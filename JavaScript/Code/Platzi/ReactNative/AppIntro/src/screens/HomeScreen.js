import React from 'react'
import { View, Text, Button, SafeAreaView } from 'react-native'

export default function HomeScreen(props) {
    const {navigation} = props;
    const goToPage = (paramPage) => {
        navigation.navigate(paramPage);
    }
    return (
        <SafeAreaView>
            <Text>Home Screen</Text>
            <Button onPress={() => goToPage("Settings")} title="TEST 2"/>
        </SafeAreaView>
    )
}
