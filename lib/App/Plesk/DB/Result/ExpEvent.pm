package App::Plesk::DB::Result::ExpEvent;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

App::Plesk::DB::Result::ExpEvent

=cut

__PACKAGE__->table("exp_event");

=head1 ACCESSORS

=head2 id

  data_type: 'bigint'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 source

  data_type: 'enum'
  extra: {list => ["pa","plesk"]}
  is_nullable: 1

=head2 event_type

  data_type: 'enum'
  extra: {list => ["started","stopped","created","updated","deleted","status_changed","terminated","flushed","installed","uninstalled","siteapp_added","siteapp_removed","expired","exceeded","guid_changed"]}
  is_nullable: 0

=head2 event_time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 obj_class

  data_type: 'enum'
  extra: {list => ["license","service","ip_address","admin_info","siteapp","session_preferences","plesk_component","client","client_limits","client_status","client_prefs","client_perms","client_ip_pool","client_limit_traffic","client_limit_size","domain","domain_limits","domain_user","domain_alias","domain_limit_traffic","domain_limit_size","domain_status","phosting","fhosting","db_server","domain_alias","subdomain","mailname","webuser","maillist","dns_zone","mailname_antivirus","mailname_spamfilter","mailname_mailgroup","mailname_autoresponder","mailname_attachment","db","db_user","dashboard_preset","dashboard_preset_type","dashboard_preset_name","template_domain","template_client","template_admin"]}
  is_nullable: 0

=head2 obj_id

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 host

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 user

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 flushed

  data_type: 'enum'
  default_value: 'false'
  extra: {list => ["true","false"]}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "bigint",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "source",
  {
    data_type => "enum",
    extra => { list => ["pa", "plesk"] },
    is_nullable => 1,
  },
  "event_type",
  {
    data_type => "enum",
    extra => {
      list => [
        "started",
        "stopped",
        "created",
        "updated",
        "deleted",
        "status_changed",
        "terminated",
        "flushed",
        "installed",
        "uninstalled",
        "siteapp_added",
        "siteapp_removed",
        "expired",
        "exceeded",
        "guid_changed",
      ],
    },
    is_nullable => 0,
  },
  "event_time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "obj_class",
  {
    data_type => "enum",
    extra => {
      list => [
        "license",
        "service",
        "ip_address",
        "admin_info",
        "siteapp",
        "session_preferences",
        "plesk_component",
        "client",
        "client_limits",
        "client_status",
        "client_prefs",
        "client_perms",
        "client_ip_pool",
        "client_limit_traffic",
        "client_limit_size",
        "domain",
        "domain_limits",
        "domain_user",
        "domain_alias",
        "domain_limit_traffic",
        "domain_limit_size",
        "domain_status",
        "phosting",
        "fhosting",
        "db_server",
        "domain_alias",
        "subdomain",
        "mailname",
        "webuser",
        "maillist",
        "dns_zone",
        "mailname_antivirus",
        "mailname_spamfilter",
        "mailname_mailgroup",
        "mailname_autoresponder",
        "mailname_attachment",
        "db",
        "db_user",
        "dashboard_preset",
        "dashboard_preset_type",
        "dashboard_preset_name",
        "template_domain",
        "template_client",
        "template_admin",
      ],
    },
    is_nullable => 0,
  },
  "obj_id",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "host",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "user",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "flushed",
  {
    data_type => "enum",
    default_value => "false",
    extra => { list => ["true", "false"] },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-09-07 01:57:16
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Hnr3loL5mXdsAKUlzwIasQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
