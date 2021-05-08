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
}

class VideoLinks {
  static Map<String, Function> linkMap = {
    "Overview of Python Programming": launchURL1,
    "Datatypes in Python Programming": launchURL1,
    "Creating Variables in Python Programming": launchURL1,
    "print() in Python Programming": launchURL1,
    "input() in Python Programming": launchURL1,
    "Operators in Python Programming": launchURL1,
  };

  static launchURL1() async {
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

  _launchURL2() async {
    const url = 'https://www.youtube.com/watch?v=bqyJRQR_Ml4';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL3() async {
    const url = 'https://www.youtube.com/watch?v=R0oscluaoDU';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL4() async {
    const url = 'https://www.youtube.com/watch?v=T2G9LnAM43Q';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL5() async {
    const url = 'https://www.youtube.com/watch?v=YQIlC5u0sk8';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL6() async {
    const url = 'https://www.youtube.com/watch?v=6OJqKLF2EP8';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  static overviewPythonProgramming() async {
    const url = "https://www.youtube.com/watch?v=0t0AS1abKkw";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
