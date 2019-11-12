#ifndef _PROTO_H_
#define _PROTO_H_
/* This file is automatically generated with "make proto". DO NOT EDIT */

/* The following definitions come from lib/charcnv.c  */

char *unix2dos_format (char *str, BOOL overwrite);
char *dos2unix_format (char *str, BOOL overwrite);
void interpret_character_set (const char *str);

/* The following definitions come from lib/charset.c  */

void charset_initialise (void);
void codepage_initialise (int client_codepage);
void add_char_string (const char *s);

/* The following definitions come from lib/debug.c  */

void setup_logging (const char *pname, BOOL interactive);
void dbgflush (void);
BOOL dbghdr (int level, const char *file, const char *func, int line);

/* The following definitions come from lib/interface.c  */

void load_interfaces (void);
void iface_set_default (char *ip, char *bcast, char *nmask);
BOOL ismyip (struct in_addr ip);
BOOL is_local_net (struct in_addr from);
int iface_count (void);
BOOL we_are_multihomed (void);
struct interface *get_interface (int n);
struct in_addr *iface_n_ip (int n);
unsigned iface_hash (void);
struct in_addr *iface_bcast (struct in_addr ip);
struct in_addr *iface_ip (struct in_addr ip);

/* The following definitions come from lib/kanji.c  */

void interpret_coding_system (const char *str);
BOOL is_multibyte_codepage (void);
void initialize_multibyte_vectors (int client_codepage);

/* The following definitions come from lib/md4.c  */

void mdfour (unsigned char *out, unsigned char *in, int n);

/* The following definitions come from lib/netmask.c  */

int get_netmask (struct in_addr *ipaddr, struct in_addr *nmask);

/* The following definitions come from lib/slprintf.c  */

int vslprintf (char *str, int n, const char *format, va_list ap);

/* The following definitions come from lib/system.c  */

int sys_select (int maxfd, fd_set * fds, struct timeval *tval);
int sys_stat (const char *fname, SMB_STRUCT_STAT * sbuf);
int sys_lstat (const char *fname, SMB_STRUCT_STAT * sbuf);
int sys_fseek (FILE * fp, SMB_OFF_T offset, int whence);
SMB_OFF_T sys_ftell (FILE * fp);
int sys_open (const char *path, int oflag, mode_t mode);
FILE *sys_fopen (const char *path, const char *type);
SMB_STRUCT_DIRENT *sys_readdir (DIR * dirp);
char *sys_getwd (char *s);
int sys_chown (const char *fname, uid_t uid, gid_t gid);
struct hostent *sys_gethostbyname (const char *name);
long sys_random (void);
void sys_srandom (unsigned int seed);

/* The following definitions come from lib/time.c  */

void GetTimeOfDay (struct timeval *tval);
void TimeInit (void);
int TimeDiff (time_t t);
struct tm *LocalTime (time_t * t);
time_t nt_time_to_unix (NTTIME * nt);
time_t interpret_long_date (char *p);
void unix_to_nt_time (NTTIME * nt, time_t t);
void put_long_date (char *p, time_t t);
BOOL null_mtime (time_t mtime);
void put_dos_date (char *buf, int offset, time_t unixdate);
void put_dos_date2 (char *buf, int offset, time_t unixdate);
void put_dos_date3 (char *buf, int offset, time_t unixdate);
time_t make_unix_date (void *date_ptr);
time_t make_unix_date2 (void *date_ptr);
time_t make_unix_date3 (void *date_ptr);
char *http_timestring (time_t t);
char *timestring (void);
time_t get_create_time (SMB_STRUCT_STAT * st, BOOL fake_dirs);

/* The following definitions come from lib/username.c  */

const char *get_home_dir (char *user);
BOOL map_username (const char *user);
struct passwd *Get_Pwnam (const char *user);
BOOL user_in_list (const char *user, char *list);

/* The following definitions come from lib/util.c  */

