import React from 'react';
import {StyleSheet, ScrollView, Image, TouchableOpacity} from 'react-native';
import {
  Header,
  Left,
  Button,
  Body,
  Container,
  Right,
  Text,
  Thumbnail,
  View,
  H3,
} from 'native-base';

import Icon from 'react-native-vector-icons/FontAwesome';

const Home = ({navigation}) => {
  const navigateToMovie = () => {
    navigation.navigate('Movie');
  };

  return (
    <>
      <Container style={styles.container}>
        <Header style={styles.header} androidStatusBarColor="#242B2E">
          <Left>
            <Button transparent>
              <Icon name="bars" size={20} color="white" />
            </Button>
          </Left>
          <Right>
            <Button transparent>
              <Icon name="search" size={20} color="white" />
            </Button>
            <Button transparent>
              <Icon name="bell" size={20} color="white" />
            </Button>
            <Button transparent>
              <Thumbnail
                source={{uri: 'https://i.pravatar.cc/100'}}
                style={styles.avatar}
              />
            </Button>
          </Right>
        </Header>
        <Body style={styles.body}>
          <ScrollView style={styles.scrollView}>
            <View style={styles.listItem}>
              <View style={styles.listItemHeader}>
                <H3 style={[styles.textColorPrimary, styles.h3]}>Trailers</H3>
                <Text style={styles.textColorSecondary}>View all</Text>
              </View>
              <ScrollView
                style={styles.listItemScrollView}
                horizontal={true}
                showsHorizontalScrollIndicator={false}>
                <TouchableOpacity onPress={navigateToMovie}>
                  <Image
                    source={{
                      uri:
                        'https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fblogs-images.forbes.com%2Fscottmendelson%2Ffiles%2F2019%2F03%2FAvengers-Chinese-Poster-D.jpg',
                    }}
                    style={styles.bannerStyle}
                  />
                </TouchableOpacity>
                <TouchableOpacity onPress={navigateToMovie}>
                  <Image
                    source={{
                      uri:
                        'https://d2kektcjb0ajja.cloudfront.net/images/posts/feature_images/000/000/072/large-1466557422-feature.jpg?1466557422',
                    }}
                    style={styles.bannerStyle}
                  />
                </TouchableOpacity>
                <TouchableOpacity onPress={navigateToMovie}>
                  <Image
                    source={{
                      uri:
                        'https://images-na.ssl-images-amazon.com/images/I/91oWxWJtr2L._SL1500_.jpg',
                    }}
                    style={styles.bannerStyle}
                  />
                </TouchableOpacity>
              </ScrollView>
            </View>

            <View style={styles.listItem}>
              <View style={styles.listItemHeader}>
                <H3 style={[styles.textColorPrimary, styles.h3]}>
                  Now in Cinemas
                </H3>
                <Text style={styles.textColorSecondary}>View all</Text>
              </View>
              <ScrollView
                style={styles.listItemScrollView}
                horizontal={true}
                showsHorizontalScrollIndicator={false}>
                <TouchableOpacity onPress={navigateToMovie}>
                  <Image
                    source={{uri: 'https://i.redd.it/t3tktn59m2x31.jpg'}}
                    style={styles.posterStyle}
                  />
                  <Text style={styles.posterHeading}>Ford v Ferrari</Text>
                  <View style={styles.listItemStarContianer}>
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon name="star" style={styles.star} />
                  </View>
                </TouchableOpacity>
                <TouchableOpacity onPress={navigateToMovie}>
                  <Image
                    source={{
                      uri:
                        'https://specials-images.forbesimg.com/imageserve/5dae0ad2c538200007810d63/960x0.jpg',
                    }}
                    style={styles.posterStyle}
                  />
                  <Text style={styles.posterHeading}>Joker</Text>
                  <View style={styles.listItemStarContianer}>
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon
                      name="star-half"
                      style={[styles.star, styles.starActive]}
                    />
                  </View>
                </TouchableOpacity>
                <TouchableOpacity onPress={navigateToMovie}>
                  <Image
                    source={{
                      uri:
                        'https://cdn.shopify.com/s/files/1/0969/9128/products/Midway_2019_-_Ed_Skrein_-_Hollywood_War_WW2_Movie_Poster_e0326fd4-ec9a-48b8-a6f3-c702a01f75bc.jpg',
                    }}
                    style={styles.posterStyle}
                  />
                  <Text style={styles.posterHeading}>Midway</Text>
                  <View style={styles.listItemStarContianer}>
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon name="star" style={styles.star} />
                    <Icon name="star" style={styles.star} />
                  </View>
                </TouchableOpacity>
              </ScrollView>
            </View>

            <View style={styles.listItem}>
              <View style={styles.listItemHeader}>
                <H3 style={[styles.textColorPrimary, styles.h3]}>
                  Coming Soon
                </H3>
                <Text style={styles.textColorSecondary}>View all</Text>
              </View>
              <ScrollView
                style={styles.listItemScrollView}
                horizontal={true}
                showsHorizontalScrollIndicator={false}>
                <TouchableOpacity onPress={navigateToMovie}>
                  <Image
                    source={{
                      uri:
                        'https://images-na.ssl-images-amazon.com/images/I/31uCUjopLVL.jpg',
                    }}
                    style={styles.posterStyle}
                  />
                  <Text style={styles.posterHeading}>Avatar</Text>
                  <View style={styles.listItemStarContianer}>
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon name="star" style={styles.star} />
                  </View>
                </TouchableOpacity>
                <TouchableOpacity onPress={navigateToMovie}>
                  <Image
                    source={{
                      uri:
                        'https://assets.rappler.co/images/bestmovieposters-looper-20121221-06.jpg',
                    }}
                    style={styles.posterStyle}
                  />
                  <Text style={styles.posterHeading}>Looper</Text>
                  <View style={styles.listItemStarContianer}>
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon name="star" style={styles.star} />
                  </View>
                </TouchableOpacity>
                <TouchableOpacity onPress={navigateToMovie}>
                  <Image
                    source={{
                      uri:
                        'https://qph.fs.quoracdn.net/main-qimg-99625619fae797bd4945e5b96206fcf1',
                    }}
                    style={styles.posterStyle}
                  />
                  <Text style={styles.posterHeading}>Jumanji</Text>
                  <View style={styles.listItemStarContianer}>
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon
                      name="star"
                      style={[styles.star, styles.starActive]}
                    />
                    <Icon name="star" style={styles.star} />
                  </View>
                </TouchableOpacity>
              </ScrollView>
            </View>
          </ScrollView>
        </Body>
      </Container>
    </>
  );
};

