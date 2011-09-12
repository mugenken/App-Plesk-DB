package App::Plesk::DB::Result::CustomButton;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::CustomButton

=cut

__PACKAGE__->table('custom_buttons');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 sort_key

  data_type: 'integer'
  default_value: 100
  extra: {unsigned => 1}
  is_nullable: 0

=head2 level

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 level_id

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 place

  data_type: 'enum'
  default_value: 'domain'
  extra: {list => ['domain','client','admin','navigation']}
  is_nullable: 0

=head2 text

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 url

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 conhelp

  data_type: 'text'
  is_nullable: 1

=head2 options

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 file

  data_type: 'varchar'
  is_nullable: 0
  size: 245

=cut

__PACKAGE__->add_columns(
  'id',
  {
    data_type => 'integer',
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  'sort_key',
  {
    data_type => 'integer',
    default_value => 100,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'level',
  {
    data_type => 'integer',
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'level_id',
  {
    data_type => 'integer',
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'place',
  {
    data_type => 'enum',
    default_value => 'domain',
    extra => { list => ['domain', 'client', 'admin', 'navigation'] },
    is_nullable => 0,
  },
  'text',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'url',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
  'conhelp',
  { data_type => 'text', is_nullable => 1 },
  'options',
  {
    data_type => 'integer',
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'file',
  { data_type => 'varchar', is_nullable => 0, size => 245 },
);
__PACKAGE__->set_primary_key('id');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QGfzVYCefwyZjflNLc+cqQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
