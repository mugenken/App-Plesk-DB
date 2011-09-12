package App::Plesk::DB::Result::PdUser;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::PdUser

=cut

__PACKAGE__->table("pd_users");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 login

  data_type: 'varchar'
  is_nullable: 0
  size: 20

=head2 account_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 pd_id

  data_type: 'integer'
  extra: {unsigned => 1}
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
  "login",
  { data_type => "varchar", is_nullable => 0, size => 20 },
  "account_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "pd_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("pd_id", ["pd_id", "login"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Omj6C4QNScXAEqrCqEWp9g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
