package App::Plesk::DB::Result::MailResp;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::MailResp

=cut

__PACKAGE__->table("mail_resp");

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

=head2 resp_name

  data_type: 'varchar'
  is_nullable: 0
  size: 245

=head2 keystr

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 key_where

  data_type: 'enum'
  default_value: 'no'
  extra: {list => ["subj","body","no"]}
  is_nullable: 0

=head2 subject

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 reply_to

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 content_type

  data_type: 'varchar'
  default_value: 'text/plain'
  is_nullable: 0
  size: 245

=head2 charset

  data_type: 'varchar'
  default_value: 'UTF-8'
  is_nullable: 0
  size: 245

=head2 text

  data_type: 'mediumtext'
  is_nullable: 1

=head2 resp_on

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ["false","true"]}
  is_nullable: 0

=head2 ans_freq

  data_type: 'integer'
  default_value: 10
  is_nullable: 1

=head2 mem_limit

  data_type: 'integer'
  default_value: 1000
  is_nullable: 1

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
  "resp_name",
  { data_type => "varchar", is_nullable => 0, size => 245 },
  "keystr",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "key_where",
  {
    data_type => "enum",
    default_value => "no",
    extra => { list => ["subj", "body", "no"] },
    is_nullable => 0,
  },
  "subject",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "reply_to",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "content_type",
  {
    data_type => "varchar",
    default_value => "text/plain",
    is_nullable => 0,
    size => 245,
  },
  "charset",
  {
    data_type => "varchar",
    default_value => "UTF-8",
    is_nullable => 0,
    size => 245,
  },
  "text",
  { data_type => "mediumtext", is_nullable => 1 },
  "resp_on",
  {
    data_type => "enum",
    default_value => "false",
    extra => { list => ["false", "true"] },
    is_nullable => 0,
  },
  "ans_freq",
  { data_type => "integer", default_value => 10, is_nullable => 1 },
  "mem_limit",
  { data_type => "integer", default_value => 1000, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:27ODqkrMQ46rFvGX3OnhAg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
