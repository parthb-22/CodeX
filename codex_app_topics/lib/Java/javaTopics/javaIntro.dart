import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';

class JavaIntro extends StatelessWidget {
  JavaIntro({super.key});
  List IntroCodes = [
    '''
    class Demo {
      
    }
    ''',
    '''

      public class Demo {
         public static void main(String[]args){

      }
    }
    ''',
    '''
    class Demo {
      public static void main(String[]args){
        System.out.println("Hello Word");
      }
    }
    ''',
    '''
    class Demo {
      public static void main(String[]args){
        System.out.println("Hello Word");
      }
    }
    ''',
    '''
    class Demo {
      public static void main(String[]args){
        System.out.println("Hello Word");
      }
    }
    ''',
    '''
    class Demo {
      public static void main(String[]args){
        System.out.println("Hello Word");
      }
    }
    ''',
    '''
    class Demo {
      public static void main(String[]args){
        System.out.println("Hello Word");
      }
    }
    ''',
    '''
    class Demo {
      public static void main(String[]args){
        System.out.println("Hello Word");
      }
    }
    ''',
    '''
    class Demo {
      public static void main(String[]args){
        System.out.println("Hello Word");
      }
    }
    ''',
    '''
    class Demo {
      public static void main(String[]args){
        System.out.println("Hello Word");
      }
    }
    '''
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Introduction to Java"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
            itemCount: IntroCodes.length,
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20, top: 10),
                          child: Text("Program ${index + 1}"),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(20),
                      child: HighlightView(
                        "${IntroCodes[index]}",
                        languageId: "java",
                        theme: githubDarkDimmedTheme,
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
