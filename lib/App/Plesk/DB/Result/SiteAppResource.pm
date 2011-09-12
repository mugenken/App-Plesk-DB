package App::Plesk::DB::Result::SiteAppResource;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::SiteAppResource

=cut

__PACKAGE__->table('SiteAppResources');

=head1 ACCESSORS

=head2 app_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 type

  data_type: 'enum'
  default_value: 'database'
  extra: {list => ['database','dbuser','custom_button']}
  is_nullable: 0

=head2 res_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 res_param_1

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  'app_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'type',
  {
    data_type => 'enum',
    default_value => 'database',
    extra => { list => ['database', 'dbuser', 'custom_button'] },
    is_nullable => 0,
  },
  'res_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'res_param_1',
  { data_type => 'varchar', default_value => '', is_nullable => 1, size => 255 },
);
__PACKAGE__->add_unique_constraint('type', ['type', 'res_id']);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:fSzft3J2tm+oCDjaPvKgjQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