const char *tmpdir (void);
BOOL in_group (gid_t group, gid_t current_gid, int ngroups, gid_t * groups);
char *Atoic (char *p, int *n, char *c);
char *get_numlist (char *p, uint32 ** num, int *count);
void putip (void *dest, void *src);
char *dns_to_netbios_name (char *dns_name);
int name_mangle (char *In, char *Out, char name_type);
BOOL file_exist (char *fname, SMB_STRUCT_STAT * sbuf);
time_t file_modtime (char *fname);
BOOL directory_exist (char *dname, SMB_STRUCT_STAT * st);
SMB_OFF_T file_size (char *file_name);
char *attrib_string (uint16 mode);
void unix_format (char *fname);
void dos_format (char *fname);
void show_msg (char *buf);
int smb_len (char *buf);
void _smb_setlen (char *buf, int len);
void smb_setlen (char *buf, int len);
int set_message (char *buf, int num_words, int num_bytes, BOOL zero);
int smb_buflen (char *buf);
char *smb_buf (char *buf);
int smb_offset (char *p, char *buf);
void dos_clean_name (char *s);
void unix_clean_name (char *s);
BOOL reduce_name (char *s, char *dir, BOOL widelinks);
void expand_mask (char *Mask, BOOL doext);
void make_dir_struct (char *buf, char *mask, char *fname, SMB_OFF_T size, int mode, time_t date);
void close_low_fds (void);
int set_blocking (int fd, BOOL set);
int TvalDiff (struct timeval *tvalold, struct timeval *tvalnew);
SMB_OFF_T transfer_file (int infd, int outfd, SMB_OFF_T n, char *header, int headlen, int align);
int name_extract (char *buf, int ofs, char *name);
int name_len (char *s1);
void msleep (int t);
BOOL do_match (char *str, char *regexp, int case_sig);
BOOL mask_match (char *str, char *regexp, int case_sig, BOOL trans2);
int set_filelen (int fd, SMB_OFF_T len);
void *Realloc (void *p, size_t size);
BOOL get_myname (char *my_name, struct in_addr *ip);
BOOL ip_equal (struct in_addr ip1, struct in_addr ip2);
int interpret_protocol (char *str, int def);
uint32 interpret_addr (const char *str);
struct in_addr *interpret_addr2 (const char *str);
BOOL zero_ip (struct in_addr ip);
BOOL matchname (char *remotehost, struct in_addr addr);
void standard_sub_basic (char *str);
void standard_sub (connection_struct * conn, char *str);
BOOL same_net (struct in_addr ip1, struct in_addr ip2, struct in_addr mask);
struct hostent *Get_Hostbyname (const char *name);
char *uidtoname (uid_t uid);
char *gidtoname (gid_t gid);
uid_t nametouid (const char *name);
void smb_panic (const char *why);
char *readdirname (DIR * p);
BOOL is_in_path (char *name, name_compare_entry * namelist);
void set_namearray (name_compare_entry ** ppname_array, char *namelist);
void free_namearray (name_compare_entry * name_array);
BOOL fcntl_lock (int fd, int op, SMB_OFF_T offset, SMB_OFF_T count, int type);
BOOL is_myname (char *s);
void set_remote_arch (enum remote_arch_types type);
enum remote_arch_types get_remote_arch (void);
char *align2 (char *q, char *base);
void out_ascii (FILE * f, unsigned char *buf, int len);
void out_data (FILE * f, char *buf1, int len, int per_line);
void print_asc (int level, unsigned char *buf, int len);
void dump_data (int level, char *buf1, int len);
char *tab_depth (int depth);
int str_checksum (const char *s);
void zero_free (void *p, size_t size);
int set_maxfiles (int requested_max);

/* The following definitions come from lib/util_file.c  */

BOOL do_file_lock (int fd, int waitsecs, int type);
BOOL file_lock (int fd, int type, int secs, int *plock_depth);
BOOL file_unlock (int fd, int *plock_depth);
void *startfilepwent (char *pfile, char *s_readbuf, int bufsize, int *file_lock_depth, BOOL update);
void endfilepwent (void *vp, int *file_lock_depth);
SMB_BIG_UINT getfilepwpos (void *vp);
BOOL setfilepwpos (void *vp, SMB_BIG_UINT tok);
int getfileline (void *vp, char *linebuf, int linebuf_size);
char *fgets_slash (char *s2, int maxlen, FILE * f);

/* The following definitions come from lib/util_sock.c  */

