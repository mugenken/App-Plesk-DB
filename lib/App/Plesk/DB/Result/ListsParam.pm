package App::Plesk::DB::Result::ListsParam;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::ListsParam

=cut

__PACKAGE__->table('ListsParams');

=head1 ACCESSORS

=head2 user_id

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 user_type

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 parentlist_id

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 list_name

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 225

=head2 flags

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 sort

  data_type: 'varchar'
  default_value: 'name'
  is_nullable: 0
  size: 255

=head2 filter

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 page

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=head2 page_size

  data_type: 'integer'
  default_value: 25
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  'user_id',
  {
    data_type => 'integer',
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'user_type',
  {
    data_type => 'integer',
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'parentlist_id',
  {
    data_type => 'integer',
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'list_name',
  { data_type => 'varchar', default_value => '', is_nullable => 0, size => 225 },
  'flags',
  {
    data_type => 'integer',
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'sort',
  {
    data_type => 'varchar',
    default_value => 'name',
    is_nullable => 0,
    size => 255,
  },
  'filter',
  { data_type => 'varchar', default_value => '', is_nullable => 0, size => 255 },
  'page',
  { data_type => 'integer', default_value => 0, is_nullable => 0 },
  'page_size',
  { data_type => 'integer', default_value => 25, is_nullable => 0 },
);
__PACKAGE__->set_primary_key('user_id', 'user_type', 'parentlist_id', 'list_name');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9r2jg0OXm0Zn+Sq9oyRBTQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
