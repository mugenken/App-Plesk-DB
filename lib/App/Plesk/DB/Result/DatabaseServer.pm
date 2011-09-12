package App::Plesk::DB::Result::DatabaseServer;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::DatabaseServer

=cut

__PACKAGE__->table('DatabaseServers');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 host

  data_type: 'varchar'
  is_nullable: 0
  size: 63

=head2 port

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 type

  data_type: 'enum'
  extra: {list => ['mysql','postgresql']}
  is_nullable: 0

=head2 admin_login

  data_type: 'varbinary'
  is_nullable: 0
  size: 255

=head2 admin_password

  data_type: 'varbinary'
  is_nullable: 0
  size: 255

=head2 last_error

  data_type: 'enum'
  default_value: 'no_error'
  extra: {list => ['no_error','connection_failed','permission_denied','other_error','credentials_not_set']}
  is_nullable: 0

=head2 server_version

  data_type: 'varbinary'
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
  'host',
  { data_type => 'varchar', is_nullable => 0, size => 63 },
  'port',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'type',
  {
    data_type => 'enum',
    extra => { list => ['mysql', 'postgresql'] },
    is_nullable => 0,
  },
  'admin_login',
  { data_type => 'varbinary', is_nullable => 0, size => 255 },
  'admin_password',
  { data_type => 'varbinary', is_nullable => 0, size => 255 },
  'last_error',
  {
    data_type => 'enum',
    default_value => 'no_error',
    extra => {
      list => [
        'no_error',
        'connection_failed',
        'permission_denied',
        'other_error',
        'credentials_not_set',
      ],
    },
    is_nullable => 0,
  },
  'server_version',
  { data_type => 'varbinary', is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key('id');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:B59JPJHgK7CGFYHj7u7mkQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