BOOL is_a_socket (int fd);
void set_socket_options (int fd, char *options);
void close_sockets (void);
ssize_t write_socket (int fd, char *buf, size_t len);
ssize_t read_udp_socket (int fd, char *buf, size_t len);
ssize_t read_with_timeout (int fd, char *buf, size_t mincnt, size_t maxcnt, unsigned int time_out);
BOOL send_keepalive (int client);
ssize_t read_data (int fd, char *buffer, size_t N);
ssize_t write_data (int fd, char *buffer, size_t N);
ssize_t read_smb_length (int fd, char *inbuf, unsigned int timeout);
BOOL receive_smb (int fd, char *buffer, unsigned int timeout);
BOOL client_receive_smb (int fd, char *buffer, unsigned int timeout);
BOOL send_null_session_msg (int fd);
BOOL send_smb (int fd, char *buffer);
BOOL send_one_packet (char *buf, int len, struct in_addr ip, int port, int type);
int open_socket_in (int type, int port, int dlevel, uint32 socket_addr, BOOL rebind);
int open_socket_out (int type, struct in_addr *addr, int port, int timeout);
char *client_name (int fd);
char *client_addr (int fd);

/* The following definitions come from lib/util_str.c  */

void set_first_token (char *ptr);
BOOL next_token (char **ptr, char *buff, const char *sep, size_t bufsize);
char **toktocliplist (int *ctok, char *sep);
int StrCaseCmp (const char *s, const char *t);
int StrnCaseCmp (const char *s, const char *t, size_t n);
BOOL strequal (const char *s1, const char *s2);
BOOL strnequal (const char *s1, const char *s2, size_t n);
BOOL strcsequal (const char *s1, const char *s2);
void strlower (char *s);
void strupper (char *s);
void strnorm (char *s);
BOOL strisnormal (char *s);
void string_replace (char *s, char oldc, char newc);
char *skip_string (char *buf, size_t n);
size_t str_charnum (const char *s);
BOOL trim_string (char *s, const char *front, const char *back);
BOOL strhasupper (const char *s);
BOOL strhaslower (const char *s);
size_t count_chars (const char *s, char c);
char *safe_strcpy (char *dest, const char *src, size_t maxlength);
char *safe_strcat (char *dest, const char *src, size_t maxlength);
char *StrCpy (char *dest, const char *src);
char *StrnCpy (char *dest, const char *src, size_t n);
char *strncpyn (char *dest, const char *src, size_t n, char c);
size_t strhex_to_str (char *p, size_t len, const char *strhex);
BOOL in_list (char *s, char *list, BOOL casesensitive);
BOOL string_init (char **dest, const char *src);
void string_free (char **s);
BOOL string_set (char **dest, const char *src);
void string_sub (char *s, const char *pattern, const char *insert);
void all_string_sub (char *s, const char *pattern, const char *insert);
void split_at_last_component (char *path, char *front, char sep, char *back);

/* The following definitions come from libsmb/clientgen.c  */

int cli_set_port (struct cli_state *cli, int port);
char *cli_errstr (struct cli_state *cli);
BOOL cli_api_pipe (struct cli_state *cli, char *pipe_name, int pipe_name_len,
                   uint16 * setup, uint32 setup_count, uint32 max_setup_count,
                   char *params, uint32 param_count, uint32 max_param_count,
                   char *data, uint32 data_count, uint32 max_data_count,
                   char **rparam, uint32 * rparam_count, char **rdata, uint32 * rdata_count);
BOOL cli_api (struct cli_state *cli,
              char *param, int prcnt, int mprcnt,
              char *data, int drcnt, int mdrcnt,
              char **rparam, int *rprcnt, char **rdata, int *rdrcnt);
BOOL cli_NetWkstaUserLogon (struct cli_state *cli, char *user, char *workstation);
int cli_RNetShareEnum (struct cli_state *cli,
                       void (*fn) (const char *, uint32, const char *, void *), void *state);
BOOL cli_NetServerEnum (struct cli_state *cli, char *workgroup, uint32 stype,
                        void (*fn) (const char *, uint32, const char *, void *), void *state);
BOOL cli_session_setup (struct cli_state *cli, char *user, char *pass, int passlen, char *ntpass,
                        int ntpasslen, char *workgroup);
