package App::Plesk::DB::Result::SiteAppPackage;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::SiteAppPackage

=cut

__PACKAGE__->table('SiteAppPackages');

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

=head2 version

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 release

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 categories

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 description

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 access_level

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 integrated

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ['false','true']}
  is_nullable: 0

=head2 package_type

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 params_id

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
  'name',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'version',
  { data_type => 'varchar', is_nullable => 0, size => 30 },
  'release',
  { data_type => 'varchar', is_nullable => 0, size => 30 },
  'categories',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
  'description',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
  'access_level',
  {
    data_type => 'integer',
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'integrated',
  {
    data_type => 'enum',
    default_value => 'false',
    extra => { list => ['false', 'true'] },
    is_nullable => 0,
  },
  'package_type',
  {
    data_type => 'integer',
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'params_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->add_unique_constraint('name', ['name', 'version']);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:EAMpxbXx1rwm7IKVOb5MBQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
