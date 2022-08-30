# Expendable Fab Menu
[![Pub](https://img.shields.io/pub/v/expendable_fab.svg)](https://pub.dev/packages/expendable_fab)
[![Pull Requests are welcome](https://img.shields.io/badge/license-MIT-blue)](https://github.com/ahmadalibaloch/FlutterExpendableFab/blob/master/LICENSE)
[![Codemagic build status](https://api.codemagic.io/apps/613966b6d1095af263a57f02/613966b6d1095af263a57f01/status_badge.svg)](https://codemagic.io/apps/613966b6d1095af263a57f02/613966b6d1095af263a57f01/latest_build)
![Null safety](https://img.shields.io/badge/null%20safety-true-brightgreen)

A flutter expendable simple FAB Floating Action Button menu

![Showcase](https://github.com/ahmadalibaloch/FlutterExpendableFab/blob/master/example/screenshots/expended.png)

## Installation

Just add `expendable_fab` to your [pubspec.yml](https://flutter.io/using-packages/) file

```yml
dependencies:
  expendable_fab: ^0.0.1
```

## Example

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Placeholder(),
        floatingActionButton: ExpendableFab(
          icon: Icon(Icons.favorite),
          closeIcon: Icon(Icons.close),
          distance: 112.0,
          children: [
            ActionButton(
              onPressed: () => toast(context, 'balance'),
              icon: const Icon(Icons.account_balance),
            ),
            ActionButton(
              onPressed: () => toast(context, 'money'),
              icon: const Icon(Icons.money),
            ),
          ],
        ),
      ),
    );
  }
}
```


You can check for a more complete example in the [example](https://github.com/ahmadalibaloch/FlutterExpendableFab/tree/master/example) directory.

## Customize

You can customize the widget appareance using the following properties:

| Property  | Description | Default |
|----------|-------------|---------|
| distance | Sets the widget distance from bottom and right side | `112` |
| icon     | The FAB initial icon | `Icon(Icons.create)` |
| closeIcon     | The FAB close icon | `Icon(Icons.close)` |

## Contributing

Please submit a PR 😁, I want to have
1 ) action buttons customization
2 ) button customization
3 ) more animations