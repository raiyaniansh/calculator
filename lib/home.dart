import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String f = '';
  String s = '';
  String l = '';
  String ans ='';
  
  int fi=0;
  int li=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 250,
                  height: 250,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blue.shade400,
                              blurRadius: 500,
                              spreadRadius: 100)
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 170,top: 600),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blue.shade400,
                              blurRadius: 250,
                              spreadRadius: 50)
                        ]),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 784,
                  color: Colors.transparent.withOpacity(0.40),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        width: 250,
                        height: 320,
                        alignment: Alignment.centerRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("$f",style: TextStyle(color: Colors.white,fontSize: 30)),
                                Text("$s",style: TextStyle(color: Colors.blue,fontSize: 30)),
                                Text("$l",style: TextStyle(color: Colors.white,fontSize: 30)),
                              ],
                            ),
                            SizedBox(height: 50,),
                            Align(alignment: Alignment.bottomRight,child: Text("$ans",style: TextStyle(color: Colors.blue,fontSize: 70))),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  f = '';
                                  s = '';
                                  l = '';
                                  ans = '';
                                });
                              },
                              child: Container(
                                  width: 75,
                                  height: 75,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    "AC",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  s = '+';
                                });
                              },
                              child: Container(
                                  width: 75,
                                  height: 75,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 50),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  s = '-';
                                });
                              },
                              child: Container(
                                  width: 75,
                                  height: 75,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 50),
                                  )),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                s = 'X';
                              });
                            },
                            child: Container(
                                width: 75,
                                height: 75,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  "X",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                )),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          if(s=='+'||s=='-'||s=='X'||s=='/'||s=='%')
                                          {
                                            l = l +'7';
                                          }
                                          else
                                          {
                                            f = f + '7';
                                          }
                                        });
                                      },
                                      child: Box2("7")),
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          if(s=='+'||s=='-'||s=='X'||s=='/'||s=='%')
                                            {
                                              l = l +'8';
                                            }
                                          else
                                            {
                                              f = f + '8';
                                            }
                                        });
                                      },
                                      child: Box2("8")),
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          if(s=='+'||s=='-'||s=='X'||s=='/'||s=='%')
                                          {
                                            l = l +'9';
                                          }
                                          else
                                          {
                                            f = f + '9';
                                          }
                                        });
                                      },
                                      child: Box2("9")),
                                ],
                              ),
                              Row(
                                children: [
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          if(s=='+'||s=='-'||s=='X'||s=='/'||s=='%')
                                          {
                                            l = l +'4';
                                          }
                                          else
                                          {
                                            f = f + '4';
                                          }
                                        });
                                      },
                                      child: Box2("4")),
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          if(s=='+'||s=='-'||s=='X'||s=='/'||s=='%')
                                          {
                                            l = l +'5';
                                          }
                                          else
                                          {
                                            f = f + '5';
                                          }
                                        });
                                      },
                                      child: Box2("5")),
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          if(s=='+'||s=='-'||s=='X'||s=='/'||s=='%')
                                          {
                                            l = l +'6';
                                          }
                                          else
                                          {
                                            f = f + '6';
                                          }
                                        });
                                      },
                                      child: Box2("6")),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    s='/';
                                  });
                                },
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text("/",
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.white)),
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    s='%';
                                  });
                                },
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text("%",
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.white)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          if(s=='+'||s=='-'||s=='X'||s=='/'||s=='%')
                                          {
                                            l = l +'1';
                                          }
                                          else
                                          {
                                            f = f + '1';
                                          }
                                        });
                                      },
                                      child: Box2("1")),
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          if(s=='+'||s=='-'||s=='X'||s=='/'||s=='%')
                                          {
                                            l = l +'2';
                                          }
                                          else
                                          {
                                            f = f + '2';
                                          }
                                        });
                                      },
                                      child: Box2("2")),
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          if(s=='+'||s=='-'||s=='X'||s=='/'||s=='%')
                                          {
                                            l = l +'3';
                                          }
                                          else
                                          {
                                            f = f + '3';
                                          }
                                        });
                                      },
                                      child: Box2("3")),
                                ],
                              ),
                              Row(
                                children: [
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          f = f + '00';
                                        });
                                      },
                                      child: Box2("00")),
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          f = f + '0';
                                        });
                                      },
                                      child: Box2("0")),
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          f = f + '.';
                                        });
                                      },
                                      child: Box2(".")),
                                ],
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                li = int.parse(l);
                                fi = int.parse(f);
                                if(s=='+')
                                  {
                                    ans="= ${fi+li}";
                                  }
                                else if(s=='-')
                                  {
                                    ans="= ${fi-li}";
                                  }
                                else if(s=='X')
                                {
                                  ans="= ${fi*li}";
                                }
                                else if(s=='/')
                                {
                                  ans="= ${fi/li}";
                                }
                                else if(s=='%')
                                {
                                  ans="= ${fi%li}";
                                }
                              });
                            },
                            child: Container(
                              width: 75,
                              height: 175,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text("=",
                                  style: TextStyle(
                                      fontSize: 50, color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget Box2(String data) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 75,
        width: 75,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.transparent.withOpacity(0.40),
            borderRadius: BorderRadius.circular(20)),
        child: Text("$data",
            style: TextStyle(fontSize: 50, color: Colors.blueAccent)),
      ),
    );
  }
}
