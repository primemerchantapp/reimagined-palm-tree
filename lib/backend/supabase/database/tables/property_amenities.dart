import '../database.dart';

class PropertyAmenitiesTable extends SupabaseTable<PropertyAmenitiesRow> {
  @override
  String get tableName => 'property_amenities';

  @override
  PropertyAmenitiesRow createRow(Map<String, dynamic> data) =>
      PropertyAmenitiesRow(data);
}

class PropertyAmenitiesRow extends SupabaseDataRow {
  PropertyAmenitiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertyAmenitiesTable();

  String get propertyId => getField<String>('property_id')!;
  set propertyId(String value) => setField<String>('property_id', value);

  String get amenityId => getField<String>('amenity_id')!;
  set amenityId(String value) => setField<String>('amenity_id', value);
}
