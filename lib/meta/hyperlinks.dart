import 'package:url_launcher/url_launcher.dart';

class ContactUs {
  static workingWithSmileMail() async {
    const url = 'mailto:workingwithsmile@gmail.com?subject=App Feedback';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static visitYouTube() async {
    const url = 'https://www.youtube.com/channel/UCwne7qrrSGVbhq07hBelKig';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  static visitWebsite() async {
    const url = 'https://sites.google.com/view/workingwithsmile-karuna/home';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}

class ResourceLinks {
  static worksheets() async {
    const url =
        'https://sites.google.com/view/workingwithsmile-karuna/python-worksheets';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  static notes() async {
    const url = 'https://sites.google.com/view/workingwithsmile-karuna/notes';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  static resource3() async {
    const url = 'https://www.youtube.com/watch?v=0t0AS1abKkw';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  static resource4() async {
    const url = 'https://www.youtube.com/watch?v=0t0AS1abKkw';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  static resource5() async {
    const url = 'https://www.youtube.com/watch?v=0t0AS1abKkw';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  static resource6() async {
    const url = 'https://www.youtube.com/watch?v=0t0AS1abKkw';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
