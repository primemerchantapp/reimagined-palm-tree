import '../database.dart';

class ImagesTable extends SupabaseTable<ImagesRow> {
  @override
  String get tableName => 'images';

  @override
  ImagesRow createRow(Map<String, dynamic> data) => ImagesRow(data);
}

class ImagesRow extends SupabaseDataRow {
  ImagesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ImagesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  String get imageUrl => getField<String>('image_url')!;
  set imageUrl(String value) => setField<String>('image_url', value);

  bool? get isPrimary => getField<bool>('is_primary');
  set isPrimary(bool? value) => setField<bool>('is_primary', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
