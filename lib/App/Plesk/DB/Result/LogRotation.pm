package App::Plesk::DB::Result::LogRotation;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::LogRotation

=cut

__PACKAGE__->table('log_rotation');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 period_type

  data_type: 'enum'
  default_value: 'by_time'
  extra: {list => ['by_time','by_size']}
  is_nullable: 0

=head2 period

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 max_number_of_logfiles

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 1

=head2 compress_enable

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 turned_on

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
  'period_type',
  {
    data_type => 'enum',
    default_value => 'by_time',
    extra => { list => ['by_time', 'by_size'] },
    is_nullable => 0,
  },
  'period',
  { data_type => 'varchar', is_nullable => 1, size => 50 },
  'max_number_of_logfiles',
  {
    data_type => 'bigint',
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 1,
  },
  'compress_enable',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'email',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
  'turned_on',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key('id');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ljai/4Sra95CdWOnCOGlQQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
