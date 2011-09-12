package App::Plesk::DB::Result::Sbconfig;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::Sbconfig

=cut

__PACKAGE__->table("SBConfig");

=head1 ACCESSORS

=head2 param_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 param_value

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "param_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "param_value",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);
__PACKAGE__->add_unique_constraint("param_name", ["param_name"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:BUy/lukWKTtrJh1r95Q8Lw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
