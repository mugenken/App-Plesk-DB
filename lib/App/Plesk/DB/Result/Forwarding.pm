package App::Plesk::DB::Result::Forwarding;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::Forwarding

=cut

__PACKAGE__->table("forwarding");

=head1 ACCESSORS

=head2 dom_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ip_address_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 redirect

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "dom_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "ip_address_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "redirect",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);
__PACKAGE__->set_primary_key("dom_id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:qocCeTViaiQ0Dcicga+VAg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
