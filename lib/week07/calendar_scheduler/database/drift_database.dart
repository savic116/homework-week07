import 'package:myapp/week07/calendar_scheduler/model/schedule.dart';
import 'package:drift/drift.dart';


part 'drift_database.g.dart'; // part 파일 지정

@DriftDatabase(
  table: [
    Schedules,
  ],
)

class LocalDatabase extends _$LocalDatabase{}
