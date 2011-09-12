package App::Plesk::DB::Result::TtsConf;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::TtsConf

=cut

__PACKAGE__->table("tts_conf");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 enabled

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ["false","true"]}
  is_nullable: 0

=head2 can_post

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ["false","true"]}
  is_nullable: 0

=head2 def_qu_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 def_pr_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 def_cat_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 mg_enabled

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ["false","true"]}
  is_nullable: 0

=head2 email_address

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 email_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 pop_server

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 pop_username

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 pop_password

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 query_period

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 start_ticket_subj

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "enabled",
  {
    data_type => "enum",
    default_value => "false",
    extra => { list => ["false", "true"] },
    is_nullable => 0,
  },
  "can_post",
  {
    data_type => "enum",
    default_value => "false",
    extra => { list => ["false", "true"] },
    is_nullable => 0,
  },
  "def_qu_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "def_pr_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "def_cat_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "mg_enabled",
  {
    data_type => "enum",
    default_value => "false",
    extra => { list => ["false", "true"] },
    is_nullable => 0,
  },
  "email_address",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "email_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "pop_server",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "pop_username",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "pop_password",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "query_period",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "start_ticket_subj",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ou6A51Sx+UzPdhkRTJPN9g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
