import 'package:args/command_runner.dart';

import '../../slidy.dart';

class StartCommand extends Command {
  final name = "start";
  final description =
      "Create a basic structure for your project (confirm that you have no data in the \"lib\" folder).";

  StartCommand() {
    argParser.addFlag('force',
        abbr: 'f',
        negatable: false,
        help:
            "Remove the \"lib\" folder and all files before create the structure");
  }

  void run() {
    start(argResults["force"]);
  }
}