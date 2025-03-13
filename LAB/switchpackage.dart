import 'package:switchpackage/switchpackage.dart';
import 'package:switchpackage/switchvar.dart'
import 'dart:io';

void main(List<String> arguments) {
	switchpackage sp = switchpackage();
	print("Enter color: ");
	String color = stdin.readLineSync()!;
	print(sp.checkcolor("color"));
	print("Enter season: ");
	String season = stdin.readLineSync()!;
	switchvar = switchvar();
	sv.checkMonths(season);
}