package App::Plesk::DB::Result::ApslicenseType;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::ApslicenseType

=cut

__PACKAGE__->table('APSLicenseTypes');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 application_name

  data_type: 'varchar'
  is_nullable: 0
  size: 122

=head2 application_versions

  data_type: 'varchar'
  is_nullable: 0
  size: 122

=head2 application_features

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 license_type_hash

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 description

  data_type: 'varchar'
  is_nullable: 1
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
  'application_name',
  { data_type => 'varchar', is_nullable => 0, size => 122 },
  'application_versions',
  { data_type => 'varchar', is_nullable => 0, size => 122 },
  'application_features',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'license_type_hash',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'description',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->add_unique_constraint('license_type_hash', ['license_type_hash']);
__PACKAGE__->add_unique_constraint(
  'application_name',
  [
    'application_name',
    'application_versions',
    'application_features',
  ],
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ikoJbCSJcpf1akZMaZ/PlA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
