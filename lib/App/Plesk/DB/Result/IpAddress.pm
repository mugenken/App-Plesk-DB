package App::Plesk::DB::Result::IpAddress;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::IpAddress

=cut

__PACKAGE__->table('IP_Addresses');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 ip_address

  data_type: 'varchar'
  is_nullable: 0
  size: 15

=head2 mask

  data_type: 'varchar'
  default_value: '255.255.255.0'
  is_nullable: 0
  size: 15

=head2 iface

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 type

  data_type: 'enum'
  default_value: 'shared'
  extra: {list => ['shared','exclusive']}
  is_nullable: 0

=head2 ssl_certificate_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 default_domain_id

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
  'ip_address',
  { data_type => 'varchar', is_nullable => 0, size => 15 },
  'mask',
  {
    data_type => 'varchar',
    default_value => '255.255.255.0',
    is_nullable => 0,
    size => 15,
  },
  'iface',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'type',
  {
    data_type => 'enum',
    default_value => 'shared',
    extra => { list => ['shared', 'exclusive'] },
    is_nullable => 0,
  },
  'ssl_certificate_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'default_domain_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->add_unique_constraint('ip_address', ['ip_address']);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:aj9P8Tt619YGK2NEX73Cfw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
