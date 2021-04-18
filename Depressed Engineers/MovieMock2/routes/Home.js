import React from 'react';
import { StyleSheet, Text, View, Image } from 'react-native';
import { Ionicons,FontAwesome } from '@expo/vector-icons';



export default function Home() {
  return(
    <View style={styles.home}>
      <View style={styles.Top}>
        <View style={styles.menu}>
          <View style={styles.line1}></View>
          <View style={styles.line2}></View>
        </View>
        <View style={styles.innerTop}>
          <Ionicons name="ios-location-sharp" size={24} color="#FD7468" />
          <Text style={styles.location}>TO, Canada</Text>
        </View>
        <FontAwesome name="search" size={24} color="#FD7468"/>  
      </View>
      <View style={styles.Category}>
        <Text style={{...styles.Ctext,...styles.CtextUnderlined}}>Popular</Text>
        <Text style={styles.Ctext}>New</Text>
        <Text style={styles.Ctext}>Upcoming</Text>
      </View>
             
    </View>
  )
}

const styles = StyleSheet.create({
  home: {
    flex:1,
    padding: 40,
    alignItems: 'center',
  },
  location: {
    color:'#8C8C8C',
    fontFamily: 'Poppins-SemiBold'
  },
  innerTop: {
    flex: 1,
    flexDirection: 'row',
    justifyContent: 'center',
  },
  Top: {
    flex: 1,
    flexDirection: 'row',
    justifyContent: 'space-between',
    maxHeight: 60
  },
  menu : {
    height: 25,
    width: 40,
    justifyContent: 'space-evenly',
    alignItems: 'flex-start',
  },
  line1: {
    height: 4,
    width: 30,
    borderRadius: 5,
    backgroundColor: 'black',
  },
  line2: {
    height: 4,
    width: 17,
    borderRadius: 5,
    backgroundColor: 'black',
  },
  Category: {
    flex: 1,
    flexDirection: 'row',
    justifyContent: 'flex-start',
    alignItems: 'flex-start',
    // backgroundColor: 'grey',
    width: '100%',
  },
  Ctext : {
    fontFamily: 'Poppins-Bold',
    marginRight: 20,
    fontSize: 16,
    color: '#8C8C8C'
  },
  CtextUnderlined : {
    borderBottomColor: '#FD7468',
    borderBottomWidth: 3,
    color: 'black',
  }



})