package App::Plesk::DB::Result::Domain;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::Domain

=cut

__PACKAGE__->table('domains');

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

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 displayname

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 dns_zone_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 status

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 htype

  data_type: 'enum'
  extra: {list => ['none','vrt_hst','std_fwd','frm_fwd']}
  is_nullable: 0

=head2 real_size

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 cl_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 cert_rep_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 limits_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 params_id

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
  'name',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'displayname',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'dns_zone_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'status',
  {
    data_type => 'bigint',
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'htype',
  {
    data_type => 'enum',
    extra => { list => ['none', 'vrt_hst', 'std_fwd', 'frm_fwd'] },
    is_nullable => 0,
  },
  'real_size',
  {
    data_type => 'bigint',
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  'cl_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'cert_rep_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'limits_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'params_id',
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
__PACKAGE__->add_unique_constraint('name', ['name']);
__PACKAGE__->has_many('mails', 'App::Plesk::DB::Result::Mail', 'dom_id');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:tch/QI3fJOPPiRoq+vA87w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
