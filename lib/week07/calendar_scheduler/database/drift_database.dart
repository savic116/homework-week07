import 'package:myapp/week07/calendar_scheduler/model/schedule.dart';
import 'package:drift/drift.dart';


part 'drift_database.g.dart'; // part 파일 지정

@DriftDatabase(
  table: [
    Schedules,
  ],
)

class LocalDatabase extends _$LocalDatabase{
  Stream<List<Schedule>> watchSchedules(DateTime date) =>
    (select(schedules)..where((tbl) => tbl.date.equals(date))).watch();
  
  Future<int> creatSchedule(SchedulesCompanion data) =>
    into(schedules).insert(data);
  
  Future<int> removeSchedule(int id) =>
   (delete(Schedules)..where((tbl) => tbl.id.equals(id))).go();

  @override
  int get schemaVersion => 1;
}
