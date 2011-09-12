package App::Plesk::DB::Result::ModuleFirewallObject;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::ModuleFirewallObject

=cut

__PACKAGE__->table("module_firewall_objects");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 tag

  data_type: 'varbinary'
  is_nullable: 0
  size: 255

=head2 object

  data_type: 'blob'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "tag",
  { data_type => "varbinary", is_nullable => 0, size => 255 },
  "object",
  { data_type => "blob", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("tag", ["tag"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:AZuQSmw94Y4b3hvpSAjhRw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