BOOL cli_ulogoff (struct cli_state *cli);
BOOL cli_send_tconX (struct cli_state *cli,
                     const char *share, const char *dev, const char *pass, int passlen);
BOOL cli_tdis (struct cli_state *cli);
BOOL cli_rename (struct cli_state *cli, char *fname_src, char *fname_dst);
BOOL cli_unlink (struct cli_state *cli, char *fname);
BOOL cli_mkdir (struct cli_state *cli, char *dname);
BOOL cli_rmdir (struct cli_state *cli, char *dname);
int cli_nt_create (struct cli_state *cli, char *fname);
int cli_open (struct cli_state *cli, char *fname, int flags, int share_mode);
BOOL cli_close (struct cli_state *cli, int fnum);
BOOL cli_lock (struct cli_state *cli, int fnum, uint32 offset, uint32 len, int timeout);
BOOL cli_unlock (struct cli_state *cli, int fnum, uint32 offset, uint32 len, int timeout);
size_t cli_read (struct cli_state *cli, int fnum, char *buf, off_t offset, size_t size);
ssize_t cli_write (struct cli_state *cli,
                   int fnum, uint16 write_mode, const char *buf, off_t offset, size_t size);
ssize_t cli_smbwrite (struct cli_state *cli, int fnum, const char *buf, off_t offset, size_t size);
BOOL cli_getattrE (struct cli_state *cli, int fd,
                   uint16 * attr, size_t * size, time_t * c_time, time_t * a_time, time_t * m_time);
BOOL cli_getatr (struct cli_state *cli, char *fname, uint16 * attr, size_t * size, time_t * t);
BOOL cli_setatr (struct cli_state *cli, char *fname, uint16 attr, time_t t);
BOOL cli_qpathinfo (struct cli_state *cli, const char *fname,
                    time_t * c_time, time_t * a_time, time_t * m_time,
                    size_t * size, uint16 * mode);
BOOL cli_qpathinfo2 (struct cli_state *cli, const char *fname,
                     time_t * c_time, time_t * a_time, time_t * m_time,
                     time_t * w_time, size_t * size, uint16 * mode, SMB_INO_T * ino);
BOOL cli_qfileinfo (struct cli_state *cli, int fnum,
                    uint16 * mode, size_t * size,
                    time_t * c_time, time_t * a_time, time_t * m_time,
                    time_t * w_time, SMB_INO_T * ino);
int cli_list (struct cli_state *cli, const char *Mask, uint16 attribute,
              void (*fn) (file_info *, const char *, void *), void *state);
BOOL cli_negprot (struct cli_state *cli);
BOOL cli_session_request (struct cli_state *cli, struct nmb_name *calling, struct nmb_name *called);
BOOL cli_connect (struct cli_state *cli, const char *host, struct in_addr *ip);
struct cli_state *cli_initialise (struct cli_state *cli);
void cli_shutdown (struct cli_state *cli);
int cli_error (struct cli_state *cli, uint8 * eclass, uint32 * num, uint32 * nt_rpc_error);
void cli_sockopt (struct cli_state *cli, char *options);
uint16 cli_setpid (struct cli_state *cli, uint16 pid);
BOOL cli_reestablish_connection (struct cli_state *cli);
BOOL cli_establish_connection (struct cli_state *cli,
                               char *dest_host, struct in_addr *dest_ip,
                               struct nmb_name *calling, struct nmb_name *called,
                               char *service, char *service_type, BOOL do_shutdown, BOOL do_tcon);
BOOL cli_chkpath (struct cli_state *cli, char *path);
BOOL cli_message_start (struct cli_state *cli, char *host, char *username, int *grp);
BOOL cli_message_text (struct cli_state *cli, char *msg, int len, int grp);
BOOL cli_message_end (struct cli_state *cli, int grp);
BOOL cli_dskattr (struct cli_state *cli, int *bsize, int *total, int *avail);

/* The following definitions come from libsmb/namequery.c  */

struct in_addr *name_query (int fd, const char *name, int name_type, BOOL bcast, BOOL recurse,
                            struct in_addr to_ip, int *count, void (*fn) (struct packet_struct *));
