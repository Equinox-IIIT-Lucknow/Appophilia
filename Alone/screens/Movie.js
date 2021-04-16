import React from 'react';
import {StyleSheet, Text, View, Image} from 'react-native';
import {Button, Container, H2, Header} from 'native-base';
import Icon from 'react-native-vector-icons/FontAwesome';

const Movie = ({navigation}) => {
  //   StatusBar.setHidden(true);

  const goBack = () => {
    navigation.goBack();
  };

  return (
    <Container style={styles.container}>
      <Header style={styles.header} androidStatusBarColor="#242B2E" />
      <Icon
        style={styles.backIcon}
        onPress={goBack}
        name="chevron-left"
        size={30}
        color="white"
      />
      <View style={styles.posterContainer}>
        <Image
          style={{opacity: 0.5}}
          source={{
            uri:
              'https://lumiere-a.akamaihd.net/v1/images/star-wars-the-rise-of-skywalker-theatrical-poster-1000_ebc74357.jpeg',
          }}
          style={{flex: 1, height: null, width: null, resizeMode: 'cover'}}
        />
        <View style={styles.posterContent}>
          <H2 style={styles.mainHeading}>Star Wars: The Rise of Skywalker</H2>
          <View style={styles.starContianer}>
            <Icon name="star" style={[styles.star, styles.starActive]} />
            <Icon name="star" style={[styles.star, styles.starActive]} />
            <Icon name="star" style={[styles.star, styles.starActive]} />
            <Icon name="star" style={styles.star} />
            <Icon name="star" style={styles.star} />
          </View>
          <Text style={styles.movieDescription}>
            2019 | 2 h 35 min | Fantasy, Sci-fi
          </Text>
        </View>
      </View>
      <View style={styles.bottom}>
        <H2 style={styles.h2}>Storyline</H2>
        <Text style={styles.storyLine}>
          The film completes the incredible story of the Skywalker family, which
          has been goiing on for oer forty years, and romises to give answers to
          all the riddles of the previous series.
        </Text>
        <Button style={styles.button}>
          <Text style={{fontWeight: 'bold', color: '#242B2E'}}>Buy Ticket</Text>
        </Button>
      </View>
    </Container>
  );
};

export default Movie;

const styles = StyleSheet.create({
  container: {
    backgroundColor: '#242B2E',
  },
  header: {
    height: 0,
  },
  backIcon: {
    position: 'absolute',
    zIndex: 20,
    marginTop: 15,
    marginLeft: 15,
  },
  posterContainer: {
    width: '100%',
    height: 450,
  },
  posterContent: {
    position: 'absolute',
    zIndex: 10,
    width: '100%',
    height: 450,
    backgroundColor: 'rgba(0, 0, 0, 0.4)',
    flex: 1,
    alignItems: 'center',
  },
  mainHeading: {
    color: 'white',
    fontWeight: 'bold',
    paddingHorizontal: 20,
    textAlign: 'center',
    marginTop: 'auto',
  },
  movieDescription: {
    color: 'white',
    marginBottom: 20,
    backgroundColor: 'rgba(0, 0, 0, 0.5)',
  },
  bottom: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'space-evenly',
  },
  h2: {
    fontWeight: 'bold',
    color: 'white',
    marginTop: 20,
  },
  storyLine: {
    textAlign: 'center',
    color: '#ffffff',
    marginTop: 10,
    paddingHorizontal: '5%',
    fontSize: 16,
  },
  button: {
    backgroundColor: '#FEB801',
    paddingHorizontal: 70,
    marginTop: 30,
    alignSelf: 'center',
    borderRadius: 5,
    marginBottom: 10,
  },
  starContianer: {
    flexDirection: 'row',
    marginTop: 10,
    marginBottom: 10,
  },
  star: {
    color: '#ffffff90',
    fontSize: 15,
  },
  starActive: {
    color: '#FBB600',
  },
});
