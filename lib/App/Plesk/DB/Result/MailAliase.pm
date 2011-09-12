package App::Plesk::DB::Result::MailAliase;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::MailAliase

=cut

__PACKAGE__->table("mail_aliases");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 mn_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 alias

  data_type: 'varchar'
  is_nullable: 0
  size: 245

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "mn_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "alias",
  { data_type => "varchar", is_nullable => 0, size => 245 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("mn_id", ["mn_id", "alias"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2SwkxMuuJ7pgpBhf0EUgIw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
