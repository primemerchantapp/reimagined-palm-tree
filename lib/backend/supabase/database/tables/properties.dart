import '../database.dart';

class PropertiesTable extends SupabaseTable<PropertiesRow> {
  @override
  String get tableName => 'properties';

  @override
  PropertiesRow createRow(Map<String, dynamic> data) => PropertiesRow(data);
}

class PropertiesRow extends SupabaseDataRow {
  PropertiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PropertiesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get hostId => getField<String>('host_id');
  set hostId(String? value) => setField<String>('host_id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String get propertyType => getField<String>('property_type')!;
  set propertyType(String value) => setField<String>('property_type', value);

  double get pricePerNight => getField<double>('price_per_night')!;
  set pricePerNight(double value) => setField<double>('price_per_night', value);

  int get bedrooms => getField<int>('bedrooms')!;
  set bedrooms(int value) => setField<int>('bedrooms', value);

  int get bathrooms => getField<int>('bathrooms')!;
  set bathrooms(int value) => setField<int>('bathrooms', value);

  int get maxGuests => getField<int>('max_guests')!;
  set maxGuests(int value) => setField<int>('max_guests', value);

  String get address => getField<String>('address')!;
  set address(String value) => setField<String>('address', value);

  String get city => getField<String>('city')!;
  set city(String value) => setField<String>('city', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String get country => getField<String>('country')!;
  set country(String value) => setField<String>('country', value);

  String? get zipCode => getField<String>('zip_code');
  set zipCode(String? value) => setField<String>('zip_code', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
