import '../database.dart';

class AmenitiesTable extends SupabaseTable<AmenitiesRow> {
  @override
  String get tableName => 'amenities';

  @override
  AmenitiesRow createRow(Map<String, dynamic> data) => AmenitiesRow(data);
}

class AmenitiesRow extends SupabaseDataRow {
  AmenitiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AmenitiesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get iconUrl => getField<String>('icon_url');
  set iconUrl(String? value) => setField<String>('icon_url', value);
}
