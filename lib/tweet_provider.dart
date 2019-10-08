import 'tweet_model.dart';

class TweetProvider {

        static List<Tweet> tweets = [
                Tweet(userName: 'usman18', tweet: "Hi ! this is a tweet. I am just trying to make it as long as possible. Isn't that awesome", likes: '100', retweets: '4',name: 'Usman Khan', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQYOFDahDDZNUenjnDv0xdbDhpLc_9FVSNhyZn9Vxmujd6g-8cP'),
                Tweet(userName: 'usman18', tweet: 'And this is another one. Without image though.', likes: '124', retweets: '2',name: 'Usman Khan'),
                Tweet(userName: 'usman18', tweet: 'Bye', likes: '78', retweets: '4',name: 'Usman Khan'),
                Tweet(userName: 'usman18', tweet: 'Thank you', likes: '222', retweets: '4',name: 'Usman Khan'),
        ];


}