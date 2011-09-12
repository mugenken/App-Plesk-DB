package App::Plesk::DB::Result::Certificate;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::Certificate

=cut

__PACKAGE__->table('certificates');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 csr

  data_type: 'blob'
  is_nullable: 0

=head2 pvt_key

  data_type: 'blob'
  is_nullable: 0

=head2 cert

  data_type: 'blob'
  is_nullable: 0

=head2 cert_file

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 ca_cert

  data_type: 'blob'
  is_nullable: 0

=head2 ca_file

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 255

=head2 name

  data_type: 'varchar'
  default_value: (empty string)
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
  'csr',
  { data_type => 'blob', is_nullable => 0 },
  'pvt_key',
  { data_type => 'blob', is_nullable => 0 },
  'cert',
  { data_type => 'blob', is_nullable => 0 },
  'cert_file',
  { data_type => 'varchar', default_value => '', is_nullable => 0, size => 255 },
  'ca_cert',
  { data_type => 'blob', is_nullable => 0 },
  'ca_file',
  { data_type => 'varchar', default_value => '', is_nullable => 0, size => 255 },
  'name',
  { data_type => 'varchar', default_value => '', is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key('id');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:HLt9RIZrE0qzjYwEMI7zxw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
