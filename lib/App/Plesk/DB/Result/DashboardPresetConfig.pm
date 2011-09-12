package App::Plesk::DB::Result::DashboardPresetConfig;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::DashboardPresetConfig

=cut

__PACKAGE__->table("DashboardPresetConfig");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 preset_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 ord

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 uri

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 parent_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 type

  data_type: 'enum'
  default_value: 'none'
  extra: {list => ["none","button","custom-buttons","column","footer","indicator","left","right","section","shortcut","tab","tabs","quick-search","quick-search-option"]}
  is_nullable: 0

=head2 title

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 description

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 enabled

  data_type: 'enum'
  default_value: 'true'
  extra: {list => ["false","true"]}
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
  "preset_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "ord",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "uri",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "parent_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 1 },
  "type",
  {
    data_type => "enum",
    default_value => "none",
    extra => {
      list => [
        "none",
        "button",
        "custom-buttons",
        "column",
        "footer",
        "indicator",
        "left",
        "right",
        "section",
        "shortcut",
        "tab",
        "tabs",
        "quick-search",
        "quick-search-option",
      ],
    },
    is_nullable => 0,
  },
  "title",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "description",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "enabled",
  {
    data_type => "enum",
    default_value => "true",
    extra => { list => ["false", "true"] },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:OaLUgZ81j8K8MKjntk1bwQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
