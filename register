import React from 'react';
import { View, StyleSheet, TextInput, Text, TouchableOpacity } from 'react-native';

import firebase from '../../firebase/firebase';

export default function Register() {

   
    const [email, setEmail] = React.useState('');
    const [password, setPassword] = React.useState('');
  
    function enterInFirebase() {
  
        firebase.auth().createUserWithEmailAndPassword(email, password)
        .then((userCredential) => {
            // Signed in
            var user = userCredential.user;
            alert("Cadastrado")
      })
        .catch((error) => {
            var errorCode = error.code;
            var errorMessage = error.message;
        alert("Tente novamente")
      });
 
    }
    

    return (
     <View style={styles.container}>
      <Text style={styles.txt}>
        Cadastre-se
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
        style={styles.btnLogin}
        activeOpacity={.5}
        onPress={() => enterInFirebase()}>
        <Text style={styles.textStyle2}> CADASTRAR </Text>
      </TouchableOpacity>

    </View>
  );
};


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
})
