import 'dart:io';

void main() {
  // Using List<Map<String, String>> to hole the tasks
  var tasks = <Map<String, String>>[];
  var file = File('tasks.txt');

  // Load existing tasks from file
  if (file.existsSync()) {
    var lines = file.readAsLinesSync();
    for (var line in lines) {
      var parts = line.split('||');
      if (parts.length == 2) {
        tasks.add({'task': parts[0], 'timestamp': parts[1]});
      }
    }
  }

  while (true) {
    stdout.write('Enter a command (add/delete/view/exit): ');
    var command = stdin.readLineSync();

    switch (command) {
      case 'add':
        stdout.write('Enter task to add: ');
        var task = stdin.readLineSync();
        if (task != null && task.trim().isNotEmpty) {
          var timestamp = DateTime.now().toString();
          tasks.add({'task': task, 'timestamp': timestamp});
          print('Task added at $timestamp.');
        } else {
          print("No task added.");
        }
        break;

      case 'delete':
        stdout.write('Enter index of task to delete: ');
        var index = int.tryParse(stdin.readLineSync() ?? '');
        if (index == null || index < 0 || index >= tasks.length) {
          print('Invalid index.');
          break;
        }

        var task = tasks[index];
        print('Are you sure you want to delete: "${task['task']}" added at ${task['timestamp']}?');
        stdout.write('Type YES to confirm or CANCEL to abort: ');
        var confirmation = stdin.readLineSync()?.toUpperCase();

        if (confirmation == 'YES') {
          tasks.removeAt(index);
          print('Task deleted.');
        } else {
          print('Deletion cancelled.');
        }
        break;

      case 'view':
        print('Tasks:');
        for (var i = 0; i < tasks.length; i++) {
          print('$i. ${tasks[i]['task']} (added at ${tasks[i]['timestamp']})');
        }
        break;

      case 'exit':
        print('Goodbye!');
        // Save tasks to file with separator
        var lines = tasks.map((t) => '${t['task']}||${t['timestamp']}').toList();
        file.writeAsStringSync(lines.join('\n'));
        return;

      default:
        print('Invalid command.');
    }
  }
}
