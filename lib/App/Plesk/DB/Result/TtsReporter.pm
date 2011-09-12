package App::Plesk::DB::Result::TtsReporter;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::TtsReporter

=cut

__PACKAGE__->table("tts_reporters");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 ref_reporter_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 type

  data_type: 'enum'
  default_value: 'email'
  extra: {list => ["client","domain","mailname","email","admin"]}
  is_nullable: 0

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "ref_reporter_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "type",
  {
    data_type => "enum",
    default_value => "email",
    extra => { list => ["client", "domain", "mailname", "email", "admin"] },
    is_nullable => 0,
  },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NDdHXQJyZOtLBxWH+V6blA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
