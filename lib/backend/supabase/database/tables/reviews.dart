import '../database.dart';

class ReviewsTable extends SupabaseTable<ReviewsRow> {
  @override
  String get tableName => 'reviews';

  @override
  ReviewsRow createRow(Map<String, dynamic> data) => ReviewsRow(data);
}

class ReviewsRow extends SupabaseDataRow {
  ReviewsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReviewsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get bookingId => getField<String>('booking_id');
  set bookingId(String? value) => setField<String>('booking_id', value);

  String? get guestId => getField<String>('guest_id');
  set guestId(String? value) => setField<String>('guest_id', value);

  String? get propertyId => getField<String>('property_id');
  set propertyId(String? value) => setField<String>('property_id', value);

  int get rating => getField<int>('rating')!;
  set rating(int value) => setField<int>('rating', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
