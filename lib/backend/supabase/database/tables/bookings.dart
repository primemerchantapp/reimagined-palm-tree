import '../database.dart';

class BookingsTable extends SupabaseTable<BookingsRow> {
  @override
  String get tableName => 'bookings';

  @override
  BookingsRow createRow(Map<String, dynamic> data) => BookingsRow(data);
}

class BookingsRow extends SupabaseDataRow {
  BookingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BookingsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get guestId => getField<String>('guest_id');
  set guestId(String? value) => setField<String>('guest_id', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  DateTime get checkInDate => getField<DateTime>('check_in_date')!;
  set checkInDate(DateTime value) => setField<DateTime>('check_in_date', value);

  DateTime get checkOutDate => getField<DateTime>('check_out_date')!;
  set checkOutDate(DateTime value) =>
      setField<DateTime>('check_out_date', value);

  double get totalPrice => getField<double>('total_price')!;
  set totalPrice(double value) => setField<double>('total_price', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
