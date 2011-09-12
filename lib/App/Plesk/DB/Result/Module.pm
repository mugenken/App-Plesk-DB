package App::Plesk::DB::Result::Module;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::Module

=cut

__PACKAGE__->table('Modules');

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

=head2 packname

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 display_name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 version

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 release

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 description

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 icon

  data_type: 'varchar'
  is_nullable: 0
  size: 255

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
  'packname',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'display_name',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'version',
  { data_type => 'varchar', is_nullable => 0, size => 30 },
  'release',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'description',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
  'icon',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->add_unique_constraint('name', ['name']);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7Gm1sN+5cHIiyn66KywYFw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