export default Home;

const styles = StyleSheet.create({
  container: {
    backgroundColor: '#242B2E',
  },
  header: {
    backgroundColor: '#242B2E',
  },
  avatar: {
    height: 30,
    width: 30,
  },
  body: {
    backgroundColor: '#242B2E',
    width: '90%',
  },
  list: {
    // flex: 1,
    width: '100%',
    backgroundColor: 'white',
  },
  listItem: {
    marginBottom: 15,
  },
  scrollView: {
    //   backgroundColor: "red",
    width: '100%',
  },
  listItemHeader: {
    flex: 1,
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'baseline',
    marginTop: 10,
  },
  h3: {
    fontWeight: 'bold',
  },
  textColorPrimary: {
    color: '#ffffff',
  },
  textColorSecondary: {
    color: '#ffffff90',
  },
  listItemScrollView: {
    marginTop: 10,
  },
  bannerStyle: {
    height: 150,
    width: 250,
    flex: 1,
    borderRadius: 10,
    marginRight: 10,
  },
  posterStyle: {
    height: 200,
    width: 140,
    flex: 1,
    borderRadius: 10,
    marginRight: 10,
  },
  posterHeading: {
    color: '#E2E4DF',
    marginTop: 5,
    marginBottom: 2,
  },
  listItemStarContianer: {
    flexDirection: 'row',
  },
  star: {
    color: '#ffffff90',
    fontSize: 15,
  },
  starActive: {
    color: '#FBB600',
  },
});
