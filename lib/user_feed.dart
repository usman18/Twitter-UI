import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_ui/icon_content.dart';
import 'package:twitter_ui/tweet_model.dart';

import 'tweet_provider.dart';

class UserFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          Tweet tweet = TweetProvider.tweets[index];
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(
                            'https://avatars2.githubusercontent.com/u/40769429?s=460&v=4'),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  tweet.name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  '@' + tweet.userName,
                                  style: TextStyle(
                                    color: Color(0xff6F7982),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              tweet.tweet,
                              style: TextStyle(fontSize: 13),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Visibility(
                                visible: tweet.image == null ? false : true,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQYOFDahDDZNUenjnDv0xdbDhpLc_9FVSNhyZn9Vxmujd6g-8cP',
                                    width: double.infinity,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                IconContent(
                                  icon: FontAwesomeIcons.comment,
                                  content: '2',
                                ),
                                IconContent(
                                  icon: FontAwesomeIcons.retweet,
                                  content: tweet.retweets,
                                ),
                                IconContent(
                                  icon: FontAwesomeIcons.heart,
                                  content: tweet.likes,
                                ),
                                IconContent(
                                  icon: FontAwesomeIcons.shareAlt,
                                  content: '',
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Divider(),
              ],
            ),
          );
        },
        itemCount: TweetProvider.tweets.length,
      ),
    );
  }
}
