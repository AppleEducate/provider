import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('root/package/provider/README.md and root/README.mf are identical',
      () async {
    final root = await File.fromUri(Uri.parse(
            '${Directory.current.parent.parent.parent.path}/README.md'))
        .readAsString();
    final local = await File.fromUri(
            Uri.parse('${Directory.current.parent.path}/README.md'))
        .readAsString();

    expect(root, equals(local));
  });
}
