package App::Plesk::DB::Result::EventHandler;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::EventHandler

=cut

__PACKAGE__->table('event_handlers');

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 action_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 priority

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 user

  data_type: 'varchar'
  default_value: 'nobody'
  is_nullable: 0
  size: 255

=head2 command

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  'id',
  {
    data_type => 'integer',
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  'action_id',
  { data_type => 'integer', extra => { unsigned => 1 }, is_nullable => 0 },
  'priority',
  {
    data_type => 'integer',
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  'user',
  {
    data_type => 'varchar',
    default_value => 'nobody',
    is_nullable => 0,
    size => 255,
  },
  'command',
  { data_type => 'text', is_nullable => 0 },
);
__PACKAGE__->set_primary_key('id');


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:IuOpTBEUgiNhdnIPOC1whA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
