# CSMay19Api

Api service for accessing CSMay19 bot data.

## Example

```dart
import 'package:cs_may_19_api/cs_may_19_api.dart';

final service = CSMay19Service();

final eventCalender = await service.events();
```

## Api

### `CSMay19Service.events()`

Returns [EventCalender](#eventcalender) object which contains all the current events in bot database.

### `CSMay19Service.lectures()`

Returns [LectureCalender](#lecturecalender) object which contains all the lectures for the week.

### `CSMay19Service.update(String token)`

Has the same return type as events.

Returns [EventCalender](#eventcalender) object which contains all the current events in bot database.

## Things to Note

### EventCalender

**Contains attributes:**

* `lastUpdated` which notes the last time events where updated
* `events` actual list of events

### LectureCalender

**Contains attributes:**

* `lectures` containing the actual lectures

**Has methods:**

* `weekday(int day)` takes number of day and returns all the lectures that start in that day
  week is from **Monday** which is given no. 1, to and **Sunday** which is no. 7

## Planned

* `lastUpdated` for [EventCalender](#eventcalender)
