package App::Plesk::DB::Result::SiteAppFile;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::SiteAppFile

=cut

__PACKAGE__->table("SiteAppFiles");

=head1 ACCESSORS

=head2 instance_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 prefix

  data_type: 'enum'
  extra: {list => ["htdocs","cgi-bin"]}
  is_nullable: 0

=head2 file

  data_type: 'varbinary'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "instance_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "prefix",
  {
    data_type => "enum",
    extra => { list => ["htdocs", "cgi-bin"] },
    is_nullable => 0,
  },
  "file",
  { data_type => "varbinary", is_nullable => 0, size => 255 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:n6ywnGbQGRYbAJk6MKBzpg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
