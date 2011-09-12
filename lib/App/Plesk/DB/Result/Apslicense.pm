package App::Plesk::DB::Result::Apslicense;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::Apslicense

=cut

__PACKAGE__->table('APSLicenses');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 key_number

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 source

  data_type: 'text'
  is_nullable: 0

=head2 ka_url

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 expiration_date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 update_date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 license_type_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 personal

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  'id',
  {
    data_type => 'integer',
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  'key_number',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'source',
  { data_type => 'text', is_nullable => 0 },
  'ka_url',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'expiration_date',
  { data_type => 'date', datetime_undef_if_invalid => 1, is_nullable => 1 },
  'update_date',
  { data_type => 'date', datetime_undef_if_invalid => 1, is_nullable => 1 },
  'license_type_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'personal',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->add_unique_constraint('key_number', ['key_number']);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jd4rF6wSi/jfXormYLhGRw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