FILE *startlmhosts (const char *fname);
BOOL getlmhostsent (FILE * fp, pstring name, int *name_type, struct in_addr *ipaddr);
void endlmhosts (FILE * fp);
BOOL resolve_name (const char *name, struct in_addr *return_ip, int name_type);
BOOL find_master_ip (char *group, struct in_addr *master_ip);

/* The following definitions come from libsmb/nmblib.c  */

void debug_nmb_packet (struct packet_struct *p);
char *nmb_namestr (struct nmb_name *n);
struct packet_struct *copy_packet (struct packet_struct *packet);
void free_packet (struct packet_struct *packet);
struct packet_struct *read_packet (int fd, enum packet_type packet_type);
void make_nmb_name (struct nmb_name *n, const char *name, int type);
BOOL nmb_name_equal (struct nmb_name *n1, struct nmb_name *n2);
BOOL send_packet (struct packet_struct *p);
struct packet_struct *receive_packet (int fd, enum packet_type type, int t);
void sort_query_replies (char *data, int n, struct in_addr ip);

/* The following definitions come from libsmb/nterr.c  */

const char *get_nt_error_msg (uint32 nt_code);

/* The following definitions come from libsmb/pwd_cache.c  */

void pwd_init (struct pwd_info *pwd);
void pwd_obfuscate_key (struct pwd_info *pwd, uint32 int_key, char *str_key);
void pwd_read (struct pwd_info *pwd, char *passwd_report, BOOL do_encrypt);
void pwd_set_nullpwd (struct pwd_info *pwd);
void pwd_set_cleartext (struct pwd_info *pwd, char *clr);
void pwd_get_cleartext (struct pwd_info *pwd, char *clr);
void pwd_set_lm_nt_16 (struct pwd_info *pwd, uchar lm_pwd[16], uchar nt_pwd[16]);
void pwd_get_lm_nt_16 (struct pwd_info *pwd, uchar lm_pwd[16], uchar nt_pwd[16]);
void pwd_make_lm_nt_16 (struct pwd_info *pwd, char *clr);
void pwd_make_lm_nt_owf (struct pwd_info *pwd, uchar cryptkey[8]);
void pwd_get_lm_nt_owf (struct pwd_info *pwd, uchar lm_owf[24], uchar nt_owf[24]);

/* The following definitions come from libsmb/smbdes.c  */

void E_P16 (unsigned char *p14, unsigned char *p16);
void E_P24 (unsigned char *p21, unsigned char *c8, unsigned char *p24);
void D_P16 (unsigned char *p14, unsigned char *in, unsigned char *out);
void E_old_pw_hash (unsigned char *p14, unsigned char *in, unsigned char *out);
void cred_hash1 (unsigned char *out, unsigned char *in, unsigned char *key);
void cred_hash2 (unsigned char *out, unsigned char *in, unsigned char *key);
void cred_hash3 (unsigned char *out, unsigned char *in, unsigned char *key, int forw);
void SamOEMhash (unsigned char *data, unsigned char *key, int val);

/* The following definitions come from libsmb/smbencrypt.c  */

void SMBencrypt (uchar * passwd, uchar * c8, uchar * p24);
void E_md4hash (uchar * passwd, uchar * p16);
void nt_lm_owf_gen (char *pwd, uchar nt_p16[16], uchar p16[16]);
void SMBOWFencrypt (uchar passwd[16], uchar * c8, uchar p24[24]);
void NTLMSSPOWFencrypt (uchar passwd[8], uchar * ntlmchalresp, uchar p24[24]);
void SMBNTencrypt (uchar * passwd, uchar * c8, uchar * p24);

/* The following definitions come from libsmb/smberr.c  */

char *smb_errstr (char *inbuf);

/* The following definitions come from param/loadparm.c  */

