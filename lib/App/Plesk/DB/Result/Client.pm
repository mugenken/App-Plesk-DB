package App::Plesk::DB::Result::Client;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::Client

=cut

__PACKAGE__->table('clients');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 cr_date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 cname

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 pname

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 login

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 account_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 status

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 phone

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 fax

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 address

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 city

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 state

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 pcode

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 country

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 locale

  data_type: 'varchar'
  default_value: 'en-US'
  is_nullable: 0
  size: 17

=head2 limits_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 params_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 perm_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 pool_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 logo_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 tmpl_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 sapp_pool_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 guid

  data_type: 'varchar'
  default_value: '00000000-0000-0000-0000-000000000000'
  is_nullable: 0
  size: 36

=cut

__PACKAGE__->add_columns(
  'id',
  {
    data_type => 'integer',
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  'cr_date',
  { data_type => 'date', datetime_undef_if_invalid => 1, is_nullable => 1 },
  'cname',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
  'pname',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'login',
  { data_type => 'varchar', is_nullable => 0, size => 20 },
  'account_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'status',
  {
    data_type => 'bigint',
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'phone',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
  'fax',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
  'email',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
  'address',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
  'city',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
  'state',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
  'pcode',
  { data_type => 'varchar', is_nullable => 1, size => 10 },
  'country',
  { data_type => 'varchar', is_nullable => 1, size => 2 },
  'locale',
  {
    data_type => 'varchar',
    default_value => 'en-US',
    is_nullable => 0,
    size => 17,
  },
  'limits_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'params_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'perm_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'pool_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'logo_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'tmpl_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'sapp_pool_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'guid',
  {
    data_type => 'varchar',
    default_value => '00000000-0000-0000-0000-000000000000',
    is_nullable => 0,
    size => 36,
  },
);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->add_unique_constraint('login', ['login']);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:iBjrcjtiAMMQRABQoTZICQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
