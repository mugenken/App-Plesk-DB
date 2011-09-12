package App::Plesk::DB::Result::DataBase;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::DataBase

=cut

__PACKAGE__->table('data_bases');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 0
  size: 63

=head2 type

  data_type: 'enum'
  default_value: 'mysql'
  extra: {list => ['mysql','postgresql','mssql']}
  is_nullable: 0

=head2 dom_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 db_server_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 default_user_id

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
  { data_type => 'varchar', is_nullable => 0, size => 63 },
  'type',
  {
    data_type => 'enum',
    default_value => 'mysql',
    extra => { list => ['mysql', 'postgresql', 'mssql'] },
    is_nullable => 0,
  },
  'dom_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'db_server_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'default_user_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->add_unique_constraint('name', ['name', 'db_server_id']);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5qeos3XKYDMSerSQEAP1Bw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
