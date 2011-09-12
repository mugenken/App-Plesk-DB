package App::Plesk::DB::Result::UpgradeHistory;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::UpgradeHistory

=cut

__PACKAGE__->table('upgrade_history');

=head1 ACCESSORS

=head2 upgrade_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 version_info

  data_type: 'varchar'
  is_nullable: 0
  size: 50

=head2 db_version

  data_type: 'varchar'
  is_nullable: 0
  size: 8

=cut

__PACKAGE__->add_columns(
  'upgrade_date',
  {
    data_type => 'datetime',
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  'version_info',
  { data_type => 'varchar', is_nullable => 0, size => 50 },
  'db_version',
  { data_type => 'varchar', is_nullable => 0, size => 8 },
);
__PACKAGE__->set_primary_key('upgrade_date');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:YGSOJNCw0ume2KctHgJ5Bw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
