import * as React from 'react';

import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';

import Login from '../pages/login';
import Register from '../pages/register';
import ResetPassword from '../pages/resetPassword';


const Stack = createStackNavigator();


export default Routes = () => {
  return (

<NavigationContainer>   
   <Stack.Navigator>
      <Stack.Screen name="Login" component={Login} options={{
        headerShown: null,
      }}
       />
      <Stack.Screen name="Register" component={Register}
        options={{
          title: '',
          headerTitleAlign: 'center',
          headerStyle: {
            backgroundColor: 'white'
          },
        }} />
      <Stack.Screen name="ResetPassword" component={ResetPassword} options={{
        title: '',
        headerTitleAlign: 'center',
        headerStyle: {
          backgroundColor: 'white'
        },
      }} />
    </Stack.Navigator>
 </NavigationContainer>      
  );
}
