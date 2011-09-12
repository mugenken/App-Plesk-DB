package App::Plesk::DB::Result::LogComponent;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::LogComponent

=cut

__PACKAGE__->table('log_components');

=head1 ACCESSORS

=head2 action_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 component

  data_type: 'varchar'
  is_nullable: 0
  size: 245

=head2 old_value

  data_type: 'varbinary'
  is_nullable: 0
  size: 255

=head2 new_value

  data_type: 'varbinary'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  'action_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'component',
  { data_type => 'varchar', is_nullable => 0, size => 245 },
  'old_value',
  { data_type => 'varbinary', is_nullable => 0, size => 255 },
  'new_value',
  { data_type => 'varbinary', is_nullable => 0, size => 255 },
);
__PACKAGE__->set_primary_key('action_id', 'component');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Pl+X1QH+PqsG7OP+9uKWFw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
