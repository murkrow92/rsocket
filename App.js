/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow strict-local
 */

import React from 'react';
import {
  SafeAreaView,
  StatusBar,
  Button,
  View,
  NativeModules,
} from 'react-native';

const { RSocketModule } = NativeModules;

console.log('RSocket Module:', RSocketModule);

const App = () => {
  const onPress = () => {};

  return (
    <SafeAreaView>
      <StatusBar barStyle="dark-content" />
      <View>
        <Button title="Click Here" onPress={onPress} />
      </View>
    </SafeAreaView>
  );
};

export default App;