char *lp_logfile (void);
char *lp_configfile (void);
char *lp_smb_passwd_file (void);
char *lp_serverstring (void);
char *lp_printcapname (void);
char *lp_lockdir (void);
char *lp_rootdir (void);
char *lp_defaultservice (void);
char *lp_msg_command (void);
char *lp_hosts_equiv (void);
char *lp_auto_services (void);
char *lp_passwd_program (void);
char *lp_passwd_chat (void);
char *lp_passwordserver (void);
char *lp_name_resolve_order (void);
char *lp_workgroup (void);
char *lp_username_map (void);
char *lp_groupname_map (void);
char *lp_logon_script (void);
char *lp_logon_path (void);
char *lp_logon_drive (void);
char *lp_logon_home (void);
char *lp_remote_announce (void);
char *lp_remote_browse_sync (void);
char *lp_wins_server (void);
char *lp_interfaces (void);
char *lp_socket_address (void);
char *lp_nis_home_map_name (void);
char *lp_netbios_aliases (void);
char *lp_driverfile (void);
char *lp_panic_action (void);
char *lp_adduser_script (void);
char *lp_deluser_script (void);
char *lp_domain_groups (void);
char *lp_domain_admin_group (void);
char *lp_domain_guest_group (void);
char *lp_domain_admin_users (void);
char *lp_domain_guest_users (void);
char *lp_ldap_server (void);
char *lp_ldap_suffix (void);
char *lp_ldap_filter (void);
char *lp_ldap_root (void);
char *lp_ldap_rootpasswd (void);
int lp_ssl_version (void);
char *lp_ssl_hosts (void);
char *lp_ssl_hosts_resign (void);
char *lp_ssl_cacertdir (void);
char *lp_ssl_cacertfile (void);
char *lp_ssl_cert (void);
char *lp_ssl_privkey (void);
char *lp_ssl_client_cert (void);
char *lp_ssl_client_privkey (void);
char *lp_ssl_ciphers (void);
BOOL lp_ssl_enabled (void);
BOOL lp_ssl_reqClientCert (void);
BOOL lp_ssl_reqServerCert (void);
BOOL lp_ssl_compatibility (void);
BOOL lp_dns_proxy (void);
BOOL lp_wins_support (void);
BOOL lp_we_are_a_wins_server (void);
BOOL lp_wins_proxy (void);
BOOL lp_local_master (void);
BOOL lp_domain_master (void);
BOOL lp_domain_logons (void);
BOOL lp_preferred_master (void);
BOOL lp_load_printers (void);
BOOL lp_use_rhosts (void);
BOOL lp_readprediction (void);
BOOL lp_readbmpx (void);
BOOL lp_readraw (void);
BOOL lp_writeraw (void);
BOOL lp_null_passwords (void);
BOOL lp_strip_dot (void);
BOOL lp_encrypted_passwords (void);
BOOL lp_update_encrypted (void);
BOOL lp_syslog_only (void);
BOOL lp_timestamp_logs (void);
BOOL lp_browse_list (void);
BOOL lp_unix_realname (void);
BOOL lp_nis_home_map (void);
BOOL lp_bind_interfaces_only (void);
BOOL lp_unix_password_sync (void);
BOOL lp_passwd_chat_debug (void);
BOOL lp_ole_locking_compat (void);
BOOL lp_nt_smb_support (void);
BOOL lp_nt_pipe_support (void);
BOOL lp_nt_acl_support (void);
BOOL lp_stat_cache (void);
BOOL lp_allow_trusted_domains (void);
BOOL lp_restrict_anonymous (void);
int lp_os_level (void);
int lp_max_ttl (void);
int lp_max_wins_ttl (void);
int lp_min_wins_ttl (void);
int lp_max_open_files (void);
int lp_maxxmit (void);
int lp_maxmux (void);
int lp_passwordlevel (void);
int lp_usernamelevel (void);
int lp_readsize (void);
int lp_shmem_size (void);
int lp_deadtime (void);
int lp_maxprotocol (void);
int lp_security (void);
int lp_maxdisksize (void);
int lp_lpqcachetime (void);
int lp_syslog (void);
int lp_client_code_page (void);
int lp_lm_announce (void);
int lp_lm_interval (void);
int lp_machine_password_timeout (void);
int lp_change_notify_timeout (void);
int lp_stat_cache_size (void);
int lp_map_to_guest (void);
int lp_min_passwd_length (void);
int lp_oplock_break_wait_time (void);
int lp_ldap_port (void);
char *lp_preexec (int);
char *lp_postexec (int);
char *lp_rootpreexec (int);
char *lp_rootpostexec (int);
char *lp_servicename (int);
char *lp_pathname (int);
char *lp_dontdescend (int);
char *lp_username (int);
char *lp_guestaccount (int);
char *lp_invalid_users (int);
char *lp_valid_users (int);
char *lp_admin_users (int);
char *lp_printcommand (int);
char *lp_lpqcommand (int);
char *lp_lprmcommand (int);
char *lp_lppausecommand (int);
char *lp_lpresumecommand (int);
char *lp_queuepausecommand (int);
char *lp_queueresumecommand (int);
char *lp_printername (int);
char *lp_printerdriver (int);
char *lp_hostsallow (int);
char *lp_hostsdeny (int);
char *lp_magicscript (int);
char *lp_magicoutput (int);
char *lp_comment (int);
char *lp_force_user (int);
char *lp_force_group (int);
char *lp_readlist (int);
char *lp_writelist (int);
char *lp_fstype (int);
char *lp_mangled_map (int);
char *lp_veto_files (int);
char *lp_hide_files (int);
char *lp_veto_oplocks (int);
char *lp_driverlocation (int);
BOOL lp_revalidate (int);
BOOL lp_casesensitive (int);
BOOL lp_preservecase (int);
BOOL lp_shortpreservecase (int);
BOOL lp_casemangle (int);
BOOL lp_status (int);
BOOL lp_hide_dot_files (int);
BOOL lp_browseable (int);
BOOL lp_readonly (int);
BOOL lp_no_set_dir (int);
BOOL lp_guest_ok (int);
BOOL lp_guest_only (int);
BOOL lp_print_ok (int);
BOOL lp_postscript (int);
BOOL lp_map_hidden (int);
BOOL lp_map_archive (int);
BOOL lp_locking (int);
BOOL lp_strict_locking (int);
BOOL lp_share_modes (int);
BOOL lp_oplocks (int);
BOOL lp_onlyuser (int);
BOOL lp_manglednames (int);
BOOL lp_widelinks (int);
BOOL lp_symlinks (int);
BOOL lp_syncalways (int);
BOOL lp_strict_sync (int);
BOOL lp_map_system (int);
BOOL lp_delete_readonly (int);
BOOL lp_fake_oplocks (int);
BOOL lp_recursive_veto_delete (int);
BOOL lp_dos_filetimes (int);
BOOL lp_dos_filetime_resolution (int);
BOOL lp_fake_dir_create_times (int);
BOOL lp_blocking_locks (int);
BOOL lp_mangle_locks (int);
int lp_create_mode (int);
int lp_force_create_mode (int);
int lp_dir_mode (int);
int lp_force_dir_mode (int);
int lp_max_connections (int);
int lp_defaultcase (int);
int lp_minprintspace (int);
int lp_printing (int);
int lp_oplock_contention_limit (int);
char lp_magicchar (int);
BOOL lp_add_home (const char *pszHomename, int iDefaultService, const char *pszHomedir);
int lp_add_service (char *pszService, int iDefaultService);
BOOL lp_add_printer (char *pszPrintername, int iDefaultService);
BOOL lp_file_list_changed (void);
void *lp_local_ptr (int snum, void *ptr);
BOOL lp_do_parameter (int snum, const char *pszParmName, const char *pszParmValue);
BOOL lp_is_default (int snum, struct parm_struct *parm);
struct parm_struct *lp_next_parameter (int snum, int *i, int allparameters);
BOOL lp_snum_ok (int iService);
void lp_add_one_printer (char *name, char *comment);
BOOL lp_loaded (void);
void lp_killunused (BOOL (*snumused) (int));
BOOL lp_load (const char *pszFname, BOOL global_only, BOOL save_defaults, BOOL add_ipc);
void lp_resetnumservices (void);
int lp_numservices (void);
int lp_servicenumber (const char *pszServiceName);
char *volume_label (int snum);
int lp_default_server_announce (void);
int lp_major_announce_version (void);
int lp_minor_announce_version (void);
void lp_set_name_resolve_order (char *new_order);
void lp_set_kernel_oplocks (BOOL val);
BOOL lp_kernel_oplocks (void);

/* The following definitions come from param/params.c  */

BOOL pm_process (const char *FileName,
                 BOOL (*sfunc) (const char *), BOOL (*pfunc) (const char *, const char *));
#endif /* _PROTO_H_ */
