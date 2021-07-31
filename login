import React from 'react';
import { View, StyleSheet, TextInput, Text, TouchableOpacity } from 'react-native';

import firebase from '../../firebase/firebase';


export default function Login({ navigation }) {


    const [email, setEmail] = React.useState('');
    const [password, setPassword] = React.useState('');

    function enterInFirebase() {

        firebase.auth().signInWithEmailAndPassword(email, password)
            .then((userCredential) => {
                // Signed in
                var user = userCredential.user;
               alert ("Logado")
            })
            .catch((error) => {
                var errorCode = error.code;
                var errorMessage = error.message;
                alert("Senha ou E'mail incorretos. Tente novamente")
            });

    }

    return (
    <View style={styles.container}>
      <Text style={styles.txt}>
        Bem vindo
      </Text>

      <TextInput
        style={styles.input01}
        onChangeText={setEmail}
        value={email}
        placeholder="E'mail"
      />

      <TextInput
        style={styles.input02}
        onChangeText={setPassword}
        value={password}
        placeholder="Senha"
      />

      <TouchableOpacity
        style={styles.btnReset}
        activeOpacity={.5}
        onPress={() => navigation.navigate('ResetPassword')}>
        <Text style={styles.textStyle1}> Esqueci minha senha </Text>
      </TouchableOpacity>


      <TouchableOpacity
        style={styles.btnLogin}
        activeOpacity={.5}
        onPress={() => enterInFirebase()}>
        <Text style={styles.textStyle2}> ENTRAR </Text>
      </TouchableOpacity>



      <Dash style={styles.dash} />


      <TouchableOpacity
        style={styles.btnRegister}
        activeOpacity={.5}
        onPress={() => navigation.navigate('Register')}>
        <Text style={styles.textStyle3}> CRIAR NOVA CONTA </Text>
      </TouchableOpacity>


    </View>
  );


const styles = StyleSheet.create({
   container: {
      flex: 1,
  
      backgroundColor: 'white',
      alignItems: 'center',
      justifyContent: 'center',
    },
    txt: {
      fontSize: 30,
      color: 'green',
      marginTop: 10,
    },
  
    input01: {
      marginTop: 30,
      borderBottomWidth: 1,
      padding: 10,
      height: 45,
      margin: 12,
      borderWidth: 1,
      width: 300,
      alignItems: 'center',
      justifyContent: 'center',

    },
  
    input02: {
      marginTop: 1,
      borderBottomWidth: 1,
      padding: 10,
      height: 45,
      margin: 12,
      borderWidth: 1,
      width: 300,
      alignItems: 'center',
      justifyContent: 'center',
  
    },
    btnReset: {
      marginTop: 2,
      paddingTop: 1,
      paddingBottom: 15,
      marginLeft: 150,
      width: 200,
      borderColor: 'green'
    },
    textStyle1: {
      fontSize: 15,
      color: 'black',
      textAlign: 'center',
    },
    btnLogin: {
      marginTop: 30,
      paddingTop: 15,
      paddingBottom: 15,
      alignItems: 'center',
      justifyContent: 'center',
      backgroundColor: 'green',
      borderRadius: 200,
      borderWidth: 2,
      width: 130,
      borderColor: 'green'
  
    },
  
    textStyle2: {
      color: 'white',
      textAlign: 'center',
  
    },
    dash: {
      marginTop: 40,
      width:250, 
      height: 5,
      borderRadius: 100, 
      overflow: 'hidden',
      borderColor: 'grey',
      alignItems: 'center',
      justifyContent: 'center',
    },
    btnRegister: {
      marginTop: 10,
      paddingTop: 15,
      paddingBottom: 2,
      alignItems: 'center',
      justifyContent: 'center',
      backgroundColor: 'white',
      width: 150,
      borderBottomWidth: 2,
      borderColor: 'green',
    },
    textStyle3: {
      color: 'green',
      textAlign: 'center',
    },
  })
  }
