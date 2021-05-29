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

class ExamplesLinks {
  static Map<String, Function> linkMap = {
    "Hello, World!": launchURL1,
    "Add Two Numbers": launchURL1,
    "Square Root": launchURL1,
    "Area of Triangle": launchURL1,
    "Swap Two Variables": launchURL1,
    "Find Roots of a Quadratic Equation": launchURL1,
    "Convert Kilometers into Miles": launchURL1,
    "Convert Celsius to Fahrenheit": launchURL1,
    "Check if a Number is Positive, Negative or Zero": launchURL1,
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
