package App::Plesk::DB::Result::ApsapplicationItem;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::ApsapplicationItem

=cut

__PACKAGE__->table('APSApplicationItems');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 license_type_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 pkg_id

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 shared

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 disabled

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
  'license_type_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'pkg_id',
  {
    data_type => 'integer',
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'shared',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'disabled',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->add_unique_constraint('license_type_id', ['license_type_id', 'pkg_id']);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:AF7vOUN/9hr7wx8gXz21Xw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
