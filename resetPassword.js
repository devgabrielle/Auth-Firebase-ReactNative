import React from 'react';
import { StyleSheet, Text, View, TextInput, TouchableOpacity } from 'react-native';


import firebase from '../../../firebase';

export default function ResetPassword() {

  const [email, setEmail] = React.useState('');

  
  function sendResetPassword() {

    firebase.auth().sendPasswordResetEmail(email)
      .then(() => {
        // Email sent.
        alert('Cheque seu Email para a redefinição de senha')
      })
      .catch((error) => {
        const errorCode = error.code;
        const errorMessage = error.message;
        alert('Erro !')
      });

  }

  return (
    <View style={styles.container}>
      <Text style={styles.txt}>
        Redefinir sua Senha
      </Text>


      <TextInput
        style={styles.input}
        onChangeText={setEmail}
        value={email}
        placeholder="Digite seu E'mail"
      />


      <TouchableOpacity
        style={styles.btn}
        activeOpacity={.5}
        onPress={() => sendResetPassword()}>
        <Text style={styles.textStyle}> ENVIAR </Text>
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
        fontSize: 25,
        color: 'green',
        marginTop: 10,
        marginLeft: 50,
        marginRight: 50,
    },
    input: {
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
    btn: {
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

    textStyle: {
        fontSize: 15,
        color: 'white',
        textAlign: 'center',
})
