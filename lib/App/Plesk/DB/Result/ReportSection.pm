package App::Plesk::DB::Result::ReportSection;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::ReportSection

=cut

__PACKAGE__->table('report_section');

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

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 type

  data_type: 'enum'
  default_value: 'summary'
  extra: {list => ['none','summary','full']}
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
  'report_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'name',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'type',
  {
    data_type => 'enum',
    default_value => 'summary',
    extra => { list => ['none', 'summary', 'full'] },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key('id');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:aCDHwlSyIZDXelLD22jCDA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
