package App::Plesk::DB::Result::TtsTicket;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::TtsTicket

=cut

__PACKAGE__->table("tts_tickets");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 reporter_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 cat_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 qu_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 pr_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 status

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 subject

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 modified_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
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
  "reporter_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "cat_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "qu_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "pr_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "status",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "subject",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "modified_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:cgHRj4GO+IIcYfAC7vB2ug


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
