package App::Plesk::DB::Result::Sbsite;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::Sbsite

=cut

__PACKAGE__->table('SBSites');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 virtualhost_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 sb_site_id

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 sb_siteowner_id

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 sb_siteowner_login

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
  'virtualhost_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'sb_site_id',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
  'sb_siteowner_id',
  { data_type => 'varchar', is_nullable => 1, size => 255 },
  'sb_siteowner_login',
  { data_type => 'varchar', is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key('id');
__PACKAGE__->add_unique_constraint('sb_site_id', ['sb_site_id']);
__PACKAGE__->add_unique_constraint('virtualHost_id', ['virtualhost_id']);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:bWPxEkMEf3uolI3TiY3rxw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
