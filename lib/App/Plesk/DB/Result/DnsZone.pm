package App::Plesk::DB::Result::DnsZone;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::DnsZone

=cut

__PACKAGE__->table('dns_zone');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 displayname

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 status

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 type

  data_type: 'enum'
  default_value: 'master'
  extra: {list => ['slave','master']}
  is_nullable: 0

=head2 ttl

  data_type: 'integer'
  default_value: 86400
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ttl_unit

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_nullable: 0

=head2 refresh

  data_type: 'integer'
  default_value: 10800
  extra: {unsigned => 1}
  is_nullable: 0

=head2 refresh_unit

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_nullable: 0

=head2 retry

  data_type: 'integer'
  default_value: 3600
  extra: {unsigned => 1}
  is_nullable: 0

=head2 retry_unit

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_nullable: 0

=head2 expire

  data_type: 'integer'
  default_value: 604800
  extra: {unsigned => 1}
  is_nullable: 0

=head2 expire_unit

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_nullable: 0

=head2 minimum

  data_type: 'integer'
  default_value: 10800
  extra: {unsigned => 1}
  is_nullable: 0

=head2 minimum_unit

  data_type: 'integer'
  default_value: 1
  extra: {unsigned => 1}
  is_nullable: 0

=head2 serial_format

  data_type: 'enum'
  default_value: 'UNIXTIMESTAMP'
  extra: {list => ['UNIXTIMESTAMP','YYYYMMDDNN']}
  is_nullable: 0

=head2 serial

  data_type: 'varchar'
  default_value: 0
  is_nullable: 0
  size: 12

=cut

__PACKAGE__->add_columns(
  'id',
  {
    data_type => 'integer',
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  'name',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'displayname',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'status',
  {
    data_type => 'integer',
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'email',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
  'type',
  {
    data_type => 'enum',
    default_value => 'master',
    extra => { list => ['slave', 'master'] },
    is_nullable => 0,
  },
  'ttl',
  {
    data_type => 'integer',
    default_value => 86400,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'ttl_unit',
  {
    data_type => 'integer',
    default_value => 1,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'refresh',
  {
    data_type => 'integer',
    default_value => 10800,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'refresh_unit',
  {
    data_type => 'integer',
    default_value => 1,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'retry',
  {
    data_type => 'integer',
    default_value => 3600,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'retry_unit',
  {
    data_type => 'integer',
    default_value => 1,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'expire',
  {
    data_type => 'integer',
    default_value => 604800,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'expire_unit',
  {
    data_type => 'integer',
    default_value => 1,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'minimum',
  {
    data_type => 'integer',
    default_value => 10800,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'minimum_unit',
  {
    data_type => 'integer',
    default_value => 1,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'serial_format',
  {
    data_type => 'enum',
    default_value => 'UNIXTIMESTAMP',
    extra => { list => ['UNIXTIMESTAMP', 'YYYYMMDDNN'] },
    is_nullable => 0,
  },
  'serial',
  { data_type => 'varchar', default_value => 0, is_nullable => 0, size => 12 },
);
__PACKAGE__->set_primary_key('id');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ayz/OC4fvDWJ6xWtuDFwTA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
