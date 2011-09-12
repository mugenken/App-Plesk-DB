package App::Plesk::DB::Result::SiteApp;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::SiteApp

=cut

__PACKAGE__->table('SiteApps');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 app_release

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 dom_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 dom_type

  data_type: 'enum'
  default_value: 'domain'
  extra: {list => ['domain','subdomain']}
  is_nullable: 0

=head2 install_prefix

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 htdocs_directory

  data_type: 'enum'
  default_value: 'httpdocs'
  extra: {list => ['httpdocs','httpsdocs']}
  is_nullable: 0

=head2 capp_item_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 params_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 license_id

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
  'app_release',
  { data_type => 'varchar', is_nullable => 0, size => 30 },
  'dom_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'dom_type',
  {
    data_type => 'enum',
    default_value => 'domain',
    extra => { list => ['domain', 'subdomain'] },
    is_nullable => 0,
  },
  'install_prefix',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
  'htdocs_directory',
  {
    data_type => 'enum',
    default_value => 'httpdocs',
    extra => { list => ['httpdocs', 'httpsdocs'] },
    is_nullable => 0,
  },
  'capp_item_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'params_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
  'license_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 1 },
);
__PACKAGE__->set_primary_key('id');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:0FxGsB7afiPxV1ZEJShCvQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
