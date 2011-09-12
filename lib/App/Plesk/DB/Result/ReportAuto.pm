package App::Plesk::DB::Result::ReportAuto;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::ReportAuto

=cut

__PACKAGE__->table('report_auto');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 report_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 auto

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 last

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 recipient

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 email

  data_type: 'varchar'
  is_nullable: 0
  size: 254

=head2 client

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 domain

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  'id',
  {
    data_type => 'integer',
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  'report_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'auto',
  {
    data_type => 'integer',
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'last',
  {
    data_type => 'datetime',
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  'recipient',
  {
    data_type => 'integer',
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'email',
  { data_type => 'varchar', is_nullable => 0, size => 254 },
  'client',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'domain',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
);
__PACKAGE__->set_primary_key('id');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:8Re41+n5BbHoI1bZusTp5A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
