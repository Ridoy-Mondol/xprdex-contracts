(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i64_i32_=>_i32 (func (param i32 i32 i64 i32) (result i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i64_i64_i64_i64_=>_i64 (func (param i64 i64 i64 i64) (result i64)))
 (type $i32_i32_i32_i64_i32_=>_none (func (param i32 i32 i32 i64 i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i32_i32_i64_i32_i32_i32_=>_none (func (param i32 i32 i64 i32 i32 i32)))
 (type $i32_i64_i32_i32_i32_=>_none (func (param i32 i64 i32 i32 i32)))
 (type $i64_i64_i64_i32_=>_i32 (func (param i64 i64 i64 i32) (result i32)))
 (type $i64_i64_i64_i32_i64_=>_i32 (func (param i64 i64 i64 i32 i64) (result i32)))
 (type $i64_i64_i64_i64_=>_i32 (func (param i64 i64 i64 i64) (result i32)))
 (type $i64_i64_i64_i64_i32_=>_i32 (func (param i64 i64 i64 i64 i32) (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (type $none_=>_none (func))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_i32_i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i64_=>_none (func (param i32 i32 i32 i64)))
 (type $i32_i32_i64_i32_i32_i32_i32_=>_none (func (param i32 i32 i64 i32 i32 i32 i32)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_i64_i32_i64_=>_none (func (param i32 i64 i32 i64)))
 (type $i64_i64_i64_=>_none (func (param i64 i64 i64)))
 (type $i32_i32_i32_i64_=>_i32 (func (param i32 i32 i32 i64) (result i32)))
 (type $i32_i64_i64_i64_i32_=>_i32 (func (param i32 i64 i64 i64 i32) (result i32)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $i64_i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_i64_=>_i32 (func (param i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64) (result i32)))
 (type $i64_i64_=>_i32 (func (param i64 i64) (result i32)))
 (type $i64_i64_i32_i32_i32_i32_i32_i32_i32_i32_i64_i64_=>_i32 (func (param i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64) (result i32)))
 (type $i64_i64_i32_i32_i32_i32_i64_=>_i32 (func (param i64 i64 i32 i32 i32 i32 i64) (result i32)))
 (type $i64_i64_i64_=>_i32 (func (param i64 i64 i64) (result i32)))
 (type $i64_i64_i64_i64_i32_i32_=>_i32 (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $i64_i64_i64_i64_i32_i32_i32_i32_i32_i32_i32_i64_=>_i32 (func (param i64 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i64) (result i32)))
 (type $i64_i32_=>_i64 (func (param i64 i32) (result i64)))
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (import "env" "eosio_assert" (func $~lib/as-chain/env/eosio_assert (param i32 i32)))
 (import "env" "require_auth" (func $~lib/as-chain/env/require_auth (param i64)))
 (import "env" "is_account" (func $~lib/as-chain/env/is_account (param i64) (result i32)))
 (import "env" "db_find_i64" (func $~lib/as-chain/env/db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $~lib/as-chain/env/db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "memcpy" (func $~lib/as-chain/env/memcpy (param i32 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $~lib/as-chain/env/db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "db_store_i64" (func $~lib/as-chain/env/db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_lowerbound_i64" (func $~lib/as-chain/env/db_lowerbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_next_i64" (func $~lib/as-chain/env/db_next_i64 (param i32 i32) (result i32)))
 (import "env" "db_end_i64" (func $~lib/as-chain/env/db_end_i64 (param i64 i64 i64) (result i32)))
 (import "env" "db_previous_i64" (func $~lib/as-chain/env/db_previous_i64 (param i32 i32) (result i32)))
 (import "env" "current_time" (func $~lib/as-chain/env/current_time (result i64)))
 (import "env" "db_remove_i64" (func $~lib/as-chain/env/db_remove_i64 (param i32)))
 (import "env" "send_inline" (func $~lib/as-chain/env/send_inline (param i32 i32)))
 (import "env" "action_data_size" (func $~lib/as-chain/env/action_data_size (result i32)))
 (import "env" "read_action_data" (func $~lib/as-chain/env/read_action_data (param i32 i32) (result i32)))
 (import "env" "db_idx64_find_primary" (func $~lib/as-chain/env/db_idx64_find_primary (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx128_find_primary" (func $~lib/as-chain/env/db_idx128_find_primary (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx64_update" (func $~lib/as-chain/env/db_idx64_update (param i32 i64 i32)))
 (import "env" "db_idx128_update" (func $~lib/as-chain/env/db_idx128_update (param i32 i64 i32)))
 (import "env" "db_idx64_store" (func $~lib/as-chain/env/db_idx64_store (param i64 i64 i64 i64 i32) (result i32)))
 (import "env" "db_idx128_store" (func $~lib/as-chain/env/db_idx128_store (param i64 i64 i64 i64 i32) (result i32)))
 (import "env" "db_idx64_remove" (func $~lib/as-chain/env/db_idx64_remove (param i32)))
 (import "env" "db_idx128_remove" (func $~lib/as-chain/env/db_idx128_remove (param i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/as-chain/name/EMPTY_NAME (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/as-chain/bignum/globals/__res128_hi (mut i64) (i64.const 0))
 (global $~lib/as-chain/bignum/globals/__divmod_quot_hi (mut i64) (i64.const 0))
 (global $~lib/as-chain/bignum/globals/__divmod_rem_lo (mut i64) (i64.const 0))
 (global $~lib/as-chain/bignum/globals/__divmod_rem_hi (mut i64) (i64.const 0))
 (global $assembly/orderbook/orderbook.contract/orderbook i32 (i32.const 7))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\03\00\00\00\08\00\00\00\01")
 (data (i32.const 1068) "<")
 (data (i32.const 1084) " \00\00\00.12345abcdefghijklmnopqrstuvwxyz")
 (data (i32.const 1132) ",")
 (data (i32.const 1144) "\04\00\00\00\10\00\00\00@\04\00\00@\04\00\00 \00\00\00 ")
 (data (i32.const 1180) "\dc")
 (data (i32.const 1192) "\01\00\00\00\cc\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00u\00p\00d\00a\00t\00e\00\'\00 \00i\00f\00 \00y\00o\00u\00 \00w\00i\00s\00h\00 \00t\00o\00 \00u\00p\00d\00a\00t\00e\00 \00v\00a\00l\00u\00e")
 (data (i32.const 1404) "\dc")
 (data (i32.const 1416) "\01\00\00\00\c0\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00u\00p\00d\00a\00t\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00t\00o\00 \00s\00a\00v\00e\00 \00v\00a\00l\00u\00e\00 \00f\00i\00r\00s\00t")
 (data (i32.const 1628) "\dc")
 (data (i32.const 1640) "\01\00\00\00\c0\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00r\00e\00m\00o\00v\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00t\00o\00 \00s\00a\00v\00e\00 \00v\00a\00l\00u\00e\00 \00f\00i\00r\00s\00t")
 (data (i32.const 1852) "\8c")
 (data (i32.const 1864) "\01\00\00\00t\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00f\00i\00n\00d\00 \00\'\00n\00e\00x\00t\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00c\00u\00r\00r\00e\00n\00t\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 1996) "\8c")
 (data (i32.const 2008) "\01\00\00\00|\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00f\00i\00n\00d\00 \00\'\00p\00r\00e\00v\00i\00o\00u\00s\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00c\00u\00r\00r\00e\00n\00t\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 2140) "|")
 (data (i32.const 2152) "\01\00\00\00f\00\00\00n\00e\00x\00t\00 \00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00i\00s\00 \00a\00t\00 \00a\00u\00t\00o\00i\00n\00c\00r\00e\00m\00e\00n\00t\00 \00l\00i\00m\00i\00t")
 (data (i32.const 2268) "\1c")
 (data (i32.const 2280) "\01")
 (data (i32.const 2300) "<")
 (data (i32.const 2312) "\01\00\00\00\1e\00\00\00b\00a\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e")
 (data (i32.const 2364) "<")
 (data (i32.const 2376) "\01\00\00\00\"\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 2428) "\1c")
 (data (i32.const 2460) "<")
 (data (i32.const 2472) "\01\00\00\00\1e\00\00\00A\00d\00m\00i\00n\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data (i32.const 2524) "\\")
 (data (i32.const 2536) "\01\00\00\00>\00\00\00F\00e\00e\00 \00R\00e\00c\00i\00p\00i\00e\00n\00t\00 \00a\00c\00c\00o\00u\00n\00t\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data (i32.const 2620) "\\")
 (data (i32.const 2632) "\01\00\00\00>\00\00\00D\00e\00c\00o\00d\00e\00r\00.\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 2716) "<")
 (data (i32.const 2728) "\01\00\00\00&\00\00\00u\00p\00d\00a\00t\00e\00:\00b\00a\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 2780) "L")
 (data (i32.const 2792) "\01\00\00\00:\00\00\00g\00e\00t\00 \00p\00r\00i\00m\00a\00r\00y\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 2860) "<")
 (data (i32.const 2872) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 2924) "l")
 (data (i32.const 2936) "\01\00\00\00V\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00c\00h\00a\00n\00g\00e\00d\00 \00d\00u\00r\00i\00n\00g\00 \00u\00p\00d\00a\00t\00e\00!")
 (data (i32.const 3036) "L")
 (data (i32.const 3048) "\01\00\00\00.\00\00\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3116) "L")
 (data (i32.const 3128) "\01\00\00\002\00\00\00c\00h\00e\00c\00k\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3196) "<")
 (data (i32.const 3208) "\01\00\00\00&\00\00\00n\00o\00 \00s\00e\00c\00o\00n\00d\00a\00r\00y\00 \00v\00a\00l\00u\00e\00!")
 (data (i32.const 3260) "<")
 (data (i32.const 3272) "\01\00\00\00&\00\00\00D\00E\00X\00 \00n\00o\00t\00 \00i\00n\00i\00t\00i\00a\00l\00i\00z\00e\00d")
 (data (i32.const 3324) "L")
 (data (i32.const 3336) "\01\00\00\008\00\00\00B\00a\00s\00e\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 3404) "L")
 (data (i32.const 3416) "\01\00\00\00:\00\00\00Q\00u\00o\00t\00e\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 3484) "\1c")
 (data (i32.const 3496) "\01\00\00\00\02\00\00\000")
 (data (i32.const 3516) "\\")
 (data (i32.const 3528) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 3612) "\1c")
 (data (i32.const 3624) "\01\00\00\00\02\00\00\00,")
 (data (i32.const 3644) "L")
 (data (i32.const 3656) "\01\00\00\000\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 3724) "\1c")
 (data (i32.const 3756) "\1c")
 (data (i32.const 3768) "\01\00\00\00\0c\00\00\00T\00o\00k\00e\00n\00 ")
 (data (i32.const 3788) ",")
 (data (i32.const 3800) "\01\00\00\00\1c\00\00\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00i\00n\00 ")
 (data (i32.const 3836) ",")
 (data (i32.const 3848) "5\00\00\00\14\00\00\00\c0\0e\00\00\00\00\00\00\e0\0e\00\00\00\00\00\00\f0\08")
 (data (i32.const 3884) "<")
 (data (i32.const 3896) "\01\00\00\00(\00\00\00W\00r\00o\00n\00g\00 \00p\00r\00e\00c\00i\00s\00i\00o\00n\00 \00f\00o\00r\00 ")
 (data (i32.const 3948) "\1c")
 (data (i32.const 3960) "5\00\00\00\0c\00\00\00@\0f\00\00\00\00\00\00\f0\08")
 (data (i32.const 3980) "\\")
 (data (i32.const 3992) "\01\00\00\00B\00\00\00B\00a\00s\00e\00 \00a\00n\00d\00 \00q\00u\00o\00t\00e\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00t\00h\00e\00 \00s\00a\00m\00e")
 (data (i32.const 4076) "\\")
 (data (i32.const 4088) "\01\00\00\00H\00\00\00M\00i\00n\00 \00o\00r\00d\00e\00r\00 \00s\00i\00z\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00i\00n\00 \00b\00a\00s\00e\00 \00a\00s\00s\00e\00t")
 (data (i32.const 4172) "\\")
 (data (i32.const 4184) "\01\00\00\00H\00\00\00M\00a\00x\00 \00o\00r\00d\00e\00r\00 \00s\00i\00z\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00i\00n\00 \00b\00a\00s\00e\00 \00a\00s\00s\00e\00t")
 (data (i32.const 4268) "\\")
 (data (i32.const 4280) "\01\00\00\00@\00\00\00T\00i\00c\00k\00 \00s\00i\00z\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00i\00n\00 \00q\00u\00o\00t\00e\00 \00a\00s\00s\00e\00t")
 (data (i32.const 4364) "\\")
 (data (i32.const 4376) "\01\00\00\00B\00\00\00M\00i\00n\00 \00o\00r\00d\00e\00r\00 \00s\00i\00z\00e\00 \00p\00r\00e\00c\00i\00s\00i\00o\00n\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 4460) "\\")
 (data (i32.const 4472) "\01\00\00\00B\00\00\00M\00a\00x\00 \00o\00r\00d\00e\00r\00 \00s\00i\00z\00e\00 \00p\00r\00e\00c\00i\00s\00i\00o\00n\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 4556) "L")
 (data (i32.const 4568) "\01\00\00\008\00\00\00T\00i\00c\00k\00 \00s\00i\00z\00e\00 \00p\00r\00e\00c\00i\00s\00i\00o\00n\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 4636) "\\")
 (data (i32.const 4648) "\01\00\00\00>\00\00\00M\00i\00n\00 \00o\00r\00d\00e\00r\00 \00s\00i\00z\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00p\00o\00s\00i\00t\00i\00v\00e")
 (data (i32.const 4732) "\\")
 (data (i32.const 4744) "\01\00\00\00>\00\00\00M\00a\00x\00 \00o\00r\00d\00e\00r\00 \00s\00i\00z\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00p\00o\00s\00i\00t\00i\00v\00e")
 (data (i32.const 4828) "L")
 (data (i32.const 4840) "\01\00\00\004\00\00\00T\00i\00c\00k\00 \00s\00i\00z\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00p\00o\00s\00i\00t\00i\00v\00e")
 (data (i32.const 4908) "L")
 (data (i32.const 4920) "\01\00\00\000\00\00\00M\00a\00x\00 \00o\00r\00d\00e\00r\00 \00s\00i\00z\00e\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 4988) "<")
 (data (i32.const 5000) "\01\00\00\00&\00\00\00T\00i\00c\00k\00 \00s\00i\00z\00e\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 5052) "L")
 (data (i32.const 5064) "\01\00\00\00<\00\00\00M\00a\00k\00e\00r\00 \00f\00e\00e\00 \00e\00x\00c\00e\00e\00d\00s\00 \00m\00a\00x\00i\00m\00u\00m\00 \00(\005\00%\00)")
 (data (i32.const 5132) "L")
 (data (i32.const 5144) "\01\00\00\00<\00\00\00T\00a\00k\00e\00r\00 \00f\00e\00e\00 \00e\00x\00c\00e\00e\00d\00s\00 \00m\00a\00x\00i\00m\00u\00m\00 \00(\005\00%\00)")
 (data (i32.const 5212) "<")
 (data (i32.const 5224) "\01\00\00\00,\00\00\00M\00a\00k\00e\00r\00 \00f\00e\00e\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 5276) "<")
 (data (i32.const 5288) "\01\00\00\00,\00\00\00T\00a\00k\00e\00r\00 \00f\00e\00e\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 5340) "\\")
 (data (i32.const 5352) "\01\00\00\00B\00\00\00M\00a\00k\00e\00r\00 \00f\00e\00e\00 \00c\00a\00n\00n\00o\00t\00 \00e\00x\00c\00e\00e\00d\00 \00t\00a\00k\00e\00r\00 \00f\00e\00e")
 (data (i32.const 5436) "|")
 (data (i32.const 5448) "\01\00\00\00d\00\00\00M\00a\00x\00 \00o\00r\00d\00e\00r\00 \00s\00i\00z\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00g\00r\00e\00a\00t\00e\00r\00 \00t\00h\00a\00n\00 \00m\00i\00n\00 \00o\00r\00d\00e\00r\00 \00s\00i\00z\00e")
 (data (i32.const 5564) "<")
 (data (i32.const 5576) "\01\00\00\00&\00\00\00P\00a\00i\00r\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s")
 (data (i32.const 5628) "L")
 (data (i32.const 5640) "\01\00\00\006\00\00\00R\00e\00v\00e\00r\00s\00e\00 \00p\00a\00i\00r\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s")
 (data (i32.const 5708) "\1c")
 (data (i32.const 5720) "\01\00\00\00\0c\00\00\00a\00c\00t\00i\00v\00e")
 (data (i32.const 5740) ",")
 (data (i32.const 5752) "\01\00\00\00\1a\00\00\00b\00a\00d\00 \00d\00b\00 \00i\00n\00d\00e\00x\00!")
 (data (i32.const 5788) ",")
 (data (i32.const 5800) "\01\00\00\00\1c\00\00\00P\00a\00i\00r\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data (i32.const 5836) "\\")
 (data (i32.const 5848) "\01\00\00\00B\00\00\00M\00i\00n\00 \00o\00r\00d\00e\00r\00 \00s\00i\00z\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00a\00s\00e\00 \00a\00s\00s\00e\00t")
 (data (i32.const 5932) "\\")
 (data (i32.const 5944) "\01\00\00\00B\00\00\00M\00a\00x\00 \00o\00r\00d\00e\00r\00 \00s\00i\00z\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00a\00s\00e\00 \00a\00s\00s\00e\00t")
 (data (i32.const 6028) "L")
 (data (i32.const 6040) "\01\00\00\00:\00\00\00T\00i\00c\00k\00 \00s\00i\00z\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00q\00u\00o\00t\00e\00 \00a\00s\00s\00e\00t")
 (data (i32.const 6108) "\1c")
 (data (i32.const 6120) "9\00\00\00\08\00\00\00\02")
 (data (i32.const 6140) "L")
 (data (i32.const 6152) "\01\00\00\000\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00v\00a\00l\00u\00e\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00!")
 (data (i32.const 6220) "\1c")
 (data (i32.const 6252) "\1c")
 (data (i32.const 6264) "\01\00\00\00\0c\00\00\00p\00a\00u\00s\00e\00d")
 (data (i32.const 6284) ",")
 (data (i32.const 6296) "\01\00\00\00\10\00\00\00d\00i\00s\00a\00b\00l\00e\00d")
 (data (i32.const 6332) "<")
 (data (i32.const 6344) "\01\00\00\00&\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00p\00a\00i\00r\00 \00s\00t\00a\00t\00u\00s")
 (data (i32.const 6396) "L")
 (data (i32.const 6408) "\01\00\00\004\00\00\00P\00a\00i\00r\00 \00a\00l\00r\00e\00a\00d\00y\00 \00i\00n\00 \00t\00h\00i\00s\00 \00s\00t\00a\00t\00e")
 (data (i32.const 6476) ",")
 (data (i32.const 6488) "\01\00\00\00\0e\00\00\00d\00e\00p\00o\00s\00i\00t")
 (data (i32.const 6524) "<")
 (data (i32.const 6536) "\01\00\00\00,\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00d\00e\00p\00o\00s\00i\00t\00 \00a\00m\00o\00u\00n\00t")
 (data (i32.const 6588) "<")
 (data (i32.const 6600) "\01\00\00\00\1e\00\00\00S\00y\00m\00b\00o\00l\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 6652) "<")
 (data (i32.const 6664) "\01\00\00\00&\00\00\00s\00y\00m\00b\00o\00l\00 \00n\00o\00t\00 \00t\00h\00e\00 \00s\00a\00m\00e")
 (data (i32.const 6716) "<")
 (data (i32.const 6728) "\01\00\00\00$\00\00\00a\00d\00d\00i\00t\00i\00o\00n\00 \00u\00n\00d\00e\00r\00f\00l\00o\00w")
 (data (i32.const 6780) "<")
 (data (i32.const 6792) "\01\00\00\00\"\00\00\00a\00d\00d\00i\00t\00i\00o\00n\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 6844) ",")
 (data (i32.const 6856) "\01\00\00\00\1a\00\00\00D\00E\00X\00 \00i\00s\00 \00p\00a\00u\00s\00e\00d")
 (data (i32.const 6892) "\\")
 (data (i32.const 6904) "\01\00\00\00B\00\00\00T\00r\00a\00d\00i\00n\00g\00 \00u\00n\00a\00v\00a\00i\00l\00a\00b\00l\00e\00 \00f\00o\00r\00 \00t\00h\00i\00s\00 \00p\00a\00i\00r")
 (data (i32.const 6988) "\1c")
 (data (i32.const 7000) "\01\00\00\00\06\00\00\00b\00u\00y")
 (data (i32.const 7020) "\1c")
 (data (i32.const 7032) "\01\00\00\00\08\00\00\00s\00e\00l\00l")
 (data (i32.const 7052) ",")
 (data (i32.const 7064) "\01\00\00\00\18\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00s\00i\00d\00e")
 (data (i32.const 7100) "L")
 (data (i32.const 7112) "\01\00\00\00.\00\00\00A\00m\00o\00u\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00p\00o\00s\00i\00t\00i\00v\00e")
 (data (i32.const 7180) "<")
 (data (i32.const 7192) "\01\00\00\00,\00\00\00P\00r\00i\00c\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00p\00o\00s\00i\00t\00i\00v\00e")
 (data (i32.const 7244) "L")
 (data (i32.const 7256) "\01\00\00\002\00\00\00A\00m\00o\00u\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00a\00s\00e\00 \00a\00s\00s\00e\00t")
 (data (i32.const 7324) "L")
 (data (i32.const 7336) "\01\00\00\002\00\00\00P\00r\00i\00c\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00q\00u\00o\00t\00e\00 \00a\00s\00s\00e\00t")
 (data (i32.const 7404) "L")
 (data (i32.const 7416) "\01\00\00\002\00\00\00A\00m\00o\00u\00n\00t\00 \00p\00r\00e\00c\00i\00s\00i\00o\00n\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 7484) "L")
 (data (i32.const 7496) "\01\00\00\000\00\00\00P\00r\00i\00c\00e\00 \00p\00r\00e\00c\00i\00s\00i\00o\00n\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 7564) "<")
 (data (i32.const 7576) "\01\00\00\00(\00\00\00B\00e\00l\00o\00w\00 \00m\00i\00n\00 \00o\00r\00d\00e\00r\00 \00s\00i\00z\00e")
 (data (i32.const 7628) "<")
 (data (i32.const 7640) "\01\00\00\00,\00\00\00E\00x\00c\00e\00e\00d\00s\00 \00m\00a\00x\00 \00o\00r\00d\00e\00r\00 \00s\00i\00z\00e")
 (data (i32.const 7692) "\\")
 (data (i32.const 7704) "\01\00\00\00F\00\00\00P\00r\00i\00c\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00m\00u\00l\00t\00i\00p\00l\00e\00 \00o\00f\00 \00t\00i\00c\00k\00 \00s\00i\00z\00e")
 (data (i32.const 7788) "\1c")
 (data (i32.const 7820) "\1c")
 (data (i32.const 7832) "\01\00\00\00\n\00\00\00l\00i\00m\00i\00t")
 (data (i32.const 7852) "\1c")
 (data (i32.const 7884) "\1c")
 (data (i32.const 7916) "\1c")
 (data (i32.const 7948) "|")
 (data (i32.const 7960) "\01\00\00\00l\00\00\00P\00r\00i\00c\00e\00 \00t\00o\00o\00 \00f\00a\00r\00 \00f\00r\00o\00m\00 \00m\00a\00r\00k\00e\00t\00 \00(\00m\00a\00x\00 \001\00.\005\00x\00 \00d\00e\00v\00i\00a\00t\00i\00o\00n\00 \00a\00l\00l\00o\00w\00e\00d\00)")
 (data (i32.const 8076) "\\")
 (data (i32.const 8088) "\01\00\00\00>\00\00\00O\00r\00d\00e\00r\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00 \00f\00o\00r\00 \00c\00a\00l\00c\00u\00l\00a\00t\00i\00o\00n")
 (data (i32.const 8172) "<")
 (data (i32.const 8184) "\01\00\00\00\"\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00p\00r\00e\00c\00i\00s\00i\00o\00n")
 (data (i32.const 8236) ",")
 (data (i32.const 8248) "\01\00\00\00\1c\00\00\00V\00a\00l\00u\00e\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 8284) "L")
 (data (i32.const 8296) "\01\00\00\000\00\00\00C\00a\00l\00c\00u\00l\00a\00t\00e\00d\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00z\00e\00r\00o")
 (data (i32.const 8364) "L")
 (data (i32.const 8376) "\01\00\00\000\00\00\00I\00n\00s\00u\00f\00f\00i\00c\00i\00e\00n\00t\00 \00q\00u\00o\00t\00e\00 \00t\00o\00k\00e\00n")
 (data (i32.const 8444) "<")
 (data (i32.const 8456) "\01\00\00\00$\00\00\00I\00n\00s\00u\00f\00f\00i\00c\00i\00e\00n\00t\00 \00f\00u\00n\00d\00s")
 (data (i32.const 8508) "<")
 (data (i32.const 8520) "\01\00\00\00*\00\00\00s\00u\00b\00t\00r\00a\00c\00t\00i\00o\00n\00 \00u\00n\00d\00e\00r\00f\00l\00o\00w")
 (data (i32.const 8572) "<")
 (data (i32.const 8584) "\01\00\00\00(\00\00\00s\00u\00b\00t\00r\00a\00c\00t\00i\00o\00n\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 8636) "L")
 (data (i32.const 8648) "\01\00\00\00.\00\00\00I\00n\00s\00u\00f\00f\00i\00c\00i\00e\00n\00t\00 \00b\00a\00s\00e\00 \00t\00o\00k\00e\00n")
 (data (i32.const 8716) "<")
 (data (i32.const 8728) "\01\00\00\00,\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00s\00l\00i\00p\00p\00a\00g\00e\00 \00v\00a\00l\00u\00e")
 (data (i32.const 8780) "L")
 (data (i32.const 8792) "\01\00\00\00<\00\00\00B\00u\00y\00 \00a\00m\00o\00u\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00q\00u\00o\00t\00e\00 \00a\00s\00s\00e\00t")
 (data (i32.const 8860) "<")
 (data (i32.const 8872) "\01\00\00\00,\00\00\00N\00o\00 \00l\00i\00q\00u\00i\00d\00i\00t\00y\00 \00a\00v\00a\00i\00l\00a\00b\00l\00e")
 (data (i32.const 8924) "<")
 (data (i32.const 8936) "\01\00\00\00,\00\00\00T\00r\00a\00d\00e\00 \00a\00m\00o\00u\00n\00t\00 \00t\00o\00o\00 \00s\00m\00a\00l\00l")
 (data (i32.const 8988) "L")
 (data (i32.const 9000) "\01\00\00\006\00\00\00F\00e\00e\00 \00a\00m\00o\00u\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00p\00o\00s\00i\00t\00i\00v\00e")
 (data (i32.const 9068) ",")
 (data (i32.const 9080) "\01\00\00\00\18\00\00\00F\00e\00e\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 9116) "<")
 (data (i32.const 9128) "\01\00\00\00&\00\00\00B\00u\00y\00e\00r\00 \00b\00a\00l\00a\00n\00c\00e\00 \00e\00r\00r\00o\00r")
 (data (i32.const 9180) "L")
 (data (i32.const 9192) "\01\00\00\000\00\00\00B\00u\00y\00e\00r\00 \00i\00n\00s\00u\00f\00f\00i\00c\00i\00e\00n\00t\00 \00f\00u\00n\00d\00s")
 (data (i32.const 9260) "<")
 (data (i32.const 9272) "\01\00\00\00(\00\00\00S\00e\00l\00l\00e\00r\00 \00b\00a\00l\00a\00n\00c\00e\00 \00e\00r\00r\00o\00r")
 (data (i32.const 9324) "L")
 (data (i32.const 9336) "\01\00\00\004\00\00\00S\00e\00l\00l\00e\00r\00 \00i\00n\00s\00u\00f\00f\00i\00c\00i\00e\00n\00t\00 \00l\00o\00c\00k\00e\00d")
 (data (i32.const 9404) ",")
 (data (i32.const 9416) "\01\00\00\00\18\00\00\00M\00a\00r\00k\00e\00t\00 \00b\00u\00y\00:\00 ")
 (data (i32.const 9452) "\1c")
 (data (i32.const 9464) "\01\00\00\00\06\00\00\00 \00@\00 ")
 (data (i32.const 9484) ",")
 (data (i32.const 9496) "5\00\00\00\14\00\00\00\d0$\00\00\00\00\00\00\00%\00\00\00\00\00\00\f0\08")
 (data (i32.const 9532) "\1c")
 (data (i32.const 9544) "\01\00\00\00\02\00\00\00.")
 (data (i32.const 9564) "\1c")
 (data (i32.const 9576) "\01\00\00\00\02\00\00\00 ")
 (data (i32.const 9596) ",")
 (data (i32.const 9608) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00:\00 ")
 (data (i32.const 9644) "\1c")
 (data (i32.const 9656) "5\00\00\00\0c\00\00\00\90%\00\00\00\00\00\00\f0\08")
 (data (i32.const 9676) ",")
 (data (i32.const 9688) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00 ")
 (data (i32.const 9724) "\1c")
 (data (i32.const 9736) "5\00\00\00\0c\00\00\00\e0%\00\00\00\00\00\00\f0\08")
 (data (i32.const 9756) ",")
 (data (i32.const 9768) "\01\00\00\00\10\00\00\00t\00r\00a\00n\00s\00f\00e\00r")
 (data (i32.const 9804) ",")
 (data (i32.const 9816) "\01\00\00\00\0e\00\00\00O\00r\00d\00e\00r\00 \00#")
 (data (i32.const 9852) ",")
 (data (i32.const 9864) "\01\00\00\00\0e\00\00\00:\00 \00s\00o\00l\00d\00 ")
 (data (i32.const 9900) ",")
 (data (i32.const 9912) "5\00\00\00\14\00\00\00`&\00\00\00\00\00\00\90&\00\00\00\00\00\00\f0\08")
 (data (i32.const 9948) ",")
 (data (i32.const 9960) "\01\00\00\00\12\00\00\00:\00 \00b\00o\00u\00g\00h\00t\00 ")
 (data (i32.const 9996) ",")
 (data (i32.const 10008) "5\00\00\00\14\00\00\00`&\00\00\00\00\00\00\f0&\00\00\00\00\00\00\f0\08")
 (data (i32.const 10044) ",")
 (data (i32.const 10056) "\01\00\00\00\1a\00\00\00M\00a\00r\00k\00e\00t\00 \00s\00e\00l\00l\00:\00 ")
 (data (i32.const 10092) ",")
 (data (i32.const 10104) "5\00\00\00\14\00\00\00P\'\00\00\00\00\00\00\00%\00\00\00\00\00\00\f0\08")
 (data (i32.const 10140) "<")
 (data (i32.const 10152) "\01\00\00\00\1e\00\00\00F\00e\00e\00s\00 \00f\00r\00o\00m\00 \00p\00a\00i\00r\00 ")
 (data (i32.const 10204) "\1c")
 (data (i32.const 10216) "5\00\00\00\0c\00\00\00\b0\'\00\00\00\00\00\00\f0\08")
 (data (i32.const 10236) "L")
 (data (i32.const 10248) "\01\00\00\008\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00b\00a\00s\00e\00 \00a\00m\00o\00u\00n\00t\00 \00i\00n\00 \00t\00r\00a\00d\00e")
 (data (i32.const 10316) "L")
 (data (i32.const 10328) "\01\00\00\00:\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00q\00u\00o\00t\00e\00 \00a\00m\00o\00u\00n\00t\00 \00i\00n\00 \00t\00r\00a\00d\00e")
 (data (i32.const 10396) "L")
 (data (i32.const 10408) "\01\00\00\00.\00\00\00F\00e\00e\00s\00 \00e\00x\00c\00e\00e\00d\00 \00t\00r\00a\00d\00e\00 \00v\00a\00l\00u\00e")
 (data (i32.const 10476) "<")
 (data (i32.const 10488) "\01\00\00\00(\00\00\00B\00a\00s\00e\00 \00s\00y\00m\00b\00o\00l\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 10540) "<")
 (data (i32.const 10552) "\01\00\00\00*\00\00\00Q\00u\00o\00t\00e\00 \00s\00y\00m\00b\00o\00l\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 10604) "L")
 (data (i32.const 10616) "\01\00\00\002\00\00\00T\00a\00k\00e\00r\00 \00f\00e\00e\00 \00s\00y\00m\00b\00o\00l\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 10684) "L")
 (data (i32.const 10696) "\01\00\00\002\00\00\00M\00a\00k\00e\00r\00 \00f\00e\00e\00 \00s\00y\00m\00b\00o\00l\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 10764) ",")
 (data (i32.const 10776) "\01\00\00\00\1a\00\00\00B\00a\00l\00a\00n\00c\00e\00 \00e\00r\00r\00o\00r")
 (data (i32.const 10812) "L")
 (data (i32.const 10824) "\01\00\00\006\00\00\00I\00n\00s\00u\00f\00f\00i\00c\00i\00e\00n\00t\00 \00l\00o\00c\00k\00e\00d\00 \00b\00a\00l\00a\00n\00c\00e")
 (data (i32.const 10892) "\\")
 (data (i32.const 10904) "\01\00\00\00B\00\00\00N\00o\00 \00l\00i\00q\00u\00i\00d\00i\00t\00y\00 \00a\00t\00 \00a\00c\00c\00e\00p\00t\00a\00b\00l\00e\00 \00p\00r\00i\00c\00e\00s")
 (data (i32.const 10988) "L")
 (data (i32.const 11000) "\01\00\00\00<\00\00\00S\00e\00l\00l\00 \00a\00m\00o\00u\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00a\00s\00e\00 \00a\00s\00s\00e\00t")
 (data (i32.const 11068) "L")
 (data (i32.const 11080) "\01\00\00\004\00\00\00T\00r\00a\00d\00e\00 \00v\00a\00l\00u\00e\00 \00r\00o\00u\00n\00d\00s\00 \00t\00o\00 \00z\00e\00r\00o")
 (data (i32.const 11148) "\\")
 (data (i32.const 11160) "\01\00\00\00@\00\00\00N\00o\00 \00l\00i\00q\00u\00i\00d\00i\00t\00y\00 \00a\00t\00 \00a\00c\00c\00e\00p\00t\00a\00b\00l\00e\00 \00p\00r\00i\00c\00e")
 (data (i32.const 11244) "L")
 (data (i32.const 11256) "\01\00\00\00<\00\00\00T\00r\00i\00g\00g\00e\00r\00 \00p\00r\00i\00c\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00p\00o\00s\00i\00t\00i\00v\00e")
 (data (i32.const 11324) "L")
 (data (i32.const 11336) "\01\00\00\008\00\00\00L\00i\00m\00i\00t\00 \00p\00r\00i\00c\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00p\00o\00s\00i\00t\00i\00v\00e")
 (data (i32.const 11404) "\\")
 (data (i32.const 11416) "\01\00\00\00B\00\00\00T\00r\00i\00g\00g\00e\00r\00 \00p\00r\00i\00c\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00q\00u\00o\00t\00e\00 \00a\00s\00s\00e\00t")
 (data (i32.const 11500) "\\")
 (data (i32.const 11512) "\01\00\00\00@\00\00\00T\00r\00i\00g\00g\00e\00r\00 \00p\00r\00i\00c\00e\00 \00p\00r\00e\00c\00i\00s\00i\00o\00n\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 11596) "\\")
 (data (i32.const 11608) "\01\00\00\00>\00\00\00L\00i\00m\00i\00t\00 \00p\00r\00i\00c\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00q\00u\00o\00t\00e\00 \00a\00s\00s\00e\00t")
 (data (i32.const 11692) "L")
 (data (i32.const 11704) "\01\00\00\00<\00\00\00L\00i\00m\00i\00t\00 \00p\00r\00i\00c\00e\00 \00p\00r\00e\00c\00i\00s\00i\00o\00n\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 11772) "l")
 (data (i32.const 11784) "\01\00\00\00V\00\00\00T\00r\00i\00g\00g\00e\00r\00 \00p\00r\00i\00c\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00m\00u\00l\00t\00i\00p\00l\00e\00 \00o\00f\00 \00t\00i\00c\00k\00 \00s\00i\00z\00e")
 (data (i32.const 11884) "l")
 (data (i32.const 11896) "\01\00\00\00R\00\00\00L\00i\00m\00i\00t\00 \00p\00r\00i\00c\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00m\00u\00l\00t\00i\00p\00l\00e\00 \00o\00f\00 \00t\00i\00c\00k\00 \00s\00i\00z\00e")
 (data (i32.const 11996) "l")
 (data (i32.const 12008) "\01\00\00\00R\00\00\00B\00u\00y\00 \00s\00t\00o\00p\00 \00t\00r\00i\00g\00g\00e\00r\00 \00m\00u\00s\00t\00 \00b\00e\00 \00>\00=\00 \00c\00u\00r\00r\00e\00n\00t\00 \00p\00r\00i\00c\00e")
 (data (i32.const 12108) "l")
 (data (i32.const 12120) "\01\00\00\00T\00\00\00S\00e\00l\00l\00 \00s\00t\00o\00p\00 \00t\00r\00i\00g\00g\00e\00r\00 \00m\00u\00s\00t\00 \00b\00e\00 \00<\00=\00 \00c\00u\00r\00r\00e\00n\00t\00 \00p\00r\00i\00c\00e")
 (data (i32.const 12220) "l")
 (data (i32.const 12232) "\01\00\00\00T\00\00\00B\00u\00y\00 \00l\00i\00m\00i\00t\00 \00p\00r\00i\00c\00e\00 \00s\00h\00o\00u\00l\00d\00 \00b\00e\00 \00>\00=\00 \00t\00r\00i\00g\00g\00e\00r\00 \00p\00r\00i\00c\00e")
 (data (i32.const 12332) "l")
 (data (i32.const 12344) "\01\00\00\00R\00\00\00B\00u\00y\00 \00l\00i\00m\00i\00t\00 \00p\00r\00i\00c\00e\00 \00t\00o\00o\00 \00h\00i\00g\00h\00 \00(\00m\00a\00x\00 \002\00x\00 \00t\00r\00i\00g\00g\00e\00r\00)")
 (data (i32.const 12444) "l")
 (data (i32.const 12456) "\01\00\00\00V\00\00\00S\00e\00l\00l\00 \00l\00i\00m\00i\00t\00 \00p\00r\00i\00c\00e\00 \00s\00h\00o\00u\00l\00d\00 \00b\00e\00 \00<\00=\00 \00t\00r\00i\00g\00g\00e\00r\00 \00p\00r\00i\00c\00e")
 (data (i32.const 12556) "l")
 (data (i32.const 12568) "\01\00\00\00V\00\00\00S\00e\00l\00l\00 \00l\00i\00m\00i\00t\00 \00p\00r\00i\00c\00e\00 \00t\00o\00o\00 \00l\00o\00w\00 \00(\00m\00i\00n\00 \000\00.\005\00x\00 \00t\00r\00i\00g\00g\00e\00r\00)")
 (data (i32.const 12668) ",")
 (data (i32.const 12680) "\01\00\00\00\10\00\00\00s\00t\00o\00p\00l\00o\00s\00s")
 (data (i32.const 12716) ",")
 (data (i32.const 12728) "5\00\00\00\1c\00\00\00`&\00\00\00\00\00\00\f0&\00\00\00\00\00\00\00%\00\00\00\00\00\00\f0\08")
 (data (i32.const 12764) ",")
 (data (i32.const 12776) "5\00\00\00\1c\00\00\00`&\00\00\00\00\00\00\90&\00\00\00\00\00\00\00%\00\00\00\00\00\00\f0\08")
 (data (i32.const 12812) "\1c")
 (data (i32.const 12824) "5\00\00\00\0c\00\00\00\b0\'\00\00\00\00\00\00\f0\08")
 (data (i32.const 12844) ",")
 (data (i32.const 12856) "\01\00\00\00\16\00\00\00S\00t\00o\00p\00-\00l\00o\00s\00s\00 \00#")
 (data (i32.const 12892) "\1c")
 (data (i32.const 12904) "\01\00\00\00\04\00\00\00:\00 ")
 (data (i32.const 12924) ",")
 (data (i32.const 12936) "5\00\00\00\1c\00\00\00@2\00\00\00\00\00\00p2\00\00\00\00\00\00\00%\00\00\00\00\00\00\f0\08")
 (data (i32.const 12972) ",")
 (data (i32.const 12984) "\01\00\00\00\1c\00\00\00O\00r\00d\00e\00r\00 \00f\00i\00l\00l\00e\00d\00:\00 ")
 (data (i32.const 13020) ",")
 (data (i32.const 13032) "5\00\00\00\14\00\00\00\c02\00\00\00\00\00\00\00%\00\00\00\00\00\00\f0\08")
 (data (i32.const 13068) "\1c")
 (data (i32.const 13080) "5\00\00\00\0c\00\00\00\b0\'\00\00\00\00\00\00\f0\08")
 (data (i32.const 13100) ",")
 (data (i32.const 13112) "\01\00\00\00\18\00\00\00W\00i\00t\00h\00d\00r\00a\00w\00a\00l\00:\00 ")
 (data (i32.const 13148) "\1c")
 (data (i32.const 13160) "5\00\00\00\0c\00\00\00@3\00\00\00\00\00\00\f0\08")
 (data (i32.const 13180) "<")
 (data (i32.const 13192) "\01\00\00\00 \00\00\00N\00o\00 \00b\00a\00l\00a\00n\00c\00e\00 \00f\00o\00u\00n\00d")
 (data (i32.const 13244) "<")
 (data (i32.const 13256) "\01\00\00\00(\00\00\00I\00n\00s\00u\00f\00f\00i\00c\00i\00e\00n\00t\00 \00b\00a\00l\00a\00n\00c\00e")
 (data (i32.const 13308) "\1c")
 (data (i32.const 13320) "5\00\00\00\0c\00\00\00@3\00\00\00\00\00\00\f0\08")
 (data (i32.const 13340) "<")
 (data (i32.const 13352) "\01\00\00\00\1e\00\00\00O\00r\00d\00e\00r\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data (i32.const 13404) ",")
 (data (i32.const 13416) "\01\00\00\00\1c\00\00\00N\00o\00t\00 \00y\00o\00u\00r\00 \00o\00r\00d\00e\00r")
 (data (i32.const 13452) "L")
 (data (i32.const 13464) "\01\00\00\000\00\00\00C\00a\00n\00n\00o\00t\00 \00c\00a\00n\00c\00e\00l\00 \00t\00h\00i\00s\00 \00o\00r\00d\00e\00r")
 (data (i32.const 13532) ",")
 (data (i32.const 13544) "\01\00\00\00\1c\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l")
 (data (i32.const 13580) ",")
 (data (i32.const 13592) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00a\00s\00s\00e\00t")
 (data (i32.const 13628) "<")
 (data (i32.const 13640) "\01\00\00\00 \00\00\00i\00d\00x\006\004\00:\00 \00b\00a\00d\00 \00v\00a\00l\00u\00e")
 (data (i32.const 13692) "<")
 (data (i32.const 13704) "\01\00\00\00\"\00\00\00i\00d\00x\001\002\008\00:\00 \00b\00a\00d\00 \00v\00a\00l\00u\00e")
 (data (i32.const 13756) "<")
 (data (i32.const 13768) "\01\00\00\00\1e\00\00\00i\00d\00x\006\004\00:\00 \00b\00a\00d\00 \00t\00y\00p\00e")
 (data (i32.const 13820) "<")
 (data (i32.const 13832) "\01\00\00\00 \00\00\00i\00d\00x\001\002\008\00:\00 \00b\00a\00d\00 \00t\00y\00p\00e")
 (table $0 3 funcref)
 (elem $0 (i32.const 1) $start:~lib/as-chain/name~anonymous|0 $~lib/as-chain/asset/Symbol#precision)
 (export "orderbook" (global $assembly/orderbook/orderbook.contract/orderbook))
 (export "orderbook#get:receiver" (func $~lib/as-chain/helpers/Contract#get:receiver))
 (export "orderbook#set:receiver" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "orderbook#get:firstReceiver" (func $~lib/as-chain/helpers/Contract#get:firstReceiver))
 (export "orderbook#set:firstReceiver" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "orderbook#get:action" (func $~lib/as-chain/helpers/Contract#get:action))
 (export "orderbook#set:action" (func $~lib/rt/common/OBJECT#set:gcInfo2))
 (export "orderbook#constructor" (func $assembly/orderbook/orderbook.contract/orderbook#constructor))
 (export "orderbook#init" (func $assembly/orderbook/orderbook.contract/orderbook#init))
 (export "orderbook#createPair" (func $assembly/orderbook/orderbook.contract/orderbook#createPair))
 (export "orderbook#updatePair" (func $assembly/orderbook/orderbook.contract/orderbook#updatePair))
 (export "orderbook#clearPair" (func $assembly/orderbook/orderbook.contract/orderbook#clearPair))
 (export "orderbook#setPairStatus" (func $assembly/orderbook/orderbook.contract/orderbook#setPairStatus))
 (export "orderbook#onTransfer" (func $assembly/orderbook/orderbook.contract/orderbook#onTransfer))
 (export "orderbook#LimitOrder" (func $assembly/orderbook/orderbook.contract/orderbook#LimitOrder))
 (export "orderbook#marketOrder" (func $assembly/orderbook/orderbook.contract/orderbook#marketOrder))
 (export "orderbook#stopLossOrder" (func $assembly/orderbook/orderbook.contract/orderbook#stopLossOrder))
 (export "orderbook#processLimit" (func $assembly/orderbook/orderbook.contract/orderbook#processLimit))
 (export "orderbook#processStopLossTakeProfit" (func $assembly/orderbook/orderbook.contract/orderbook#processStopLossTakeProfit))
 (export "orderbook#withdrawAll" (func $assembly/orderbook/orderbook.contract/orderbook#withdrawAll))
 (export "orderbook#withdraw" (func $assembly/orderbook/orderbook.contract/orderbook#withdraw))
 (export "orderbook#cancelOrder" (func $assembly/orderbook/orderbook.contract/orderbook#cancelOrder))
 (export "apply" (func $assembly/orderbook/orderbook.contract/apply))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:~lib/as-chain/name~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (select
    (i32.le_u
     (local.tee $1
      (i32.and
       (local.get $0)
       (i32.const 65535)
      )
     )
     (i32.const 122)
    )
    (i32.const 0)
    (i32.ge_u
     (local.get $1)
     (i32.const 97)
    )
   )
   (return
    (i32.sub
     (local.get $0)
     (i32.const 91)
    )
   )
  )
  (if
   (select
    (i32.le_u
     (local.tee $1
      (i32.and
       (local.get $0)
       (i32.const 65535)
      )
     )
     (i32.const 53)
    )
    (i32.const 0)
    (i32.ge_u
     (local.get $1)
     (i32.const 49)
    )
   )
   (return
    (i32.sub
     (local.get $0)
     (i32.const 48)
    )
   )
  )
  (if
   (i32.eq
    (i32.and
     (local.get $0)
     (i32.const 65535)
    )
    (i32.const 46)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.const 65535)
 )
 (func $~lib/as-chain/name/Name#set:N (param $0 i32) (param $1 i64)
  (i64.store
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (local.tee $1
     (i32.and
      (i32.add
       (i32.shl
        (local.tee $2
         (memory.size)
        )
        (i32.const 16)
       )
       (i32.const 15)
      )
      (i32.const -16)
     )
    )
   )
   (if
    (i32.lt_s
     (memory.grow
      (select
       (local.get $2)
       (local.tee $1
        (i32.shr_u
         (i32.and
          (i32.add
           (i32.sub
            (local.get $0)
            (local.get $1)
           )
           (i32.const 65535)
          )
          (i32.const -65536)
         )
         (i32.const 16)
        )
       )
       (i32.lt_s
        (local.get $1)
        (local.get $2)
       )
      )
     )
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (memory.grow
       (local.get $1)
      )
      (i32.const 0)
     )
     (unreachable)
    )
   )
  )
  (global.set $~lib/rt/stub/offset
   (local.get $0)
  )
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  (i32.store
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (local.set $1
   (global.get $~lib/rt/stub/offset)
  )
  (call $~lib/rt/stub/maybeGrowMemory
   (i32.add
    (local.tee $2
     (i32.add
      (global.get $~lib/rt/stub/offset)
      (i32.const 4)
     )
    )
    (local.tee $0
     (i32.sub
      (i32.and
       (i32.add
        (local.get $0)
        (i32.const 19)
       )
       (i32.const -16)
      )
      (i32.const 4)
     )
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (local.get $2)
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo (param $0 i32) (param $1 i32)
  (i32.store offset=4
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo2 (param $0 i32) (param $1 i32)
  (i32.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:rtId (param $0 i32) (param $1 i32)
  (i32.store offset=12
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:rtSize (param $0 i32) (param $1 i32)
  (i32.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741804)
   )
   (unreachable)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.tee $2
    (i32.sub
     (local.tee $3
      (call $~lib/rt/stub/__alloc
       (i32.add
        (local.get $0)
        (i32.const 16)
       )
      )
     )
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $2)
   (local.get $0)
  )
  (i32.add
   (local.get $3)
   (i32.const 16)
  )
 )
 (func $assembly/orderbook/tables/pairs.table/PairsTable#set:quote_contract (param $0 i32) (param $1 i32)
  (i32.store offset=20
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size (param $0 i32) (param $1 i32)
  (i32.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/pairs.table/PairsTable#set:max_order_size (param $0 i32) (param $1 i32)
  (i32.store offset=28
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/pairs.table/PairsTable#set:tick_size (param $0 i32) (param $1 i32)
  (i32.store offset=32
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/pairs.table/PairsTable#set:maker_fee_bp (param $0 i32) (param $1 i32)
  (i32.store16 offset=36
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/pairs.table/PairsTable#set:taker_fee_bp (param $0 i32) (param $1 i32)
  (i32.store16 offset=38
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/pairs.table/PairsTable#set:status (param $0 i32) (param $1 i32)
  (i32.store offset=40
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/pairs.table/PairsTable#set:created_at (param $0 i32) (param $1 i64)
  (i64.store offset=48
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/pairs.table/PairsTable#constructor (param $0 i64) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (param $8 i32) (param $9 i32) (param $10 i32) (param $11 i64) (result i32)
  (local $12 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $12
    (call $~lib/rt/stub/__new
     (i32.const 56)
     (i32.const 9)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $12)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $12)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $12)
   (local.get $3)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:quote_contract
   (local.get $12)
   (local.get $4)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size
   (local.get $12)
   (local.get $5)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:max_order_size
   (local.get $12)
   (local.get $6)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:tick_size
   (local.get $12)
   (local.get $7)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:maker_fee_bp
   (local.get $12)
   (local.get $8)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:taker_fee_bp
   (local.get $12)
   (local.get $9)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:status
   (local.get $12)
   (local.get $10)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:created_at
   (local.get $12)
   (local.get $11)
  )
  (local.get $12)
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  (i32.shr_u
   (i32.load offset=16
    (i32.sub
     (local.get $0)
     (i32.const 20)
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/string/String.UTF8.byteLength (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $4
   (i32.add
    (local.get $0)
    (i32.load offset=16
     (i32.sub
      (local.get $0)
      (i32.const 20)
     )
    )
   )
  )
  (local.set $2
   (i32.ne
    (local.get $1)
    (i32.const 0)
   )
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $4)
    )
    (block $while-break|0
     (local.set $2
      (if (result i32)
       (i32.lt_u
        (local.tee $3
         (i32.load16_u
          (local.get $0)
         )
        )
        (i32.const 128)
       )
       (block (result i32)
        (br_if $while-break|0
         (i32.and
          (local.get $1)
          (i32.eqz
           (local.get $3)
          )
         )
        )
        (i32.add
         (local.get $2)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (local.get $3)
         (i32.const 2048)
        )
        (i32.add
         (local.get $2)
         (i32.const 2)
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $4)
            (i32.add
             (local.get $0)
             (i32.const 2)
            )
           )
           (i32.const 0)
           (i32.eq
            (i32.and
             (local.get $3)
             (i32.const 64512)
            )
            (i32.const 55296)
           )
          )
          (if
           (i32.eq
            (i32.and
             (i32.load16_u offset=2
              (local.get $0)
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (local.set $2
             (i32.add
              (local.get $2)
              (i32.const 4)
             )
            )
            (local.set $0
             (i32.add
              (local.get $0)
              (i32.const 4)
             )
            )
            (br $while-continue|0)
           )
          )
         )
         (i32.add
          (local.get $2)
          (i32.const 3)
         )
        )
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (local.get $2)
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $4
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
  )
  (local.set $1
   (local.get $2)
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $4)
    )
    (block
     (local.set $1
      (if (result i32)
       (i32.lt_u
        (local.tee $2
         (i32.load16_u
          (local.get $0)
         )
        )
        (i32.const 128)
       )
       (block (result i32)
        (i32.store8
         (local.get $1)
         (local.get $2)
        )
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (local.get $2)
         (i32.const 2048)
        )
        (block (result i32)
         (i32.store16
          (local.get $1)
          (i32.or
           (i32.or
            (i32.shr_u
             (local.get $2)
             (i32.const 6)
            )
            (i32.const 192)
           )
           (i32.shl
            (i32.or
             (i32.and
              (local.get $2)
              (i32.const 63)
             )
             (i32.const 128)
            )
            (i32.const 8)
           )
          )
         )
         (i32.add
          (local.get $1)
          (i32.const 2)
         )
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $4)
            (i32.add
             (local.get $0)
             (i32.const 2)
            )
           )
           (i32.const 0)
           (i32.eq
            (i32.and
             (local.get $2)
             (i32.const 64512)
            )
            (i32.const 55296)
           )
          )
          (if
           (i32.eq
            (i32.and
             (local.tee $5
              (i32.load16_u offset=2
               (local.get $0)
              )
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (i32.store
             (local.get $1)
             (i32.or
              (i32.or
               (i32.or
                (i32.shl
                 (i32.or
                  (i32.and
                   (local.tee $2
                    (i32.or
                     (i32.add
                      (i32.shl
                       (i32.and
                        (local.get $2)
                        (i32.const 1023)
                       )
                       (i32.const 10)
                      )
                      (i32.const 65536)
                     )
                     (i32.and
                      (local.get $5)
                      (i32.const 1023)
                     )
                    )
                   )
                   (i32.const 63)
                  )
                  (i32.const 128)
                 )
                 (i32.const 24)
                )
                (i32.shl
                 (i32.or
                  (i32.and
                   (i32.shr_u
                    (local.get $2)
                    (i32.const 6)
                   )
                   (i32.const 63)
                  )
                  (i32.const 128)
                 )
                 (i32.const 16)
                )
               )
               (i32.shl
                (i32.or
                 (i32.and
                  (i32.shr_u
                   (local.get $2)
                   (i32.const 12)
                  )
                  (i32.const 63)
                 )
                 (i32.const 128)
                )
                (i32.const 8)
               )
              )
              (i32.or
               (i32.shr_u
                (local.get $2)
                (i32.const 18)
               )
               (i32.const 240)
              )
             )
            )
            (local.set $1
             (i32.add
              (local.get $1)
              (i32.const 4)
             )
            )
            (local.set $0
             (i32.add
              (local.get $0)
              (i32.const 4)
             )
            )
            (br $while-continue|0)
           )
          )
         )
         (i32.store16
          (local.get $1)
          (i32.or
           (i32.or
            (i32.shr_u
             (local.get $2)
             (i32.const 12)
            )
            (i32.const 224)
           )
           (i32.shl
            (i32.or
             (i32.and
              (i32.shr_u
               (local.get $2)
               (i32.const 6)
              )
              (i32.const 63)
             )
             (i32.const 128)
            )
            (i32.const 8)
           )
          )
         )
         (i32.store8 offset=2
          (local.get $1)
          (i32.or
           (i32.and
            (local.get $2)
            (i32.const 63)
           )
           (i32.const 128)
          )
         )
         (i32.add
          (local.get $1)
          (i32.const 3)
         )
        )
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (if
   (local.get $3)
   (i32.store8
    (local.get $1)
    (i32.const 0)
   )
  )
 )
 (func $~lib/string/String.UTF8.encode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (call $~lib/rt/stub/__new
    (call $~lib/string/String.UTF8.byteLength
     (local.get $0)
     (local.get $1)
    )
    (i32.const 0)
   )
  )
  (call $~lib/string/String.UTF8.encodeUnsafe
   (local.get $0)
   (call $~lib/string/String#get:length
    (local.get $0)
   )
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (param $0 i32) (result i32)
  (i32.load offset=16
   (i32.sub
    (local.get $0)
    (i32.const 20)
   )
  )
 )
 (func $~lib/as-chain/system/assert (param $0 i32) (param $1 i32)
  (local $2 i32)
  (if
   (local.get $0)
   (return)
  )
  (local.set $0
   (call $~lib/string/String.UTF8.encode
    (local.get $1)
    (i32.const 1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (local.set $2
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 35)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.or
    (i32.lt_u
     (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
      (local.get $0)
     )
     (local.get $2)
    )
    (i32.gt_u
     (local.get $2)
     (i32.const 1073741820)
    )
   )
   (unreachable)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/as-chain/env/eosio_assert
   (i32.const 0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/system/check (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/system/assert
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/string/String#charCodeAt (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.le_u
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (local.get $1)
   )
   (return
    (i32.const -1)
   )
  )
  (i32.load16_u
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
  )
 )
 (func $~lib/as-chain/asset/Symbol#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 12)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/system/check
   (i32.le_s
    (call $~lib/string/String#get:length
     (i32.const 2288)
    )
    (i32.const 7)
   )
   (i32.const 2320)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 0)
  )
  (loop $for-loop|0
   (if
    (i32.gt_s
     (call $~lib/string/String#get:length
      (i32.const 2288)
     )
     (local.get $1)
    )
    (block
     (call $~lib/as-chain/system/check
      (select
       (i64.le_u
        (local.tee $2
         (i64.extend_i32_s
          (call $~lib/string/String#charCodeAt
           (i32.const 2288)
           (i32.sub
            (i32.sub
             (call $~lib/string/String#get:length
              (i32.const 2288)
             )
             (i32.const 1)
            )
            (local.get $1)
           )
          )
         )
        )
        (i64.const 90)
       )
       (i32.const 0)
       (i64.ge_u
        (local.get $2)
        (i64.const 65)
       )
      )
      (i32.const 2384)
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $0)
      (i64.or
       (local.get $2)
       (i64.load
        (local.get $0)
       )
      )
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $0)
      (i64.shl
       (i64.load
        (local.get $0)
       )
       (i64.const 8)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.load
    (local.get $0)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/asset/Asset#constructor (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 13)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/as-chain/asset/Asset#constructor@varargs (result i32)
  (local $0 i32)
  (block $2of2
   (block $1of2
    (block $outOfRange
     (br_table $1of2 $1of2 $2of2 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (local.set $0
    (call $~lib/as-chain/asset/Symbol#constructor)
   )
  )
  (call $~lib/as-chain/asset/Asset#constructor
   (i64.const 0)
   (local.get $0)
  )
 )
 (func $assembly/orderbook/tables/pairs.table/PairsTable#constructor@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $12of12
   (block $7of12
    (block $6of12
     (block $5of12
      (block $4of12
       (block $3of12
        (block $2of12
         (block $1of12
          (block $outOfRange
           (br_table $1of12 $1of12 $2of12 $3of12 $4of12 $5of12 $6of12 $7of12 $12of12 $12of12 $12of12 $12of12 $12of12 $outOfRange
            (global.get $~argumentsLength)
           )
          )
          (unreachable)
         )
         (local.set $6
          (call $~lib/as-chain/asset/Symbol#constructor)
         )
        )
        (local.set $0
         (global.get $~lib/as-chain/name/EMPTY_NAME)
        )
       )
       (local.set $5
        (call $~lib/as-chain/asset/Symbol#constructor)
       )
      )
      (local.set $1
       (global.get $~lib/as-chain/name/EMPTY_NAME)
      )
     )
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $4
      (call $~lib/as-chain/asset/Asset#constructor@varargs)
     )
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (local.set $3
     (call $~lib/as-chain/asset/Asset#constructor@varargs)
    )
   )
   (global.set $~argumentsLength
    (i32.const 0)
   )
   (local.set $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#constructor
   (i64.const 0)
   (local.get $6)
   (local.get $0)
   (local.get $5)
   (local.get $1)
   (local.get $4)
   (local.get $3)
   (local.get $2)
   (i32.const 0)
   (i32.const 0)
   (i32.const 2288)
   (i64.const 0)
  )
 )
 (func $assembly/orderbook/tables/pairs.table/PairsTable.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const -6224682770514313216)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/idxdb/IDXDB#set:scope (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/idxdb/IDXDB#set:table (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/idxdb/IDXDB#constructor (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i32) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 28)
       (i32.const 17)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $0)
   (local.get $3)
  )
  (i32.store offset=24
   (local.get $0)
   (local.get $4)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/idx64/IDX64#constructor (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i32) (result i32)
  (call $~lib/as-chain/idxdb/IDXDB#constructor
   (call $~lib/rt/stub/__new
    (i32.const 28)
    (i32.const 36)
   )
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
  )
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $~lib/util/memory/memmove|inlined.0
   (local.set $4
    (local.get $2)
   )
   (br_if $~lib/util/memory/memmove|inlined.0
    (i32.eq
     (local.get $0)
     (local.get $1)
    )
   )
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $1)
    )
    (loop $while-continue|0
     (if
      (local.get $4)
      (block
       (local.set $0
        (i32.add
         (local.tee $2
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (local.set $1
        (i32.add
         (local.tee $3
          (local.get $1)
         )
         (i32.const 1)
        )
       )
       (i32.store8
        (local.get $2)
        (i32.load8_u
         (local.get $3)
        )
       )
       (local.set $4
        (i32.sub
         (local.get $4)
         (i32.const 1)
        )
       )
       (br $while-continue|0)
      )
     )
    )
    (loop $while-continue|1
     (if
      (local.get $4)
      (block
       (i32.store8
        (i32.add
         (local.tee $4
          (i32.sub
           (local.get $4)
           (i32.const 1)
          )
         )
         (local.get $0)
        )
        (i32.load8_u
         (i32.add
          (local.get $1)
          (local.get $4)
         )
        )
       )
       (br $while-continue|1)
      )
     )
    )
   )
  )
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $5
   (local.tee $4
    (i32.shl
     (local.get $0)
     (local.get $1)
    )
   )
  )
  (local.set $1
   (call $~lib/rt/stub/__new
    (local.get $4)
    (i32.const 0)
   )
  )
  (if
   (local.get $3)
   (call $~lib/memory/memory.copy
    (local.get $1)
    (local.get $3)
    (local.get $5)
   )
  )
  (local.set $3
   (local.get $1)
  )
  (i32.store
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (local.get $2)
    )
   )
   (local.get $3)
  )
  (i32.store offset=4
   (local.get $1)
   (local.get $3)
  )
  (i32.store offset=8
   (local.get $1)
   (local.get $4)
  )
  (i32.store offset=12
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (i32.shl
     (local.get $1)
     (i32.const 2)
    )
   )
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 14)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $4)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/orderbook/tables/pairs.table/PairsTable#constructor@varargs
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (local.set $6
   (call $assembly/orderbook/tables/pairs.table/PairsTable.get:tableName)
  )
  (local.set $3
   (i64.and
    (i64.load
     (call $assembly/orderbook/tables/pairs.table/PairsTable.get:tableName)
    )
    (i64.const -16)
   )
  )
  (drop
   (i32.load offset=4
    (local.tee $5
     (call $~lib/rt/__newArray
      (i32.const 2)
      (i32.const 2)
      (i32.const 18)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $5)
   (i32.const 0)
   (call $~lib/as-chain/idx64/IDX64#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (local.get $3)
    (i32.const 0)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $5)
   (i32.const 1)
   (call $~lib/as-chain/idx64/IDX64#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i64.add
     (local.get $3)
     (i64.const 1)
    )
    (i32.const 1)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 15)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $2)
   (i64.const -1)
  )
  (local.set $3
   (i64.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $6)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 16)
    )
   )
   (local.get $3)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $0)
   (local.get $7)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $0)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $2)
  )
  (local.get $4)
 )
 (func $assembly/orderbook/tables/orders.table/OrdersTable#set:filled_amount (param $0 i32) (param $1 i32)
  (i32.store offset=36
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/orders.table/OrdersTable#set:trigger_price (param $0 i32) (param $1 i32)
  (i32.store offset=44
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/orders.table/OrdersTable#set:is_triggered (param $0 i32) (param $1 i32)
  (i32.store8 offset=48
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/orders.table/OrdersTable#set:status (param $0 i32) (param $1 i32)
  (i32.store8 offset=49
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/orders.table/OrdersTable#set:created_at (param $0 i32) (param $1 i64)
  (i64.store offset=56
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/orders.table/OrdersTable#set:updated_at (param $0 i32) (param $1 i64)
  (i64.store offset=64
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/orders.table/OrdersTable#constructor (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (param $8 i32) (param $9 i32) (param $10 i64) (param $11 i64) (result i32)
  (local $12 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $12
    (call $~lib/rt/stub/__new
     (i32.const 72)
     (i32.const 19)
    )
   )
   (local.get $0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $12)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $12)
   (local.get $2)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:quote_contract
   (local.get $12)
   (local.get $3)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size
   (local.get $12)
   (local.get $4)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:max_order_size
   (local.get $12)
   (local.get $5)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:tick_size
   (local.get $12)
   (local.get $6)
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:filled_amount
   (local.get $12)
   (local.get $7)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:status
   (local.get $12)
   (local.get $8)
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:trigger_price
   (local.get $12)
   (local.get $9)
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:is_triggered
   (local.get $12)
   (i32.const 0)
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:status
   (local.get $12)
   (i32.const 0)
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:created_at
   (local.get $12)
   (local.get $10)
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:updated_at
   (local.get $12)
   (local.get $11)
  )
  (local.get $12)
 )
 (func $assembly/orderbook/tables/orders.table/OrdersTable#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $14of14
   (block $9of14
    (block $8of14
     (block $7of14
      (block $6of14
       (block $5of14
        (block $2of14
         (block $outOfRange
          (br_table $2of14 $2of14 $2of14 $5of14 $5of14 $5of14 $6of14 $7of14 $8of14 $9of14 $14of14 $14of14 $14of14 $14of14 $14of14 $outOfRange
           (global.get $~argumentsLength)
          )
         )
         (unreachable)
        )
        (local.set $0
         (global.get $~lib/as-chain/name/EMPTY_NAME)
        )
       )
       (global.set $~argumentsLength
        (i32.const 0)
       )
       (local.set $5
        (call $~lib/as-chain/asset/Asset#constructor@varargs)
       )
      )
      (global.set $~argumentsLength
       (i32.const 0)
      )
      (local.set $4
       (call $~lib/as-chain/asset/Asset#constructor@varargs)
      )
     )
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $3
      (call $~lib/as-chain/asset/Asset#constructor@varargs)
     )
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (local.set $2
     (call $~lib/as-chain/asset/Asset#constructor@varargs)
    )
   )
   (global.set $~argumentsLength
    (i32.const 0)
   )
   (local.set $1
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#constructor
   (i64.const 0)
   (i64.const 0)
   (local.get $0)
   (i32.const 2288)
   (i32.const 2288)
   (local.get $5)
   (local.get $4)
   (local.get $3)
   (local.get $2)
   (local.get $1)
   (i64.const 0)
   (i64.const 0)
  )
 )
 (func $assembly/orderbook/tables/orders.table/OrdersTable.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const -6497942333781180416)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/idx128/IDX128#constructor (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i32) (result i32)
  (call $~lib/as-chain/idxdb/IDXDB#constructor
   (call $~lib/rt/stub/__new
    (i32.const 28)
    (i32.const 38)
   )
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
  )
 )
 (func $assembly/orderbook/tables/orders.table/OrdersTable.tableIndexes (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local.set $3
   (i64.and
    (i64.load
     (call $assembly/orderbook/tables/orders.table/OrdersTable.get:tableName)
    )
    (i64.const -16)
   )
  )
  (drop
   (i32.load offset=4
    (local.tee $2
     (call $~lib/rt/__newArray
      (i32.const 6)
      (i32.const 2)
      (i32.const 18)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $2)
   (i32.const 0)
   (call $~lib/as-chain/idx64/IDX64#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (local.get $3)
    (i32.const 0)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $2)
   (i32.const 1)
   (call $~lib/as-chain/idx64/IDX64#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i64.add
     (local.get $3)
     (i64.const 1)
    )
    (i32.const 1)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $2)
   (i32.const 2)
   (call $~lib/as-chain/idx64/IDX64#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i64.add
     (local.get $3)
     (i64.const 2)
    )
    (i32.const 2)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $2)
   (i32.const 3)
   (call $~lib/as-chain/idx64/IDX64#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i64.add
     (local.get $3)
     (i64.const 3)
    )
    (i32.const 3)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $2)
   (i32.const 4)
   (call $~lib/as-chain/idx128/IDX128#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i64.add
     (local.get $3)
     (i64.const 4)
    )
    (i32.const 4)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $2)
   (i32.const 5)
   (call $~lib/as-chain/idx64/IDX64#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i64.add
     (local.get $3)
     (i64.const 5)
    )
    (i32.const 5)
   )
  )
  (local.get $2)
 )
 (func $assembly/orderbook/tables/trades.table/TradesTable#set:sell_order_id (param $0 i32) (param $1 i64)
  (i64.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/trades.table/TradesTable#set:total_value (param $0 i32) (param $1 i32)
  (i32.store offset=48
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/trades.table/TradesTable#set:buyer_fee (param $0 i32) (param $1 i32)
  (i32.store offset=52
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/trades.table/TradesTable#set:seller_fee (param $0 i32) (param $1 i32)
  (i32.store offset=56
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/trades.table/TradesTable#constructor (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (param $8 i32) (param $9 i32) (param $10 i32) (param $11 i64) (result i32)
  (local $12 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $12
    (call $~lib/rt/stub/__new
     (i32.const 72)
     (i32.const 23)
    )
   )
   (local.get $0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $12)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $12)
   (local.get $2)
  )
  (call $assembly/orderbook/tables/trades.table/TradesTable#set:sell_order_id
   (local.get $12)
   (local.get $3)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:tick_size
   (local.get $12)
   (local.get $4)
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:filled_amount
   (local.get $12)
   (local.get $5)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:status
   (local.get $12)
   (local.get $6)
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:trigger_price
   (local.get $12)
   (local.get $7)
  )
  (call $assembly/orderbook/tables/trades.table/TradesTable#set:total_value
   (local.get $12)
   (local.get $8)
  )
  (call $assembly/orderbook/tables/trades.table/TradesTable#set:buyer_fee
   (local.get $12)
   (local.get $9)
  )
  (call $assembly/orderbook/tables/trades.table/TradesTable#set:seller_fee
   (local.get $12)
   (local.get $10)
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:updated_at
   (local.get $12)
   (local.get $11)
  )
  (local.get $12)
 )
 (func $assembly/orderbook/tables/trades.table/TradesTable#constructor@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $12of12
   (block $10of12
    (block $9of12
     (block $8of12
      (block $7of12
       (block $6of12
        (block $5of12
         (block $4of12
          (block $outOfRange
           (br_table $4of12 $4of12 $4of12 $4of12 $4of12 $5of12 $6of12 $7of12 $8of12 $9of12 $10of12 $12of12 $12of12 $outOfRange
            (global.get $~argumentsLength)
           )
          )
          (unreachable)
         )
         (local.set $0
          (global.get $~lib/as-chain/name/EMPTY_NAME)
         )
        )
        (local.set $1
         (global.get $~lib/as-chain/name/EMPTY_NAME)
        )
       )
       (global.set $~argumentsLength
        (i32.const 0)
       )
       (local.set $6
        (call $~lib/as-chain/asset/Asset#constructor@varargs)
       )
      )
      (global.set $~argumentsLength
       (i32.const 0)
      )
      (local.set $5
       (call $~lib/as-chain/asset/Asset#constructor@varargs)
      )
     )
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $4
      (call $~lib/as-chain/asset/Asset#constructor@varargs)
     )
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (local.set $3
     (call $~lib/as-chain/asset/Asset#constructor@varargs)
    )
   )
   (global.set $~argumentsLength
    (i32.const 0)
   )
   (local.set $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/trades.table/TradesTable#constructor
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (i64.const 0)
   (local.get $0)
   (local.get $1)
   (local.get $6)
   (local.get $5)
   (local.get $4)
   (local.get $3)
   (local.get $2)
   (i64.const 0)
  )
 )
 (func $assembly/orderbook/tables/trades.table/TradesTable.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const -3617352161135951872)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/trades.table/TradesTable>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 24)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $5)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/orderbook/tables/trades.table/TradesTable#constructor@varargs
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (local.set $6
   (call $assembly/orderbook/tables/trades.table/TradesTable.get:tableName)
  )
  (local.set $2
   (i64.and
    (i64.load
     (call $assembly/orderbook/tables/trades.table/TradesTable.get:tableName)
    )
    (i64.const -16)
   )
  )
  (drop
   (i32.load offset=4
    (local.tee $3
     (call $~lib/rt/__newArray
      (i32.const 5)
      (i32.const 2)
      (i32.const 18)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $3)
   (i32.const 0)
   (call $~lib/as-chain/idx64/IDX64#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (local.get $2)
    (i32.const 0)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $3)
   (i32.const 1)
   (call $~lib/as-chain/idx64/IDX64#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i64.add
     (local.get $2)
     (i64.const 1)
    )
    (i32.const 1)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $3)
   (i32.const 2)
   (call $~lib/as-chain/idx64/IDX64#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i64.add
     (local.get $2)
     (i64.const 2)
    )
    (i32.const 2)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $3)
   (i32.const 3)
   (call $~lib/as-chain/idx64/IDX64#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i64.add
     (local.get $2)
     (i64.const 3)
    )
    (i32.const 3)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $3)
   (i32.const 4)
   (call $~lib/as-chain/idx64/IDX64#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i64.add
     (local.get $2)
     (i64.const 4)
    )
    (i32.const 4)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 25)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $4)
   (i64.const -1)
  )
  (local.set $2
   (i64.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $6)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 26)
    )
   )
   (local.get $2)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $0)
   (local.get $7)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $0)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $3)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $5)
   (local.get $4)
  )
  (local.get $5)
 )
 (func $assembly/orderbook/tables/config.table/ConfigTable#set:paused (param $0 i32) (param $1 i32)
  (i32.store8 offset=12
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/config.table/ConfigTable#set:min_maker_fee_bp (param $0 i32) (param $1 i32)
  (i32.store16 offset=14
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/config.table/ConfigTable#set:max_maker_fee_bp (param $0 i32) (param $1 i32)
  (i32.store16 offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/config.table/ConfigTable#set:min_taker_fee_bp (param $0 i32) (param $1 i32)
  (i32.store16 offset=18
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/config.table/ConfigTable#set:max_taker_fee_bp (param $0 i32) (param $1 i32)
  (i32.store16 offset=20
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/config.table/ConfigTable#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 28)
     (i32.const 27)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $0)
  )
  (call $assembly/orderbook/tables/config.table/ConfigTable#set:paused
   (local.get $4)
   (i32.const 0)
  )
  (call $assembly/orderbook/tables/config.table/ConfigTable#set:min_maker_fee_bp
   (local.get $4)
   (local.get $1)
  )
  (call $assembly/orderbook/tables/config.table/ConfigTable#set:max_maker_fee_bp
   (local.get $4)
   (i32.const 100)
  )
  (call $assembly/orderbook/tables/config.table/ConfigTable#set:min_taker_fee_bp
   (local.get $4)
   (local.get $2)
  )
  (call $assembly/orderbook/tables/config.table/ConfigTable#set:max_taker_fee_bp
   (local.get $4)
   (i32.const 100)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $assembly/orderbook/tables/config.table/ConfigTable.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 4982871454518345728)
  )
  (local.get $0)
 )
 (func $assembly/orderbook/tables/fees.table/FeesTable#set:last_updated (param $0 i32) (param $1 i64)
  (i64.store offset=32
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/fees.table/FeesTable#constructor (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i64) (result i32)
  (local $7 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $7
    (call $~lib/rt/stub/__new
     (i32.const 40)
     (i32.const 31)
    )
   )
   (local.get $0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $7)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $7)
   (local.get $2)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:quote_contract
   (local.get $7)
   (local.get $3)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size
   (local.get $7)
   (local.get $4)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:max_order_size
   (local.get $7)
   (local.get $5)
  )
  (call $assembly/orderbook/tables/fees.table/FeesTable#set:last_updated
   (local.get $7)
   (local.get $6)
  )
  (local.get $7)
 )
 (func $assembly/orderbook/tables/fees.table/FeesTable#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $7of7
   (block $5of7
    (block $4of7
     (block $3of7
      (block $2of7
       (block $outOfRange
        (br_table $2of7 $2of7 $2of7 $3of7 $4of7 $5of7 $7of7 $7of7 $outOfRange
         (global.get $~argumentsLength)
        )
       )
       (unreachable)
      )
      (local.set $0
       (global.get $~lib/as-chain/name/EMPTY_NAME)
      )
     )
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $3
      (call $~lib/as-chain/asset/Asset#constructor@varargs)
     )
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (local.set $2
     (call $~lib/as-chain/asset/Asset#constructor@varargs)
    )
   )
   (global.set $~argumentsLength
    (i32.const 0)
   )
   (local.set $1
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/fees.table/FeesTable#constructor
   (i64.const 0)
   (i64.const 0)
   (local.get $0)
   (local.get $3)
   (local.get $2)
   (local.get $1)
   (i64.const 0)
  )
 )
 (func $assembly/orderbook/tables/fees.table/FeesTable.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 6527263972431757312)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/fees.table/FeesTable>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $5)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/orderbook/tables/fees.table/FeesTable#constructor@varargs
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (local.set $6
   (call $assembly/orderbook/tables/fees.table/FeesTable.get:tableName)
  )
  (local.set $2
   (i64.and
    (i64.load
     (call $assembly/orderbook/tables/fees.table/FeesTable.get:tableName)
    )
    (i64.const -16)
   )
  )
  (drop
   (i32.load offset=4
    (local.tee $4
     (call $~lib/rt/__newArray
      (i32.const 3)
      (i32.const 2)
      (i32.const 18)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $4)
   (i32.const 0)
   (call $~lib/as-chain/idx128/IDX128#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (local.get $2)
    (i32.const 0)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $4)
   (i32.const 1)
   (call $~lib/as-chain/idx64/IDX64#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i64.add
     (local.get $2)
     (i64.const 1)
    )
    (i32.const 1)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $4)
   (i32.const 2)
   (call $~lib/as-chain/idx64/IDX64#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i64.add
     (local.get $2)
     (i64.const 2)
    )
    (i32.const 2)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 33)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $3)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $3)
   (i64.const -1)
  )
  (local.set $2
   (i64.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $6)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 34)
    )
   )
   (local.get $2)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $0)
   (local.get $7)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $0)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $3)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $3)
   (local.get $4)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $5)
   (local.get $3)
  )
  (local.get $5)
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (block (result i32)
       (if
        (i32.eqz
         (local.get $0)
        )
        (local.set $0
         (call $~lib/rt/stub/__new
          (i32.const 34)
          (i32.const 7)
         )
        )
       )
       (local.get $0)
      )
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 8)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#constructor
    (i32.load
     (local.get $0)
    )
    (i32.load
     (local.get $0)
    )
   )
  )
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (local.set $4
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 20)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $2)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/orderbook/tables/orders.table/OrdersTable#constructor@varargs
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (local.set $5
   (call $assembly/orderbook/tables/orders.table/OrdersTable.get:tableName)
  )
  (local.set $6
   (call $assembly/orderbook/tables/orders.table/OrdersTable.tableIndexes
    (local.get $3)
    (local.get $4)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 21)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $1)
   (i64.const -1)
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i64.load
    (local.get $4)
   )
  )
  (local.set $9
   (i64.load
    (local.get $5)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 22)
    )
   )
   (local.get $7)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $3)
   (local.get $9)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $6)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:quote_contract
   (local.get $0)
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/trades.table/TradesTable>#constructor
    (i32.load
     (local.get $0)
    )
    (i32.load
     (local.get $0)
    )
   )
  )
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (local.set $4
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 28)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $2)
   (i64.const -1)
  )
  (drop
   (call $assembly/orderbook/tables/config.table/ConfigTable#constructor
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (i32.const 0)
    (i32.const 0)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (local.set $5
   (call $assembly/orderbook/tables/config.table/ConfigTable.get:tableName)
  )
  (drop
   (i64.load
    (call $assembly/orderbook/tables/config.table/ConfigTable.get:tableName)
   )
  )
  (local.set $6
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 18)
    (i32.const 2448)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 29)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $1)
   (i64.const -1)
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i64.load
    (local.get $4)
   )
  )
  (local.set $9
   (i64.load
    (local.get $5)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 30)
    )
   )
   (local.get $7)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $3)
   (local.get $9)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $6)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:max_order_size
   (local.get $0)
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/fees.table/FeesTable>#constructor
    (i32.load
     (local.get $0)
    )
    (i32.load
     (local.get $0)
    )
   )
  )
  (i32.store16 offset=32
   (local.get $0)
   (i32.const 500)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/helpers/Contract#get:receiver (param $0 i32) (result i32)
  (i32.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/helpers/Contract#get:firstReceiver (param $0 i32) (result i32)
  (i32.load offset=4
   (local.get $0)
  )
 )
 (func $~lib/as-chain/helpers/Contract#get:action (param $0 i32) (result i32)
  (i32.load offset=8
   (local.get $0)
  )
 )
 (func $~lib/as-chain/action/requireAuth (param $0 i32)
  (call $~lib/as-chain/env/require_auth
   (i64.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/action/isAccount (param $0 i32) (result i32)
  (call $~lib/as-chain/env/is_account
   (i64.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary (param $0 i32) (param $1 i32)
  (i32.store8 offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 39)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/config.table/ConfigTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/config.table/ConfigTable>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/config.table/ConfigTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk (param $0 i32) (result i32)
  (i32.ge_s
   (i32.load offset=4
    (local.get $0)
   )
   (i32.const 0)
  )
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  (loop $while-continue|0
   (if
    (local.get $1)
    (block
     (local.set $0
      (i32.add
       (local.tee $2
        (local.get $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (local.get $2)
      (i32.const 0)
     )
     (local.set $1
      (i32.sub
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $while-continue|0)
    )
   )
  )
 )
 (func $~lib/array/Array<u8>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (select
       (local.get $0)
       (i32.const 8)
       (i32.gt_u
        (local.get $0)
        (i32.const 8)
       )
      )
     )
     (i32.const 0)
    )
   )
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 40)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#incPos (param $0 i32) (param $1 i32)
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.add
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (if
   (i32.gt_u
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 2640)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<u64> (param $0 i32) (result i64)
  (local $1 i64)
  (local.set $1
   (i64.load
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (i32.const 8)
  )
  (local.get $1)
 )
 (func $~lib/array/Array<u8>#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.get $0)
   )
  )
  (local.set $1
   (if (result i32)
    (i32.lt_s
     (local.get $1)
     (i32.const 0)
    )
    (select
     (local.tee $1
      (i32.add
       (local.get $1)
       (local.get $3)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (local.get $1)
      (i32.const 0)
     )
    )
    (select
     (local.get $1)
     (local.get $3)
     (i32.lt_s
      (local.get $1)
      (local.get $3)
     )
    )
   )
  )
  (call $~lib/memory/memory.copy
   (i32.load offset=4
    (local.tee $3
     (call $~lib/rt/__newArray
      (local.tee $2
       (select
        (local.tee $2
         (i32.sub
          (if (result i32)
           (i32.lt_s
            (local.get $2)
            (i32.const 0)
           )
           (select
            (local.tee $2
             (i32.add
              (local.get $2)
              (local.get $3)
             )
            )
            (i32.const 0)
            (i32.gt_s
             (local.get $2)
             (i32.const 0)
            )
           )
           (select
            (local.get $2)
            (local.get $3)
            (i32.lt_s
             (local.get $2)
             (local.get $3)
            )
           )
          )
          (local.get $1)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $2)
         (i32.const 0)
        )
       )
      )
      (i32.const 0)
      (i32.const 4)
      (i32.const 0)
     )
    )
   )
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/serializer/Decoder#unpack (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (call $~lib/as-chain/serializer/Packer#unpack@virtual
    (local.get $1)
    (call $~lib/array/Array<u8>#slice
     (i32.load
      (local.get $0)
     )
     (i32.load offset=4
      (local.get $0)
     )
     (i32.load offset=12
      (i32.load
       (local.get $0)
      )
     )
    )
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<bool> (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (i32.load8_u
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (i32.const 1)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<u16> (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (i32.load16_u
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (i32.const 2)
  )
  (local.get $1)
 )
 (func $assembly/orderbook/tables/config.table/ConfigTable#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/orderbook/tables/config.table/ConfigTable#set:paused
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $assembly/orderbook/tables/config.table/ConfigTable#set:min_maker_fee_bp
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
  )
  (call $assembly/orderbook/tables/config.table/ConfigTable#set:max_maker_fee_bp
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
  )
  (call $assembly/orderbook/tables/config.table/ConfigTable#set:min_taker_fee_bp
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
  )
  (call $assembly/orderbook/tables/config.table/ConfigTable#set:max_taker_fee_bp
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/config.table/ConfigTable>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (drop
   (call $assembly/orderbook/tables/config.table/ConfigTable#unpack
    (local.tee $0
     (call $assembly/orderbook/tables/config.table/ConfigTable#constructor
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (i32.const 0)
      (i32.const 0)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/config.table/ConfigTable>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/config.table/ConfigTable>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/config.table/ConfigTable>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/config.table/ConfigTable>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/config.table/ConfigTable>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 41)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (call $~lib/array/Array<u8>#constructor
    (local.get $0)
   )
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Encoder#incPos (param $0 i32) (param $1 i32)
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.add
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (if
   (i32.gt_u
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 3056)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<u64> (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 8)
  )
  (i64.store
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#pack (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $1
   (i32.load offset=12
    (local.tee $2
     (call $~lib/as-chain/serializer/Packer#pack@virtual
      (local.get $1)
     )
    )
   )
  )
  (if
   (i32.lt_u
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
    (i32.add
     (local.get $1)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 3136)
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $2)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (local.get $1)
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.add
     (local.get $3)
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
    )
    (local.get $2)
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<bool> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 1)
  )
  (i32.store8
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<u16> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 2)
  )
  (i32.store16
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#getBytes (param $0 i32) (result i32)
  (call $~lib/array/Array<u8>#slice
   (i32.load
    (local.get $0)
   )
   (i32.const 0)
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $assembly/orderbook/tables/config.table/ConfigTable#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=24
        (local.get $0)
       )
      )
      (i32.const 33)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $1)
   (i32.load16_u offset=14
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $1)
   (i32.load16_u offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $1)
   (i32.load16_u offset=18
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $1)
   (i32.load16_u offset=20
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load
      (i32.add
       (i32.load offset=4
        (local.get $0)
       )
       (i32.shl
        (local.get $1)
        (i32.const 2)
       )
      )
     )
    )
   )
   (unreachable)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/idxdb/SecondaryValue#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 44)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/array/Array<u64>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 45)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 134217727)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (i32.shl
       (select
        (local.get $0)
        (i32.const 8)
        (i32.gt_u
         (local.get $0)
         (i32.const 8)
        )
       )
       (i32.const 3)
      )
     )
     (i32.const 0)
    )
   )
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $assembly/orderbook/tables/config.table/ConfigTable#getSecondaryValue (result i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 3216)
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (i32.const 0)
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/config.table/ConfigTable>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
    (local.get $1)
   )
   (i32.const 2736)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $4
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
       (local.get $1)
      )
      (i32.const 2800)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $6
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/idxdb/IDXDB#set:table
      (local.get $1)
      (i64.load
       (local.get $6)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 2944)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $6
   (i32.load offset=12
    (local.tee $2
     (call $assembly/orderbook/tables/config.table/ConfigTable#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $7)
   (i32.load offset=4
    (local.get $2)
   )
   (local.get $6)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $4)
      )
     )
     (local.set $2
      (call $assembly/orderbook/tables/config.table/ConfigTable#getSecondaryValue)
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $2)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $assembly/orderbook/tables/config.table/ConfigTable#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $4)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/config.table/ConfigTable>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/config.table/ConfigTable>#find
      (i32.load
       (local.get $0)
      )
      (local.tee $6
       (i64.load
        (local.get $1)
       )
      )
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $3
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $2)
   )
  )
  (local.set $7
   (i32.load
    (local.tee $5
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (local.set $10
   (i32.load offset=12
    (local.tee $9
     (call $assembly/orderbook/tables/config.table/ConfigTable#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#constructor
    (local.get $7)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $7)
     )
     (i64.load offset=16
      (local.get $7)
     )
     (local.get $8)
     (local.get $3)
     (i32.load offset=4
      (local.get $9)
     )
     (local.get $10)
    )
    (local.get $3)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $5)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $5)
       )
       (local.get $4)
      )
      (i64.load
       (local.get $1)
      )
      (call $assembly/orderbook/tables/config.table/ConfigTable#getSecondaryValue)
      (i64.load
       (local.get $2)
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $3
     (i64.load
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $5)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $5)
    (select
     (i64.const -2)
     (i64.add
      (local.get $3)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $3)
      (i64.const -2)
     )
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#init (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/action/isAccount
    (local.get $1)
   )
   (i32.const 2480)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/action/isAccount
    (local.get $2)
   )
   (i32.const 2544)
  )
  (if
   (local.tee $3
    (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/config.table/ConfigTable>#getByKey (result i32)
     (drop
      (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/config.table/ConfigTable>#getByKey
       (i32.const 0)
       (i32.eqz
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
         (local.tee $4
          (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/config.table/ConfigTable>#find
           (local.tee $3
            (i32.load
             (i32.load offset=24
              (local.get $0)
             )
            )
           )
           (i64.const 0)
          )
         )
        )
       )
      )
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/config.table/ConfigTable>#get
      (i32.load
       (local.get $3)
      )
      (local.get $4)
     )
    )
   )
   (block
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $3)
     (local.get $1)
    )
    (call $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size
     (local.get $3)
     (local.get $2)
    )
    (local.set $2
     (i32.load
      (local.get $0)
     )
    )
    (local.set $0
     (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/config.table/ConfigTable>#requireFind
      (i32.load
       (local.tee $1
        (i32.load offset=24
         (local.get $0)
        )
       )
      )
      (i64.load
       (local.get $3)
      )
      (i32.const 1424)
     )
    )
    (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/config.table/ConfigTable>#update
     (i32.load
      (local.get $1)
     )
     (local.get $0)
     (local.get $3)
     (local.get $2)
    )
   )
   (block
    (local.set $1
     (call $assembly/orderbook/tables/config.table/ConfigTable#constructor
      (local.get $1)
      (i32.const 1)
      (i32.const 1)
      (local.get $2)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/config.table/ConfigTable>#store
     (i32.load offset=24
      (local.get $0)
     )
     (local.get $1)
     (i32.load
      (local.get $0)
     )
    )
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#getConfig (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
    (local.tee $1
     (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/config.table/ConfigTable>#find
      (i32.load
       (local.tee $0
        (i32.load offset=24
         (local.get $0)
        )
       )
      )
      (i64.const 0)
     )
    )
   )
   (i32.const 3280)
  )
  (if (result i32)
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/config.table/ConfigTable>#get
     (i32.load
      (i32.load
       (local.get $0)
      )
     )
     (local.get $1)
    )
   )
   (local.get $0)
   (call $assembly/orderbook/tables/config.table/ConfigTable#constructor
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (i32.const 0)
    (i32.const 0)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
 )
 (func $~lib/rt/stub/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (local.get $1)
    (i32.const 1073741804)
   )
   (unreachable)
  )
  (local.set $3
   (i32.add
    (local.get $1)
    (i32.const 16)
   )
  )
  (if
   (i32.eqz
    (select
     (i32.eqz
      (i32.and
       (local.tee $0
        (i32.sub
         (local.get $0)
         (i32.const 16)
        )
       )
       (i32.const 15)
      )
     )
     (i32.const 0)
     (local.get $0)
    )
   )
   (unreachable)
  )
  (local.set $6
   (i32.eq
    (global.get $~lib/rt/stub/offset)
    (i32.add
     (local.get $0)
     (local.tee $4
      (i32.load
       (local.tee $5
        (i32.sub
         (local.get $0)
         (i32.const 4)
        )
       )
      )
     )
    )
   )
  )
  (local.set $2
   (i32.sub
    (i32.and
     (i32.add
      (local.get $3)
      (i32.const 19)
     )
     (i32.const -16)
    )
    (i32.const 4)
   )
  )
  (if
   (i32.gt_u
    (local.get $3)
    (local.get $4)
   )
   (if
    (local.get $6)
    (block
     (if
      (i32.gt_u
       (local.get $3)
       (i32.const 1073741820)
      )
      (unreachable)
     )
     (call $~lib/rt/stub/maybeGrowMemory
      (i32.add
       (local.get $0)
       (local.get $2)
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $2)
     )
    )
    (block
     (call $~lib/memory/memory.copy
      (local.tee $2
       (call $~lib/rt/stub/__alloc
        (select
         (local.get $2)
         (local.tee $3
          (i32.shl
           (local.get $4)
           (i32.const 1)
          )
         )
         (i32.gt_u
          (local.get $2)
          (local.get $3)
         )
        )
       )
      )
      (local.get $0)
      (local.get $4)
     )
     (local.set $0
      (local.get $2)
     )
    )
   )
   (if
    (local.get $6)
    (block
     (global.set $~lib/rt/stub/offset
      (i32.add
       (local.get $0)
       (local.get $2)
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (i32.sub
    (local.get $0)
    (i32.const 4)
   )
   (local.get $1)
  )
  (i32.add
   (local.get $0)
   (i32.const 16)
  )
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.gt_u
    (local.get $1)
    (i32.shr_u
     (local.tee $3
      (i32.load offset=8
       (local.get $0)
      )
     )
     (local.get $2)
    )
   )
   (block
    (if
     (i32.gt_u
      (local.get $1)
      (i32.shr_u
       (i32.const 1073741820)
       (local.get $2)
      )
     )
     (unreachable)
    )
    (local.set $1
     (i32.shl
      (select
       (local.get $1)
       (i32.const 8)
       (i32.gt_u
        (local.get $1)
        (i32.const 8)
       )
      )
      (local.get $2)
     )
    )
    (call $~lib/memory/memory.fill
     (i32.add
      (local.tee $2
       (call $~lib/rt/stub/__renew
        (local.tee $4
         (i32.load
          (local.get $0)
         )
        )
        (local.tee $1
         (select
          (local.tee $2
           (select
            (local.tee $2
             (i32.shl
              (local.get $3)
              (i32.const 1)
             )
            )
            (i32.const 1073741820)
            (i32.lt_u
             (local.get $2)
             (i32.const 1073741820)
            )
           )
          )
          (local.get $1)
          (i32.lt_u
           (local.get $1)
           (local.get $2)
          )
         )
        )
       )
      )
      (local.get $3)
     )
     (i32.sub
      (local.get $1)
      (local.get $3)
     )
    )
    (if
     (i32.ne
      (local.get $2)
      (local.get $4)
     )
     (block
      (i32.store
       (local.get $0)
       (local.get $2)
      )
      (i32.store offset=4
       (local.get $0)
       (local.get $2)
      )
     )
    )
    (i32.store offset=8
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/array/Array<u8>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (block
    (if
     (i32.lt_s
      (local.get $1)
      (i32.const 0)
     )
     (unreachable)
    )
    (call $~lib/array/ensureCapacity
     (local.get $0)
     (local.tee $3
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (i32.const 0)
    )
    (call $~lib/rt/common/OBJECT#set:rtId
     (local.get $0)
     (local.get $3)
    )
   )
  )
  (i32.store8
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
   (local.get $2)
  )
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  (select
   (select
    (i32.add
     (i32.ge_u
      (local.get $0)
      (i32.const 10)
     )
     (i32.const 1)
    )
    (i32.add
     (i32.add
      (i32.ge_u
       (local.get $0)
       (i32.const 10000)
      )
      (i32.const 3)
     )
     (i32.ge_u
      (local.get $0)
      (i32.const 1000)
     )
    )
    (i32.lt_u
     (local.get $0)
     (i32.const 100)
    )
   )
   (select
    (i32.add
     (i32.ge_u
      (local.get $0)
      (i32.const 1000000)
     )
     (i32.const 6)
    )
    (i32.add
     (i32.add
      (i32.ge_u
       (local.get $0)
       (i32.const 1000000000)
      )
      (i32.const 8)
     )
     (i32.ge_u
      (local.get $0)
      (i32.const 100000000)
     )
    )
    (i32.lt_u
     (local.get $0)
     (i32.const 10000000)
    )
   )
   (i32.lt_u
    (local.get $0)
    (i32.const 100000)
   )
  )
 )
 (func $~lib/util/number/utoa_dec_simple<u32> (param $0 i32) (param $1 i32) (param $2 i32)
  (loop $do-continue|0
   (i32.store16
    (i32.add
     (local.get $0)
     (i32.shl
      (local.tee $2
       (i32.sub
        (local.get $2)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.add
     (i32.rem_u
      (local.get $1)
      (i32.const 10)
     )
     (i32.const 48)
    )
   )
   (br_if $do-continue|0
    (local.tee $1
     (i32.div_u
      (local.get $1)
      (i32.const 10)
     )
    )
   )
  )
 )
 (func $~lib/util/number/decimalCount64High (param $0 i64) (result i32)
  (select
   (select
    (i32.add
     (i32.add
      (i64.ge_u
       (local.get $0)
       (i64.const 100000000000)
      )
      (i32.const 10)
     )
     (i64.ge_u
      (local.get $0)
      (i64.const 10000000000)
     )
    )
    (i32.add
     (i32.add
      (i64.ge_u
       (local.get $0)
       (i64.const 100000000000000)
      )
      (i32.const 13)
     )
     (i64.ge_u
      (local.get $0)
      (i64.const 10000000000000)
     )
    )
    (i64.lt_u
     (local.get $0)
     (i64.const 1000000000000)
    )
   )
   (select
    (i32.add
     (i64.ge_u
      (local.get $0)
      (i64.const 10000000000000000)
     )
     (i32.const 16)
    )
    (i32.add
     (i32.add
      (i64.ge_u
       (local.get $0)
       (i64.const -8446744073709551616)
      )
      (i32.const 18)
     )
     (i64.ge_u
      (local.get $0)
      (i64.const 1000000000000000000)
     )
    )
    (i64.lt_u
     (local.get $0)
     (i64.const 100000000000000000)
    )
   )
   (i64.lt_u
    (local.get $0)
    (i64.const 1000000000000000)
   )
  )
 )
 (func $~lib/util/number/utoa_dec_simple<u64> (param $0 i32) (param $1 i64) (param $2 i32)
  (loop $do-continue|0
   (i32.store16
    (i32.add
     (local.get $0)
     (i32.shl
      (local.tee $2
       (i32.sub
        (local.get $2)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.add
     (i32.wrap_i64
      (i64.rem_u
       (local.get $1)
       (i64.const 10)
      )
     )
     (i32.const 48)
    )
   )
   (br_if $do-continue|0
    (i64.ne
     (local.tee $1
      (i64.div_u
       (local.get $1)
       (i64.const 10)
      )
     )
     (i64.const 0)
    )
   )
  )
 )
 (func $~lib/number/U64#toString (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $__inlined_func$~lib/util/number/utoa64
   (if
    (i64.eqz
     (local.get $0)
    )
    (block
     (local.set $1
      (i32.const 3504)
     )
     (br $__inlined_func$~lib/util/number/utoa64)
    )
   )
   (if
    (i64.le_u
     (local.get $0)
     (i64.const 4294967295)
    )
    (call $~lib/util/number/utoa_dec_simple<u32>
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $3
         (call $~lib/util/number/decimalCount32
          (local.tee $2
           (i32.wrap_i64
            (local.get $0)
           )
          )
         )
        )
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (local.get $2)
     (local.get $3)
    )
    (call $~lib/util/number/utoa_dec_simple<u64>
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $2
         (call $~lib/util/number/decimalCount64High
          (local.get $0)
         )
        )
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (local.get $0)
     (local.get $2)
    )
   )
  )
  (local.get $1)
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $__inlined_func$~lib/string/String#concat
   (if
    (i32.eqz
     (local.tee $2
      (i32.add
       (local.tee $3
        (i32.shl
         (call $~lib/string/String#get:length
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (local.tee $4
        (i32.shl
         (call $~lib/string/String#get:length
          (local.get $1)
         )
         (i32.const 1)
        )
       )
      )
     )
    )
    (block
     (local.set $2
      (i32.const 2288)
     )
     (br $__inlined_func$~lib/string/String#concat)
    )
   )
   (call $~lib/memory/memory.copy
    (local.tee $2
     (call $~lib/rt/stub/__new
      (local.get $2)
      (i32.const 1)
     )
    )
    (local.get $0)
    (local.get $3)
   )
   (call $~lib/memory/memory.copy
    (i32.add
     (local.get $2)
     (local.get $3)
    )
    (local.get $1)
    (local.get $4)
   )
  )
  (local.get $2)
 )
 (func $~lib/typedarray/Uint8Array#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $1
       (call $~lib/rt/stub/__new
        (i32.const 12)
        (i32.const 47)
       )
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 2)
      )
     )
    )
    (local.get $1)
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $2
    (call $~lib/rt/stub/__new
     (local.get $0)
     (i32.const 0)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (local.tee $3
     (i32.add
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (unreachable)
  )
  (local.set $1
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.shl
      (local.get $1)
      (i32.const 1)
     )
     (i32.const 1)
    )
   )
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $3)
    )
    (block $while-break|0
     (local.set $2
      (i32.load8_u
       (local.get $0)
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (if
      (i32.and
       (local.get $2)
       (i32.const 128)
      )
      (block
       (br_if $while-break|0
        (i32.eq
         (local.get $0)
         (local.get $3)
        )
       )
       (local.set $4
        (i32.and
         (i32.load8_u
          (local.get $0)
         )
         (i32.const 63)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (if
        (i32.eq
         (i32.and
          (local.get $2)
          (i32.const 224)
         )
         (i32.const 192)
        )
        (i32.store16
         (local.get $1)
         (i32.or
          (local.get $4)
          (i32.shl
           (i32.and
            (local.get $2)
            (i32.const 31)
           )
           (i32.const 6)
          )
         )
        )
        (block
         (br_if $while-break|0
          (i32.eq
           (local.get $0)
           (local.get $3)
          )
         )
         (local.set $6
          (i32.and
           (i32.load8_u
            (local.get $0)
           )
           (i32.const 63)
          )
         )
         (local.set $0
          (i32.add
           (local.get $0)
           (i32.const 1)
          )
         )
         (if
          (i32.eq
           (i32.and
            (local.get $2)
            (i32.const 240)
           )
           (i32.const 224)
          )
          (local.set $2
           (i32.or
            (local.get $6)
            (i32.or
             (i32.shl
              (i32.and
               (local.get $2)
               (i32.const 15)
              )
              (i32.const 12)
             )
             (i32.shl
              (local.get $4)
              (i32.const 6)
             )
            )
           )
          )
          (block
           (br_if $while-break|0
            (i32.eq
             (local.get $0)
             (local.get $3)
            )
           )
           (local.set $2
            (i32.or
             (i32.and
              (i32.load8_u
               (local.get $0)
              )
              (i32.const 63)
             )
             (i32.or
              (i32.or
               (i32.shl
                (i32.and
                 (local.get $2)
                 (i32.const 7)
                )
                (i32.const 18)
               )
               (i32.shl
                (local.get $4)
                (i32.const 12)
               )
              )
              (i32.shl
               (local.get $6)
               (i32.const 6)
              )
             )
            )
           )
           (local.set $0
            (i32.add
             (local.get $0)
             (i32.const 1)
            )
           )
          )
         )
         (if
          (i32.lt_u
           (local.get $2)
           (i32.const 65536)
          )
          (i32.store16
           (local.get $1)
           (local.get $2)
          )
          (block
           (i32.store
            (local.get $1)
            (i32.or
             (i32.or
              (i32.shr_u
               (local.tee $2
                (i32.sub
                 (local.get $2)
                 (i32.const 65536)
                )
               )
               (i32.const 10)
              )
              (i32.const 55296)
             )
             (i32.shl
              (i32.or
               (i32.and
                (local.get $2)
                (i32.const 1023)
               )
               (i32.const 56320)
              )
              (i32.const 16)
             )
            )
           )
           (local.set $1
            (i32.add
             (local.get $1)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
      )
      (i32.store16
       (local.get $1)
       (local.get $2)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (call $~lib/rt/stub/__renew
   (local.get $5)
   (i32.sub
    (local.get $1)
    (local.get $5)
   )
  )
 )
 (func $~lib/string/String.UTF8.decode (param $0 i32) (result i32)
  (call $~lib/string/String.UTF8.decodeUnsafe
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/asset/Symbol#getSymbolString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local.set $2
   (call $~lib/typedarray/Uint8Array#constructor
    (i32.const 7)
   )
  )
  (local.set $3
   (i64.load
    (local.get $0)
   )
  )
  (loop $for-loop|0
   (if
    (i32.eqz
     (i64.eqz
      (local.tee $3
       (i64.shr_u
        (local.get $3)
        (i64.const 8)
       )
      )
     )
    )
    (block
     (local.set $0
      (i32.wrap_i64
       (i64.and
        (local.get $3)
        (i64.const 255)
       )
      )
     )
     (if
      (i32.ge_u
       (local.get $1)
       (i32.load offset=8
        (local.get $2)
       )
      )
      (unreachable)
     )
     (i32.store8
      (i32.add
       (local.get $1)
       (i32.load offset=4
        (local.get $2)
       )
      )
      (local.get $0)
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.set $4
   (select
    (i32.const 0)
    (local.tee $0
     (i32.load offset=8
      (local.get $2)
     )
    )
    (i32.gt_s
     (local.get $0)
     (i32.const 0)
    )
   )
  )
  (call $~lib/memory/memory.copy
   (i32.load offset=4
    (local.tee $1
     (call $~lib/typedarray/Uint8Array#constructor
      (local.tee $0
       (select
        (local.tee $0
         (i32.sub
          (if (result i32)
           (i32.lt_s
            (local.get $1)
            (i32.const 0)
           )
           (select
            (local.tee $0
             (i32.add
              (local.get $0)
              (local.get $1)
             )
            )
            (i32.const 0)
            (i32.gt_s
             (local.get $0)
             (i32.const 0)
            )
           )
           (select
            (local.get $1)
            (local.get $0)
            (i32.gt_s
             (local.get $0)
             (local.get $1)
            )
           )
          )
          (local.get $4)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $0)
         (i32.const 0)
        )
       )
      )
     )
    )
   )
   (i32.add
    (local.get $4)
    (i32.load offset=4
     (local.get $2)
    )
   )
   (local.get $0)
  )
  (call $~lib/string/String.UTF8.decode
   (i32.load
    (local.get $1)
   )
  )
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local.set $1
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
  )
  (loop $while-continue|0
   (local.set $3
    (i32.sub
     (local.tee $0
      (local.get $3)
     )
     (i32.const 1)
    )
   )
   (if
    (local.get $0)
    (block
     (if
      (i32.ne
       (local.tee $0
        (i32.load16_u
         (local.get $1)
        )
       )
       (local.tee $4
        (i32.load16_u
         (local.get $2)
        )
       )
      )
      (return
       (i32.sub
        (local.get $0)
        (local.get $4)
       )
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 2)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (i32.const 0)
 )
 (func $~lib/array/Array<~lib/string/String>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/array/ensureCapacity
   (local.get $0)
   (local.tee $3
    (i32.add
     (local.tee $2
      (i32.load offset=12
       (local.get $0)
      )
     )
     (i32.const 1)
    )
   )
   (i32.const 2)
  )
  (i32.store
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (i32.shl
     (local.get $2)
     (i32.const 2)
    )
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $3)
  )
 )
 (func $~lib/string/String#split (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local.set $6
   (call $~lib/string/String#get:length
    (local.get $0)
   )
  )
  (block $folding-inner0
   (if
    (local.tee $8
     (call $~lib/string/String#get:length
      (i32.const 3632)
     )
    )
    (if
     (i32.eqz
      (local.get $6)
     )
     (block
      (i32.store
       (i32.load offset=4
        (local.tee $0
         (call $~lib/rt/__newArray
          (i32.const 1)
          (i32.const 2)
          (i32.const 46)
          (i32.const 0)
         )
        )
       )
       (i32.const 2288)
      )
      (return
       (local.get $0)
      )
     )
    )
    (block
     (br_if $folding-inner0
      (i32.eqz
       (local.get $6)
      )
     )
     (local.set $3
      (i32.load offset=4
       (local.tee $7
        (call $~lib/rt/__newArray
         (local.tee $2
          (select
           (local.get $6)
           (i32.const 2147483647)
           (i32.ne
            (local.get $6)
            (i32.const 2147483647)
           )
          )
         )
         (i32.const 2)
         (i32.const 46)
         (i32.const 0)
        )
       )
      )
     )
     (loop $for-loop|0
      (if
       (i32.gt_s
        (local.get $2)
        (local.get $4)
       )
       (block
        (i32.store16
         (local.tee $1
          (call $~lib/rt/stub/__new
           (i32.const 2)
           (i32.const 1)
          )
         )
         (i32.load16_u
          (i32.add
           (local.get $0)
           (i32.shl
            (local.get $4)
            (i32.const 1)
           )
          )
         )
        )
        (i32.store
         (i32.add
          (local.get $3)
          (i32.shl
           (local.get $4)
           (i32.const 2)
          )
         )
         (local.get $1)
        )
        (local.set $4
         (i32.add
          (local.get $4)
          (i32.const 1)
         )
        )
        (br $for-loop|0)
       )
      )
     )
     (return
      (local.get $7)
     )
    )
   )
   (local.set $5
    (call $~lib/rt/__newArray
     (i32.const 0)
     (i32.const 2)
     (i32.const 46)
     (i32.const 0)
    )
   )
   (loop $while-continue|1
    (block $__inlined_func$~lib/string/String#indexOf
     (if
      (i32.eqz
       (local.tee $4
        (call $~lib/string/String#get:length
         (i32.const 3632)
        )
       )
      )
      (block
       (local.set $1
        (i32.const 0)
       )
       (br $__inlined_func$~lib/string/String#indexOf)
      )
     )
     (if
      (i32.eqz
       (local.tee $2
        (call $~lib/string/String#get:length
         (local.get $0)
        )
       )
      )
      (block
       (local.set $1
        (i32.const -1)
       )
       (br $__inlined_func$~lib/string/String#indexOf)
      )
     )
     (local.set $1
      (select
       (local.tee $1
        (select
         (local.get $3)
         (i32.const 0)
         (i32.gt_s
          (local.get $3)
          (i32.const 0)
         )
        )
       )
       (local.get $2)
       (i32.lt_s
        (local.get $1)
        (local.get $2)
       )
      )
     )
     (local.set $2
      (i32.sub
       (local.get $2)
       (local.get $4)
      )
     )
     (loop $for-loop|00
      (if
       (i32.le_s
        (local.get $1)
        (local.get $2)
       )
       (block
        (br_if $__inlined_func$~lib/string/String#indexOf
         (i32.eqz
          (call $~lib/util/string/compareImpl
           (local.get $0)
           (local.get $1)
           (i32.const 3632)
           (local.get $4)
          )
         )
        )
        (local.set $1
         (i32.add
          (local.get $1)
          (i32.const 1)
         )
        )
        (br $for-loop|00)
       )
      )
     )
     (local.set $1
      (i32.const -1)
     )
    )
    (if
     (i32.xor
      (local.get $1)
      (i32.const -1)
     )
     (block
      (if
       (i32.gt_s
        (local.tee $2
         (i32.sub
          (local.get $1)
          (local.get $3)
         )
        )
        (i32.const 0)
       )
       (block
        (call $~lib/memory/memory.copy
         (local.tee $2
          (call $~lib/rt/stub/__new
           (local.tee $4
            (i32.shl
             (local.get $2)
             (i32.const 1)
            )
           )
           (i32.const 1)
          )
         )
         (i32.add
          (local.get $0)
          (i32.shl
           (local.get $3)
           (i32.const 1)
          )
         )
         (local.get $4)
        )
        (call $~lib/array/Array<~lib/string/String>#push
         (local.get $5)
         (local.get $2)
        )
       )
       (call $~lib/array/Array<~lib/string/String>#push
        (local.get $5)
        (i32.const 2288)
       )
      )
      (if
       (i32.eq
        (local.tee $7
         (i32.add
          (local.get $7)
          (i32.const 1)
         )
        )
        (i32.const 2147483647)
       )
       (return
        (local.get $5)
       )
      )
      (local.set $3
       (i32.add
        (local.get $1)
        (local.get $8)
       )
      )
      (br $while-continue|1)
     )
    )
   )
   (if
    (i32.eqz
     (local.get $3)
    )
    (block
     (call $~lib/array/Array<~lib/string/String>#push
      (local.get $5)
      (local.get $0)
     )
     (return
      (local.get $5)
     )
    )
   )
   (if
    (i32.gt_s
     (local.tee $1
      (i32.sub
       (local.get $6)
       (local.get $3)
      )
     )
     (i32.const 0)
    )
    (block
     (call $~lib/memory/memory.copy
      (local.tee $1
       (call $~lib/rt/stub/__new
        (local.tee $7
         (i32.shl
          (local.get $1)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
      (i32.add
       (local.get $0)
       (i32.shl
        (local.get $3)
        (i32.const 1)
       )
      )
      (local.get $7)
     )
     (call $~lib/array/Array<~lib/string/String>#push
      (local.get $5)
      (local.get $1)
     )
    )
    (call $~lib/array/Array<~lib/string/String>#push
     (local.get $5)
     (i32.const 2288)
    )
   )
   (return
    (local.get $5)
   )
  )
  (call $~lib/rt/__newArray
   (i32.const 0)
   (i32.const 2)
   (i32.const 46)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/asset/Symbol#precision (param $0 i32) (result i32)
  (i32.wrap_i64
   (i64.and
    (i64.load
     (local.get $0)
    )
    (i64.const 255)
   )
  )
 )
 (func $assembly/orderbook/tables/stat.table/TokenStatTable#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $3of3
   (block $2of3
    (block $1of3
     (block $0of3
      (block $outOfRange
       (br_table $0of3 $1of3 $2of3 $3of3 $outOfRange
        (global.get $~argumentsLength)
       )
      )
      (unreachable)
     )
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $3
      (call $~lib/as-chain/asset/Asset#constructor@varargs)
     )
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (local.set $2
     (call $~lib/as-chain/asset/Asset#constructor@varargs)
    )
   )
   (local.set $0
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 48)
    )
   )
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $assembly/orderbook/tables/stat.table/TokenStatTable.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const -4157508551318700032)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/stat.table/TokenStatTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 52)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $assembly/orderbook/tables/stat.table/TokenStatTable#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 2)
    )
   )
   (local.get $2)
  )
 )
 (func $~lib/array/Array<u8>#__get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (i32.load8_u
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
  )
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String> (result i32)
   (drop
    (br_if $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>
     (i32.const 2288)
     (i32.lt_s
      (local.tee $3
       (i32.sub
        (i32.shr_u
         (i32.load offset=16
          (i32.sub
           (local.tee $1
            (local.get $0)
           )
           (i32.const 20)
          )
         )
         (i32.const 2)
        )
        (i32.const 1)
       )
      )
      (i32.const 0)
     )
    )
   )
   (if
    (i32.eqz
     (local.get $3)
    )
    (br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>
     (if (result i32)
      (local.tee $0
       (i32.load
        (local.get $1)
       )
      )
      (local.get $0)
      (i32.const 2288)
     )
    )
   )
   (local.set $0
    (i32.const 2288)
   )
   (local.set $4
    (call $~lib/string/String#get:length
     (i32.const 2288)
    )
   )
   (loop $for-loop|0
    (if
     (i32.lt_s
      (local.get $2)
      (local.get $3)
     )
     (block
      (if
       (local.tee $5
        (i32.load
         (i32.add
          (local.get $1)
          (i32.shl
           (local.get $2)
           (i32.const 2)
          )
         )
        )
       )
       (local.set $0
        (call $~lib/string/String.__concat
         (local.get $0)
         (local.get $5)
        )
       )
      )
      (if
       (local.get $4)
       (local.set $0
        (call $~lib/string/String.__concat
         (local.get $0)
         (i32.const 2288)
        )
       )
      )
      (local.set $2
       (i32.add
        (local.get $2)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
   (if (result i32)
    (local.tee $1
     (i32.load
      (i32.add
       (local.get $1)
       (i32.shl
        (local.get $3)
        (i32.const 2)
       )
      )
     )
    )
    (call $~lib/string/String.__concat
     (local.get $0)
     (local.get $1)
    )
    (local.get $0)
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#verifyTokenExist (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local.set $5
   (call $~lib/array/Array<u8>#constructor
    (i32.const 7)
   )
  )
  (local.set $3
   (i64.load
    (local.get $0)
   )
  )
  (loop $for-loop|0
   (if
    (i32.eqz
     (i64.eqz
      (local.tee $3
       (i64.shr_u
        (local.get $3)
        (i64.const 8)
       )
      )
     )
    )
    (block
     (call $~lib/array/Array<u8>#__set
      (local.get $5)
      (local.get $2)
      (i32.wrap_i64
       (i64.and
        (local.get $3)
        (i64.const 255)
       )
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.set $5
   (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
    (call $~lib/string/String#split
     (call $~lib/string/String.__concat
      (call $~lib/string/String.__concat
       (call $~lib/number/U64#toString
        (i64.and
         (i64.load
          (local.get $0)
         )
         (i64.const 255)
        )
       )
       (i32.const 3632)
      )
      (call $~lib/as-chain/asset/Symbol#getSymbolString
       (local.get $0)
      )
     )
    )
    (i32.const 1)
   )
  )
  (local.set $6
   (call $~lib/as-chain/asset/Symbol#precision
    (local.get $0)
   )
  )
  (local.set $0
   (i32.const 0)
  )
  (local.set $3
   (i64.const 0)
  )
  (loop $for-loop|00
   (if
    (select
     (i32.lt_s
      (local.get $0)
      (i32.const 7)
     )
     (i32.const 0)
     (i32.gt_s
      (call $~lib/string/String#get:length
       (local.get $5)
      )
      (local.get $0)
     )
    )
    (block
     (call $~lib/as-chain/system/check
      (select
       (i32.le_s
        (local.tee $2
         (call $~lib/string/String#charCodeAt
          (local.get $5)
          (local.get $0)
         )
        )
        (i32.const 90)
       )
       (i32.const 0)
       (i32.ge_s
        (local.get $2)
        (i32.const 65)
       )
      )
      (i32.const 3664)
     )
     (local.set $3
      (i64.or
       (local.get $3)
       (i64.shl
        (i64.extend_i32_s
         (local.get $2)
        )
        (i64.shl
         (i64.extend_i32_s
          (local.get $0)
         )
         (i64.const 3)
        )
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (br $for-loop|00)
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $4)
   (local.get $3)
  )
  (local.set $2
   (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/stat.table/TokenStatTable>#find (result i32)
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.tee $2
      (call $~lib/rt/stub/__new
       (i32.const 16)
       (i32.const 49)
      )
     )
     (i32.const 0)
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:scope
     (local.get $2)
     (i64.const -1)
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (drop
     (call $assembly/orderbook/tables/stat.table/TokenStatTable#constructor@varargs
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.set $7
     (call $assembly/orderbook/tables/stat.table/TokenStatTable.get:tableName)
    )
    (drop
     (i64.load
      (call $assembly/orderbook/tables/stat.table/TokenStatTable.get:tableName)
     )
    )
    (local.set $8
     (call $~lib/rt/__newArray
      (i32.const 0)
      (i32.const 2)
      (i32.const 18)
      (i32.const 3744)
     )
    )
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.tee $0
      (call $~lib/rt/stub/__new
       (i32.const 16)
       (i32.const 50)
      )
     )
     (i32.const 0)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $0)
     (i32.const 0)
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:scope
     (local.get $0)
     (i64.const -1)
    )
    (local.set $9
     (i64.load
      (local.get $1)
     )
    )
    (local.set $10
     (i64.load
      (local.get $4)
     )
    )
    (local.set $11
     (i64.load
      (local.get $7)
     )
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $4
      (call $~lib/rt/stub/__new
       (i32.const 24)
       (i32.const 51)
      )
     )
     (local.get $9)
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:scope
     (local.get $4)
     (local.get $10)
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:table
     (local.get $4)
     (local.get $11)
    )
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.get $0)
     (local.get $4)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $0)
     (local.get $8)
    )
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.get $2)
     (local.get $0)
    )
    (if
     (i32.ge_s
      (local.tee $2
       (call $~lib/as-chain/env/db_find_i64
        (i64.load
         (local.tee $0
          (i32.load
           (local.tee $4
            (i32.load
             (local.get $2)
            )
           )
          )
         )
        )
        (i64.load offset=8
         (local.get $0)
        )
        (i64.load offset=16
         (local.get $0)
        )
        (local.get $3)
       )
      )
      (i32.const 0)
     )
     (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/stat.table/TokenStatTable>#find
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/stat.table/TokenStatTable>#constructor
       (local.get $0)
       (local.get $2)
       (local.get $3)
       (i32.const 1)
      )
     )
    )
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/stat.table/TokenStatTable>#constructor
     (local.get $0)
     (local.get $2)
     (i64.const 0)
     (i32.const 0)
    )
   )
  )
  (local.set $0
   (i32.const 0)
  )
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
    (local.get $2)
   )
   (block
    (drop
     (i32.load
      (local.get $4)
     )
    )
    (if
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
      (local.get $2)
     )
     (if
      (local.tee $2
       (call $~lib/as-chain/env/db_get_i64
        (local.tee $4
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
        (i32.const 0)
       )
      )
      (block
       (drop
        (call $~lib/as-chain/env/db_get_i64
         (local.get $4)
         (i32.load offset=4
          (local.tee $4
           (call $~lib/array/Array<u8>#constructor
            (local.get $2)
           )
          )
         )
         (local.get $2)
        )
       )
       (global.set $~argumentsLength
        (i32.const 0)
       )
       (drop
        (call $assembly/orderbook/tables/stat.table/TokenStatTable#unpack
         (local.tee $0
          (call $assembly/orderbook/tables/stat.table/TokenStatTable#constructor@varargs
           (global.get $~lib/as-chain/name/EMPTY_NAME)
          )
         )
         (local.get $4)
        )
       )
      )
     )
    )
   )
  )
  (local.set $2
   (local.get $0)
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 3856)
   (i32.const 1)
   (local.get $5)
  )
  (local.set $3
   (i64.load
    (local.get $1)
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (local.set $0
   (call $~lib/array/Array<u8>#constructor
    (i32.const 13)
   )
  )
  (loop $for-loop|01
   (if
    (i32.le_s
     (local.get $1)
     (i32.const 12)
    )
    (block
     (call $~lib/array/Array<u8>#__set
      (local.get $0)
      (i32.sub
       (i32.const 12)
       (local.get $1)
      )
      (if (result i32)
       (local.get $1)
       (call $~lib/array/Array<u8>#__get
        (i32.const 1152)
        (i32.wrap_i64
         (i64.and
          (local.get $3)
          (i64.const 31)
         )
        )
       )
       (call $~lib/array/Array<u8>#__get
        (i32.const 1152)
        (i32.wrap_i64
         (i64.and
          (local.get $3)
          (i64.const 15)
         )
        )
       )
      )
     )
     (local.set $3
      (select
       (i64.shr_u
        (local.get $3)
        (i64.const 5)
       )
       (i64.shr_u
        (local.get $3)
        (i64.const 4)
       )
       (local.get $1)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|01)
    )
   )
  )
  (local.set $1
   (i32.sub
    (i32.load offset=12
     (local.get $0)
    )
    (i32.const 1)
   )
  )
  (loop $for-loop|1
   (if
    (i32.ge_s
     (local.get $1)
     (i32.const 0)
    )
    (if
     (i32.eq
      (call $~lib/array/Array<u8>#__get
       (local.get $0)
       (local.get $1)
      )
      (i32.const 46)
     )
     (block
      (local.set $1
       (i32.sub
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|1)
     )
    )
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 3856)
   (i32.const 3)
   (call $~lib/string/String.UTF8.decode
    (i32.load
     (call $~lib/array/Array<u8>#slice
      (local.get $0)
      (i32.const 0)
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (local.get $2)
    (i32.const 0)
   )
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 3856)
   )
  )
  (if
   (i32.eqz
    (local.get $2)
   )
   (unreachable)
  )
  (local.set $0
   (i32.eq
    (i32.and
     (call $~lib/as-chain/asset/Symbol#precision
      (i32.load offset=8
       (i32.load
        (local.get $2)
       )
      )
     )
     (i32.const 255)
    )
    (i32.and
     (local.get $6)
     (i32.const 255)
    )
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 3968)
   (i32.const 1)
   (local.get $5)
  )
  (call $~lib/as-chain/system/check
   (local.get $0)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 3968)
   )
  )
 )
 (func $~lib/as-chain/asset/Symbol#code (param $0 i32) (result i64)
  (i64.shr_u
   (i64.load
    (local.get $0)
   )
   (i64.const 8)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/pairs.table/PairsTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 54)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/pairs.table/PairsTable>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_lowerbound_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
    (i64.const 0)
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackLength (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (loop $while-continue|0
   (local.set $1
    (i32.or
     (local.get $1)
     (i32.shl
      (i32.and
       (local.tee $3
        (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
         (local.get $0)
        )
       )
       (i32.const 127)
      )
      (local.get $2)
     )
    )
   )
   (local.set $2
    (i32.add
     (local.get $2)
     (i32.const 7)
    )
   )
   (local.set $4
    (i32.add
     (local.get $4)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (i32.and
     (local.get $3)
     (i32.const 128)
    )
   )
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#unpackString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#unpackLength
    (local.get $0)
   )
  )
  (local.set $2
   (call $~lib/array/Array<u8>#slice
    (i32.load
     (local.get $0)
    )
    (i32.load offset=4
     (local.get $0)
    )
    (i32.add
     (local.get $1)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/string/String.UTF8.decode
   (i32.load
    (local.get $2)
   )
  )
 )
 (func $assembly/orderbook/tables/pairs.table/PairsTable#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Symbol#constructor)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Symbol#constructor)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:quote_contract
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:max_order_size
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:tick_size
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:maker_fee_bp
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:taker_fee_bp
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:status
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:created_at
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/pairs.table/PairsTable>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/orderbook/tables/pairs.table/PairsTable#unpack
    (local.tee $0
     (call $assembly/orderbook/tables/pairs.table/PairsTable#constructor@varargs
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/pairs.table/PairsTable>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/pairs.table/PairsTable>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#first (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/pairs.table/PairsTable>#getValue
   (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#begin
    (i32.load
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/pairs.table/PairsTable>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/pairs.table/PairsTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/pairs.table/PairsTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/pairs.table/PairsTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#next (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#requireFind
    (i32.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 1872)
   )
  )
  (local.set $2
   (i32.load
    (i32.load
     (local.get $0)
    )
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/pairs.table/PairsTable>#getValue
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/pairs.table/PairsTable>#constructor
    (local.get $2)
    (call $~lib/as-chain/env/db_next_i64
     (i32.load offset=4
      (local.get $1)
     )
     (local.get $0)
    )
    (i64.load
     (local.get $0)
    )
    (i32.const 1)
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#isPairExists (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local.set $5
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#first
    (i32.load offset=12
     (local.get $0)
    )
   )
  )
  (loop $while-continue|0
   (if
    (local.get $5)
    (block
     (if
      (if (result i32)
       (if (result i32)
        (if (result i32)
         (i64.eq
          (call $~lib/as-chain/asset/Symbol#code
           (i32.load offset=8
            (local.get $5)
           )
          )
          (call $~lib/as-chain/asset/Symbol#code
           (local.get $1)
          )
         )
         (i64.eq
          (i64.load
           (i32.load offset=12
            (local.get $5)
           )
          )
          (i64.load
           (local.get $2)
          )
         )
         (i32.const 0)
        )
        (i64.eq
         (call $~lib/as-chain/asset/Symbol#code
          (i32.load offset=16
           (local.get $5)
          )
         )
         (call $~lib/as-chain/asset/Symbol#code
          (local.get $3)
         )
        )
        (i32.const 0)
       )
       (i64.eq
        (i64.load
         (i32.load offset=20
          (local.get $5)
         )
        )
        (i64.load
         (local.get $4)
        )
       )
       (i32.const 0)
      )
      (call $~lib/as-chain/system/check
       (i32.const 0)
       (i32.const 5584)
      )
     )
     (if
      (if (result i32)
       (if (result i32)
        (if (result i32)
         (i64.eq
          (call $~lib/as-chain/asset/Symbol#code
           (i32.load offset=8
            (local.get $5)
           )
          )
          (call $~lib/as-chain/asset/Symbol#code
           (local.get $3)
          )
         )
         (i64.eq
          (i64.load
           (i32.load offset=12
            (local.get $5)
           )
          )
          (i64.load
           (local.get $4)
          )
         )
         (i32.const 0)
        )
        (i64.eq
         (call $~lib/as-chain/asset/Symbol#code
          (i32.load offset=16
           (local.get $5)
          )
         )
         (call $~lib/as-chain/asset/Symbol#code
          (local.get $1)
         )
        )
        (i32.const 0)
       )
       (i64.eq
        (i64.load
         (i32.load offset=20
          (local.get $5)
         )
        )
        (i64.load
         (local.get $2)
        )
       )
       (i32.const 0)
      )
      (call $~lib/as-chain/system/check
       (i32.const 0)
       (i32.const 5648)
      )
     )
     (local.set $5
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#next
       (i32.load offset=12
        (local.get $0)
       )
       (local.get $5)
      )
     )
     (br $while-continue|0)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/pairs.table/PairsTable>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_end_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/pairs.table/PairsTable>#get (result i32)
     (local.set $0
      (i32.load
       (local.get $0)
      )
     )
     (drop
      (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/pairs.table/PairsTable>#get
       (i32.const 0)
       (i32.eqz
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
         (local.get $1)
        )
       )
      )
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/pairs.table/PairsTable>#getEx
      (local.get $0)
      (i32.load offset=4
       (local.get $1)
      )
     )
    )
   )
   (return
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#constructor@varargs
   (global.get $~lib/as-chain/name/EMPTY_NAME)
   (global.get $~lib/as-chain/name/EMPTY_NAME)
  )
 )
 (func $~lib/as-chain/time/Microseconds#constructor (param $0 i64) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 56)
    )
   )
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/system/currentTimeSec (result i32)
  (local $0 i32)
  (local $1 i64)
  (local.set $1
   (call $~lib/as-chain/env/current_time)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 55)
    )
   )
   (call $~lib/as-chain/time/Microseconds#constructor
    (i64.const 0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/time/Microseconds#constructor
    (local.get $1)
   )
  )
  (i32.wrap_i64
   (i64.div_s
    (i64.load
     (i32.load
      (local.get $0)
     )
    )
    (i64.const 1000000)
   )
  )
 )
 (func $~lib/as-chain/varint/calcPackedVarUint32Length (param $0 i32) (result i32)
  (local $1 i32)
  (loop $while-continue|0
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (local.tee $0
     (i32.shr_u
      (local.get $0)
      (i32.const 7)
     )
    )
   )
  )
  (local.get $1)
 )
 (func $~lib/as-chain/utils/Utils.calcPackedStringLength (param $0 i32) (result i32)
  (i32.add
   (call $~lib/as-chain/varint/calcPackedVarUint32Length
    (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     (local.tee $0
      (call $~lib/string/String.UTF8.encode
       (local.get $0)
       (i32.const 0)
      )
     )
    )
   )
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packLength (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (loop $while-continue|0
   (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
    (local.get $0)
    (select
     (i32.or
      (local.tee $2
       (i32.and
        (local.get $1)
        (i32.const 127)
       )
      )
      (i32.const 128)
     )
     (local.get $2)
     (local.tee $1
      (i32.shr_u
       (local.get $1)
       (i32.const 7)
      )
     )
    )
   )
   (local.set $3
    (i32.add
     (local.get $3)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packString (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.tee $1
     (call $~lib/string/String.UTF8.encode
      (local.get $1)
      (i32.const 0)
     )
    )
   )
  )
  (local.set $2
   (i32.add
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $1)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (local.get $2)
    (local.get $1)
    (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     (local.get $1)
    )
   )
  )
  (drop
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $1)
   )
  )
 )
 (func $assembly/orderbook/tables/pairs.table/PairsTable#pack (param $0 i32) (result i32)
  (local $1 i32)
  (drop
   (i32.load offset=8
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=12
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=16
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=20
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=24
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=28
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (call $~lib/as-chain/utils/Utils.calcPackedStringLength
       (i32.load offset=40
        (local.get $0)
       )
      )
      (i32.const 100)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=20
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=28
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $1)
   (i32.load16_u offset=36
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $1)
   (i32.load16_u offset=38
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=48
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/array/Array<u64>#__set (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (block
    (if
     (i32.lt_s
      (local.get $1)
      (i32.const 0)
     )
     (unreachable)
    )
    (call $~lib/array/ensureCapacity
     (local.get $0)
     (local.tee $3
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (i32.const 3)
    )
    (call $~lib/rt/common/OBJECT#set:rtId
     (local.get $0)
     (local.get $3)
    )
   )
  )
  (i64.store
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (i32.shl
     (local.get $1)
     (i32.const 3)
    )
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/idxdb/newSecondaryValue_u64 (param $0 i64) (result i32)
  (local $1 i32)
  (call $~lib/array/Array<u64>#__set
   (local.tee $1
    (call $~lib/array/Array<u64>#constructor
     (i32.const 1)
    )
   )
   (i32.const 0)
   (local.get $0)
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (i32.const 0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/pairs.table/PairsTable#getSecondaryValue (param $0 i32) (param $1 i32) (result i32)
  (block $case2|0
   (block $case1|0
    (if
     (local.get $1)
     (block
      (br_if $case1|0
       (i32.eq
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $case2|0)
     )
    )
    (return
     (call $~lib/as-chain/idxdb/newSecondaryValue_u64
      (call $~lib/as-chain/asset/Symbol#code
       (i32.load offset=8
        (local.get $0)
       )
      )
     )
    )
   )
   (return
    (call $~lib/as-chain/idxdb/newSecondaryValue_u64
     (call $~lib/as-chain/asset/Symbol#code
      (i32.load offset=16
       (local.get $0)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/assert
   (i32.const 0)
   (i32.const 5760)
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (i32.const 0)
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#find
      (i32.load
       (local.get $0)
      )
      (local.tee $6
       (i64.load
        (local.get $1)
       )
      )
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $4
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $2)
   )
  )
  (local.set $7
   (i32.load
    (local.tee $5
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (local.set $10
   (i32.load offset=12
    (local.tee $9
     (call $assembly/orderbook/tables/pairs.table/PairsTable#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/pairs.table/PairsTable>#constructor
    (local.get $7)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $7)
     )
     (i64.load offset=16
      (local.get $7)
     )
     (local.get $8)
     (local.get $4)
     (i32.load offset=4
      (local.get $9)
     )
     (local.get $10)
    )
    (local.get $4)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $5)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $5)
       )
       (local.get $3)
      )
      (i64.load
       (local.get $1)
      )
      (call $assembly/orderbook/tables/pairs.table/PairsTable#getSecondaryValue
       (local.get $1)
       (local.get $3)
      )
      (i64.load
       (local.get $2)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $4
     (i64.load
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $5)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $5)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#createPair (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (param $8 i32) (param $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i64)
  (local $15 i64)
  (call $~lib/as-chain/action/requireAuth
   (i32.load offset=8
    (local.tee $10
     (call $assembly/orderbook/orderbook.contract/orderbook#getConfig
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/action/isAccount
    (local.get $2)
   )
   (i32.const 3344)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/action/isAccount
    (local.get $4)
   )
   (i32.const 3424)
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#verifyTokenExist
   (local.get $1)
   (local.get $2)
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#verifyTokenExist
   (local.get $3)
   (local.get $4)
  )
  (call $~lib/as-chain/system/check
   (i64.ne
    (call $~lib/as-chain/asset/Symbol#code
     (local.get $1)
    )
    (call $~lib/as-chain/asset/Symbol#code
     (local.get $3)
    )
   )
   (i32.const 4000)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $5)
     )
    )
    (call $~lib/as-chain/asset/Symbol#code
     (local.get $1)
    )
   )
   (i32.const 4096)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $6)
     )
    )
    (call $~lib/as-chain/asset/Symbol#code
     (local.get $1)
    )
   )
   (i32.const 4192)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $7)
     )
    )
    (call $~lib/as-chain/asset/Symbol#code
     (local.get $3)
    )
   )
   (i32.const 4288)
  )
  (call $~lib/as-chain/system/check
   (i32.eq
    (i32.and
     (call $~lib/as-chain/asset/Symbol#precision
      (i32.load offset=8
       (local.get $5)
      )
     )
     (i32.const 255)
    )
    (i32.and
     (call $~lib/as-chain/asset/Symbol#precision
      (local.get $1)
     )
     (i32.const 255)
    )
   )
   (i32.const 4384)
  )
  (call $~lib/as-chain/system/check
   (i32.eq
    (i32.and
     (call $~lib/as-chain/asset/Symbol#precision
      (i32.load offset=8
       (local.get $6)
      )
     )
     (i32.const 255)
    )
    (i32.and
     (call $~lib/as-chain/asset/Symbol#precision
      (local.get $1)
     )
     (i32.const 255)
    )
   )
   (i32.const 4480)
  )
  (call $~lib/as-chain/system/check
   (i32.eq
    (i32.and
     (call $~lib/as-chain/asset/Symbol#precision
      (i32.load offset=8
       (local.get $7)
      )
     )
     (i32.const 255)
    )
    (i32.and
     (call $~lib/as-chain/asset/Symbol#precision
      (local.get $3)
     )
     (i32.const 255)
    )
   )
   (i32.const 4576)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $5)
    )
    (i64.const 0)
   )
   (i32.const 4656)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $6)
    )
    (i64.const 0)
   )
   (i32.const 4752)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $7)
    )
    (i64.const 0)
   )
   (i32.const 4848)
  )
  (call $~lib/as-chain/system/check
   (i64.lt_s
    (i64.load
     (local.get $6)
    )
    (i64.const 10000000000000)
   )
   (i32.const 4928)
  )
  (call $~lib/as-chain/system/check
   (i64.lt_s
    (i64.load
     (local.get $7)
    )
    (i64.const 1000000000)
   )
   (i32.const 5008)
  )
  (call $~lib/as-chain/system/check
   (i32.le_u
    (local.tee $11
     (i32.and
      (local.get $8)
      (i32.const 65535)
     )
    )
    (i32.load16_u offset=32
     (local.get $0)
    )
   )
   (i32.const 5072)
  )
  (call $~lib/as-chain/system/check
   (i32.ge_u
    (i32.load16_u offset=32
     (local.get $0)
    )
    (i32.and
     (local.get $9)
     (i32.const 65535)
    )
   )
   (i32.const 5152)
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (i32.ge_u
     (local.get $11)
     (i32.load16_u offset=14
      (local.get $10)
     )
    )
    (i32.ge_u
     (i32.load16_u offset=16
      (local.get $10)
     )
     (i32.and
      (local.get $8)
      (i32.const 65535)
     )
    )
    (i32.const 0)
   )
   (i32.const 5232)
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (i32.le_u
     (i32.load16_u offset=18
      (local.get $10)
     )
     (i32.and
      (local.get $9)
      (i32.const 65535)
     )
    )
    (i32.ge_u
     (i32.load16_u offset=20
      (local.get $10)
     )
     (i32.and
      (local.get $9)
      (i32.const 65535)
     )
    )
    (i32.const 0)
   )
   (i32.const 5296)
  )
  (call $~lib/as-chain/system/check
   (i32.le_u
    (i32.and
     (local.get $8)
     (i32.const 65535)
    )
    (i32.and
     (local.get $9)
     (i32.const 65535)
    )
   )
   (i32.const 5360)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $6)
    )
    (i64.load
     (local.get $5)
    )
   )
   (i32.const 5456)
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#isPairExists
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
  (if
   (i64.eq
    (i64.load offset=8
     (local.tee $10
      (i32.load offset=12
       (local.get $0)
      )
     )
    )
    (i64.const -1)
   )
   (if
    (i32.eq
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#begin
       (i32.load
        (local.get $10)
       )
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#end
       (i32.load
        (local.get $10)
       )
      )
     )
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:scope
     (local.get $10)
     (i64.const 0)
    )
    (block
     (local.set $12
      (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#end
       (i32.load
        (local.get $10)
       )
      )
     )
     (local.set $13
      (i32.load
       (i32.load
        (local.get $10)
       )
      )
     )
     (local.set $11
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.set $11
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/pairs.table/PairsTable>#constructor
       (local.get $13)
       (call $~lib/as-chain/env/db_previous_i64
        (i32.load offset=4
         (local.get $12)
        )
        (local.get $11)
       )
       (i64.load
        (local.get $11)
       )
       (i32.const 1)
      )
     )
     (local.set $15
      (local.tee $14
       (i64.load
        (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#get
         (i32.load
          (local.get $10)
         )
         (local.get $11)
        )
       )
      )
     )
     (if
      (i64.ge_u
       (local.get $14)
       (i64.const -2)
      )
      (call $~lib/as-chain/idxdb/IDXDB#set:scope
       (local.get $10)
       (i64.const -2)
      )
      (call $~lib/as-chain/idxdb/IDXDB#set:scope
       (local.get $10)
       (i64.add
        (local.get $15)
        (i64.const 1)
       )
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.lt_u
    (i64.load offset=8
     (local.get $10)
    )
    (i64.const -2)
   )
   (i32.const 2160)
  )
  (local.set $1
   (call $assembly/orderbook/tables/pairs.table/PairsTable#constructor
    (i64.load offset=8
     (local.get $10)
    )
    (local.get $1)
    (local.get $2)
    (local.get $3)
    (local.get $4)
    (local.get $5)
    (local.get $6)
    (local.get $7)
    (local.get $8)
    (local.get $9)
    (i32.const 5728)
    (i64.extend_i32_u
     (call $~lib/as-chain/system/currentTimeSec)
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#store
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#requireGet (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
    (local.tee $2
     (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#find
      (i32.load
       (local.get $0)
      )
      (local.get $1)
     )
    )
   )
   (i32.const 5808)
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#get
   (i32.load
    (local.get $0)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
    (local.get $1)
   )
   (i32.const 2736)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/pairs.table/PairsTable>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
       (local.get $1)
      )
      (i32.const 2800)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/pairs.table/PairsTable>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $4
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/pairs.table/PairsTable>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/idxdb/IDXDB#set:table
      (local.get $1)
      (i64.load
       (local.get $4)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 2944)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i32.load offset=12
    (local.tee $4
     (call $assembly/orderbook/tables/pairs.table/PairsTable#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $7)
   (i32.load offset=4
    (local.get $4)
   )
   (local.get $8)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $6)
      )
     )
     (local.set $4
      (call $assembly/orderbook/tables/pairs.table/PairsTable#getSecondaryValue
       (local.get $2)
       (local.get $5)
      )
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $4)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $4)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $assembly/orderbook/tables/pairs.table/PairsTable#getSecondaryValue
        (local.get $2)
        (local.get $5)
       )
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local.set $3
   (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#requireFind
    (i32.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 1424)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#update
   (i32.load
    (local.get $0)
   )
   (local.get $3)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#updatePair (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load offset=8
    (call $assembly/orderbook/orderbook.contract/orderbook#getConfig
     (local.get $0)
    )
   )
  )
  (local.set $5
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#requireGet
    (i32.load offset=12
     (local.get $0)
    )
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $2)
     )
    )
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $5)
     )
    )
   )
   (i32.const 5856)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $3)
     )
    )
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $5)
     )
    )
   )
   (i32.const 5952)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $4)
     )
    )
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=16
      (local.get $5)
     )
    )
   )
   (i32.const 6048)
  )
  (call $~lib/as-chain/system/check
   (i32.const 1)
   (i32.const 4384)
  )
  (call $~lib/as-chain/system/check
   (i32.const 1)
   (i32.const 4480)
  )
  (call $~lib/as-chain/system/check
   (i32.const 1)
   (i32.const 4576)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $2)
    )
    (i64.const 0)
   )
   (i32.const 4656)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $3)
    )
    (i64.const 0)
   )
   (i32.const 4752)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $4)
    )
    (i64.const 0)
   )
   (i32.const 4848)
  )
  (call $~lib/as-chain/system/check
   (i64.lt_s
    (i64.load
     (local.get $3)
    )
    (i64.const 10000000000000)
   )
   (i32.const 4928)
  )
  (call $~lib/as-chain/system/check
   (i64.lt_s
    (i64.load
     (local.get $4)
    )
    (i64.const 1000000000)
   )
   (i32.const 5008)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $3)
    )
    (i64.load
     (local.get $2)
    )
   )
   (i32.const 5456)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size
   (local.get $5)
   (local.get $2)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:max_order_size
   (local.get $5)
   (local.get $3)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:tick_size
   (local.get $5)
   (local.get $4)
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#update
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $5)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/pairs.table/PairsTable>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/env/db_remove_i64
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/idxdb/SecondaryIterator#isOk (param $0 i32) (result i32)
  (i32.ge_s
   (i32.load
    (local.get $0)
   )
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/orders.table/OrdersTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 58)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/orders.table/OrdersTable>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_lowerbound_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
    (i64.const 0)
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $assembly/orderbook/tables/orders.table/OrdersTable#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:quote_contract
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:max_order_size
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:tick_size
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:filled_amount
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:status
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:trigger_price
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:is_triggered
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:status
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:created_at
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:updated_at
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/orders.table/OrdersTable>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/orderbook/tables/orders.table/OrdersTable#unpack
    (local.tee $0
     (call $assembly/orderbook/tables/orders.table/OrdersTable#constructor@varargs
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/orders.table/OrdersTable>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/orders.table/OrdersTable>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#first (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/orders.table/OrdersTable>#getValue
   (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#begin
    (i32.load
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/orders.table/OrdersTable>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/orders.table/OrdersTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/orders.table/OrdersTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/orders.table/OrdersTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#next (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#requireFind
    (i32.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 1872)
   )
  )
  (local.set $2
   (i32.load
    (i32.load
     (local.get $0)
    )
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/orders.table/OrdersTable>#getValue
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/orders.table/OrdersTable>#constructor
    (local.get $2)
    (call $~lib/as-chain/env/db_next_i64
     (i32.load offset=4
      (local.get $1)
     )
     (local.get $0)
    )
    (i64.load
     (local.get $0)
    )
    (i32.const 1)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/trades.table/TradesTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 59)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/trades.table/TradesTable>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/trades.table/TradesTable>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_lowerbound_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
    (i64.const 0)
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $assembly/orderbook/tables/trades.table/TradesTable#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $assembly/orderbook/tables/trades.table/TradesTable#set:sell_order_id
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:tick_size
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:filled_amount
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:status
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:trigger_price
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/trades.table/TradesTable#set:total_value
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/trades.table/TradesTable#set:buyer_fee
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/trades.table/TradesTable#set:seller_fee
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:updated_at
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/trades.table/TradesTable>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/orderbook/tables/trades.table/TradesTable#unpack
    (local.tee $0
     (call $assembly/orderbook/tables/trades.table/TradesTable#constructor@varargs
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/trades.table/TradesTable>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/trades.table/TradesTable>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/trades.table/TradesTable>#first (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/trades.table/TradesTable>#getValue
   (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/trades.table/TradesTable>#begin
    (i32.load
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/trades.table/TradesTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/trades.table/TradesTable>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/trades.table/TradesTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/trades.table/TradesTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/trades.table/TradesTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/trades.table/TradesTable>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/trades.table/TradesTable>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/trades.table/TradesTable>#next (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/trades.table/TradesTable>#requireFind
    (i32.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 1872)
   )
  )
  (local.set $2
   (i32.load
    (i32.load
     (local.get $0)
    )
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/trades.table/TradesTable>#getValue
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/trades.table/TradesTable>#constructor
    (local.get $2)
    (call $~lib/as-chain/env/db_next_i64
     (i32.load offset=4
      (local.get $1)
     )
     (local.get $0)
    )
    (i64.load
     (local.get $0)
    )
    (i32.const 1)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/fees.table/FeesTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 60)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/fees.table/FeesTable>#begin (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/fees.table/FeesTable>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_lowerbound_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
    (i64.const 0)
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $assembly/orderbook/tables/fees.table/FeesTable#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:quote_contract
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:max_order_size
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/orderbook/tables/fees.table/FeesTable#set:last_updated
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/fees.table/FeesTable>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/orderbook/tables/fees.table/FeesTable#unpack
    (local.tee $0
     (call $assembly/orderbook/tables/fees.table/FeesTable#constructor@varargs
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/fees.table/FeesTable>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/fees.table/FeesTable>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/fees.table/FeesTable>#first (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/fees.table/FeesTable>#getValue
   (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/fees.table/FeesTable>#begin
    (i32.load
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/fees.table/FeesTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/fees.table/FeesTable>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/fees.table/FeesTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/fees.table/FeesTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/fees.table/FeesTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/fees.table/FeesTable>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/fees.table/FeesTable>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/fees.table/FeesTable>#next (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/fees.table/FeesTable>#requireFind
    (i32.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 1872)
   )
  )
  (local.set $2
   (i32.load
    (i32.load
     (local.get $0)
    )
   )
  )
  (local.set $0
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/fees.table/FeesTable>#getValue
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/fees.table/FeesTable>#constructor
    (local.get $2)
    (call $~lib/as-chain/env/db_next_i64
     (i32.load offset=4
      (local.get $1)
     )
     (local.get $0)
    )
    (i64.load
     (local.get $0)
    )
    (i32.const 1)
   )
  )
 )
 (func $assembly/orderbook/tables/balances.table/BalancesTable#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 61)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $assembly/orderbook/tables/balances.table/BalancesTable#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $4of4
   (block $2of4
    (block $1of4
     (block $0of4
      (block $outOfRange
       (br_table $0of4 $1of4 $2of4 $4of4 $4of4 $outOfRange
        (global.get $~argumentsLength)
       )
      )
      (unreachable)
     )
     (local.set $0
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (local.set $2
     (call $~lib/as-chain/asset/Asset#constructor@varargs)
    )
   )
   (global.set $~argumentsLength
    (i32.const 0)
   )
   (local.set $1
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/balances.table/BalancesTable#constructor
   (local.get $0)
   (local.get $2)
   (local.get $1)
   (i64.const 0)
  )
 )
 (func $assembly/orderbook/tables/balances.table/BalancesTable.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 4152997948076064768)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 62)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $3)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/orderbook/tables/balances.table/BalancesTable#constructor@varargs
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (local.set $4
   (call $assembly/orderbook/tables/balances.table/BalancesTable.get:tableName)
  )
  (drop
   (i64.load
    (call $assembly/orderbook/tables/balances.table/BalancesTable.get:tableName)
   )
  )
  (local.set $5
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 18)
    (i32.const 6240)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 63)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $2)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $4)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 64)
    )
   )
   (local.get $6)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $0)
   (local.get $7)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $0)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $3)
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/balances.table/BalancesTable>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 65)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $assembly/orderbook/tables/balances.table/BalancesTable#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/balances.table/BalancesTable>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $assembly/orderbook/tables/balances.table/BalancesTable#unpack
    (local.tee $0
     (call $assembly/orderbook/tables/balances.table/BalancesTable#constructor@varargs
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/balances.table/BalancesTable>#getValue (param $0 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/balances.table/BalancesTable>#getEx
   (i32.load
    (local.get $0)
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#first (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/balances.table/BalancesTable>#getValue
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
    (local.tee $0
     (i32.load
      (i32.load
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/env/db_lowerbound_i64
     (i64.load
      (local.get $0)
     )
     (i64.load offset=8
      (local.get $0)
     )
     (i64.load offset=16
      (local.get $0)
     )
     (i64.const 0)
    )
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $assembly/orderbook/tables/balances.table/BalancesTable#getPrimaryValue (param $0 i32) (result i64)
  (call $~lib/as-chain/asset/Symbol#code
   (i32.load offset=8
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/balances.table/BalancesTable>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/balances.table/BalancesTable>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/balances.table/BalancesTable>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/balances.table/BalancesTable>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/balances.table/BalancesTable>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#next (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/balances.table/BalancesTable>#requireFind
    (i32.load
     (local.get $0)
    )
    (call $assembly/orderbook/tables/balances.table/BalancesTable#getPrimaryValue
     (local.get $1)
    )
    (i32.const 1872)
   )
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/balances.table/BalancesTable>#getValue
   (block (result i32)
    (local.set $2
     (i32.load
      (i32.load
       (local.get $0)
      )
     )
    )
    (local.set $0
     (call $~lib/rt/stub/__alloc
      (i32.const 8)
     )
    )
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
     (local.get $2)
     (call $~lib/as-chain/env/db_next_i64
      (i32.load offset=4
       (local.get $1)
      )
      (local.get $0)
     )
     (i64.load
      (local.get $0)
     )
     (i32.const 1)
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#remove (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local.set $2
   (call $assembly/orderbook/tables/balances.table/BalancesTable#getPrimaryValue
    (local.get $1)
   )
  )
  (drop
   (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/balances.table/BalancesTable>#requireFind
    (i32.load
     (local.get $0)
    )
    (local.get $2)
    (i32.const 1648)
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/balances.table/BalancesTable>#find
      (local.tee $3
       (i32.load
        (local.get $0)
       )
      )
      (local.get $2)
     )
    )
   )
   (i32.const 6160)
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/pairs.table/PairsTable>#remove
   (i32.load
    (local.get $3)
   )
   (local.get $4)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $3)
      )
     )
    )
    (block
     (if
      (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
       (i32.load
        (local.tee $4
         (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (i32.load offset=4
            (local.get $3)
           )
           (local.get $1)
          )
          (local.get $2)
         )
        )
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $3)
        )
        (local.get $1)
       )
       (i32.load
        (local.get $4)
       )
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.eq
    (local.get $2)
    (i64.sub
     (i64.load offset=8
      (local.get $0)
     )
     (i64.const 1)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $0)
    (i64.const -1)
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#clearPair (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local.set $1
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#first
    (i32.load offset=12
     (local.get $0)
    )
   )
  )
  (loop $while-continue|0
   (if
    (local.get $1)
    (block
     (local.set $2
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#next
       (i32.load offset=12
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (drop
      (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#requireFind
       (i32.load
        (local.tee $4
         (i32.load offset=12
          (local.get $0)
         )
        )
       )
       (local.tee $5
        (i64.load
         (local.get $1)
        )
       )
       (i32.const 1648)
      )
     )
     (local.set $1
      (i32.const 0)
     )
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
       (local.tee $6
        (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/pairs.table/PairsTable>#find
         (local.tee $3
          (i32.load
           (local.get $4)
          )
         )
         (local.get $5)
        )
       )
      )
      (i32.const 6160)
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/pairs.table/PairsTable>#remove
      (i32.load
       (local.get $3)
      )
      (local.get $6)
     )
     (loop $for-loop|0
      (if
       (i32.lt_s
        (local.get $1)
        (i32.load offset=12
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (block
        (if
         (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
          (i32.load
           (local.tee $6
            (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
             (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
              (i32.load offset=4
               (local.get $3)
              )
              (local.get $1)
             )
             (local.get $5)
            )
           )
          )
         )
         (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (i32.load offset=4
            (local.get $3)
           )
           (local.get $1)
          )
          (i32.load
           (local.get $6)
          )
         )
        )
        (local.set $1
         (i32.add
          (local.get $1)
          (i32.const 1)
         )
        )
        (br $for-loop|0)
       )
      )
     )
     (if
      (i64.eq
       (local.get $5)
       (i64.sub
        (i64.load offset=8
         (local.get $4)
        )
        (i64.const 1)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#set:scope
       (local.get $4)
       (i64.const -1)
      )
     )
     (local.set $1
      (local.get $2)
     )
     (br $while-continue|0)
    )
   )
  )
  (local.set $1
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#first
    (i32.load offset=16
     (local.get $0)
    )
   )
  )
  (loop $while-continue|1
   (if
    (local.get $1)
    (block
     (local.set $2
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#next
       (i32.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (drop
      (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#requireFind
       (i32.load
        (local.tee $4
         (i32.load offset=16
          (local.get $0)
         )
        )
       )
       (local.tee $5
        (i64.load
         (local.get $1)
        )
       )
       (i32.const 1648)
      )
     )
     (local.set $1
      (i32.const 0)
     )
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
       (local.tee $6
        (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#find
         (local.tee $3
          (i32.load
           (local.get $4)
          )
         )
         (local.get $5)
        )
       )
      )
      (i32.const 6160)
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/pairs.table/PairsTable>#remove
      (i32.load
       (local.get $3)
      )
      (local.get $6)
     )
     (loop $for-loop|00
      (if
       (i32.lt_s
        (local.get $1)
        (i32.load offset=12
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (block
        (if
         (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
          (i32.load
           (local.tee $6
            (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
             (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
              (i32.load offset=4
               (local.get $3)
              )
              (local.get $1)
             )
             (local.get $5)
            )
           )
          )
         )
         (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (i32.load offset=4
            (local.get $3)
           )
           (local.get $1)
          )
          (i32.load
           (local.get $6)
          )
         )
        )
        (local.set $1
         (i32.add
          (local.get $1)
          (i32.const 1)
         )
        )
        (br $for-loop|00)
       )
      )
     )
     (if
      (i64.eq
       (local.get $5)
       (i64.sub
        (i64.load offset=8
         (local.get $4)
        )
        (i64.const 1)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#set:scope
       (local.get $4)
       (i64.const -1)
      )
     )
     (local.set $1
      (local.get $2)
     )
     (br $while-continue|1)
    )
   )
  )
  (local.set $1
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/trades.table/TradesTable>#first
    (i32.load offset=20
     (local.get $0)
    )
   )
  )
  (loop $while-continue|2
   (if
    (local.get $1)
    (block
     (local.set $2
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/trades.table/TradesTable>#next
       (i32.load offset=20
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (drop
      (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/trades.table/TradesTable>#requireFind
       (i32.load
        (local.tee $4
         (i32.load offset=20
          (local.get $0)
         )
        )
       )
       (local.tee $5
        (i64.load
         (local.get $1)
        )
       )
       (i32.const 1648)
      )
     )
     (local.set $1
      (i32.const 0)
     )
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
       (local.tee $6
        (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/trades.table/TradesTable>#find
         (local.tee $3
          (i32.load
           (local.get $4)
          )
         )
         (local.get $5)
        )
       )
      )
      (i32.const 6160)
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/pairs.table/PairsTable>#remove
      (i32.load
       (local.get $3)
      )
      (local.get $6)
     )
     (loop $for-loop|01
      (if
       (i32.lt_s
        (local.get $1)
        (i32.load offset=12
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (block
        (if
         (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
          (i32.load
           (local.tee $6
            (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
             (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
              (i32.load offset=4
               (local.get $3)
              )
              (local.get $1)
             )
             (local.get $5)
            )
           )
          )
         )
         (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (i32.load offset=4
            (local.get $3)
           )
           (local.get $1)
          )
          (i32.load
           (local.get $6)
          )
         )
        )
        (local.set $1
         (i32.add
          (local.get $1)
          (i32.const 1)
         )
        )
        (br $for-loop|01)
       )
      )
     )
     (if
      (i64.eq
       (local.get $5)
       (i64.sub
        (i64.load offset=8
         (local.get $4)
        )
        (i64.const 1)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#set:scope
       (local.get $4)
       (i64.const -1)
      )
     )
     (local.set $1
      (local.get $2)
     )
     (br $while-continue|2)
    )
   )
  )
  (local.set $1
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#getValue
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#constructor
     (local.tee $1
      (i32.load
       (i32.load
        (i32.load offset=24
         (local.get $0)
        )
       )
      )
     )
     (call $~lib/as-chain/env/db_lowerbound_i64
      (i64.load
       (local.get $1)
      )
      (i64.load offset=8
       (local.get $1)
      )
      (i64.load offset=16
       (local.get $1)
      )
      (i64.const 0)
     )
     (i64.const 0)
     (i32.const 0)
    )
   )
  )
  (loop $while-continue|3
   (if
    (local.get $1)
    (block
     (local.set $3
      (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/config.table/ConfigTable>#requireFind
       (i32.load
        (local.tee $2
         (i32.load offset=24
          (local.get $0)
         )
        )
       )
       (i64.load
        (local.get $1)
       )
       (i32.const 1872)
      )
     )
     (local.set $4
      (i32.load
       (i32.load
        (local.get $2)
       )
      )
     )
     (local.set $2
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.set $2
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#getValue
       (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#constructor
        (local.get $4)
        (call $~lib/as-chain/env/db_next_i64
         (i32.load offset=4
          (local.get $3)
         )
         (local.get $2)
        )
        (i64.load
         (local.get $2)
        )
        (i32.const 1)
       )
      )
     )
     (drop
      (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/config.table/ConfigTable>#requireFind
       (i32.load
        (local.tee $4
         (i32.load offset=24
          (local.get $0)
         )
        )
       )
       (local.tee $5
        (i64.load
         (local.get $1)
        )
       )
       (i32.const 1648)
      )
     )
     (local.set $1
      (i32.const 0)
     )
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
       (local.tee $6
        (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/config.table/ConfigTable>#find
         (local.tee $3
          (i32.load
           (local.get $4)
          )
         )
         (local.get $5)
        )
       )
      )
      (i32.const 6160)
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/pairs.table/PairsTable>#remove
      (i32.load
       (local.get $3)
      )
      (local.get $6)
     )
     (loop $for-loop|02
      (if
       (i32.lt_s
        (local.get $1)
        (i32.load offset=12
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (block
        (if
         (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
          (i32.load
           (local.tee $6
            (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
             (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
              (i32.load offset=4
               (local.get $3)
              )
              (local.get $1)
             )
             (local.get $5)
            )
           )
          )
         )
         (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (i32.load offset=4
            (local.get $3)
           )
           (local.get $1)
          )
          (i32.load
           (local.get $6)
          )
         )
        )
        (local.set $1
         (i32.add
          (local.get $1)
          (i32.const 1)
         )
        )
        (br $for-loop|02)
       )
      )
     )
     (if
      (i64.eq
       (local.get $5)
       (i64.sub
        (i64.load offset=8
         (local.get $4)
        )
        (i64.const 1)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#set:scope
       (local.get $4)
       (i64.const -1)
      )
     )
     (local.set $1
      (local.get $2)
     )
     (br $while-continue|3)
    )
   )
  )
  (local.set $1
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/fees.table/FeesTable>#first
    (i32.load offset=28
     (local.get $0)
    )
   )
  )
  (loop $while-continue|4
   (if
    (local.get $1)
    (block
     (local.set $2
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/fees.table/FeesTable>#next
       (i32.load offset=28
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (drop
      (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/fees.table/FeesTable>#requireFind
       (i32.load
        (local.tee $4
         (i32.load offset=28
          (local.get $0)
         )
        )
       )
       (local.tee $5
        (i64.load
         (local.get $1)
        )
       )
       (i32.const 1648)
      )
     )
     (local.set $1
      (i32.const 0)
     )
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
       (local.tee $6
        (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/fees.table/FeesTable>#find
         (local.tee $3
          (i32.load
           (local.get $4)
          )
         )
         (local.get $5)
        )
       )
      )
      (i32.const 6160)
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/pairs.table/PairsTable>#remove
      (i32.load
       (local.get $3)
      )
      (local.get $6)
     )
     (loop $for-loop|03
      (if
       (i32.lt_s
        (local.get $1)
        (i32.load offset=12
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (block
        (if
         (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
          (i32.load
           (local.tee $6
            (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
             (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
              (i32.load offset=4
               (local.get $3)
              )
              (local.get $1)
             )
             (local.get $5)
            )
           )
          )
         )
         (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (i32.load offset=4
            (local.get $3)
           )
           (local.get $1)
          )
          (i32.load
           (local.get $6)
          )
         )
        )
        (local.set $1
         (i32.add
          (local.get $1)
          (i32.const 1)
         )
        )
        (br $for-loop|03)
       )
      )
     )
     (if
      (i64.eq
       (local.get $5)
       (i64.sub
        (i64.load offset=8
         (local.get $4)
        )
        (i64.const 1)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#set:scope
       (local.get $4)
       (i64.const -1)
      )
     )
     (local.set $1
      (local.get $2)
     )
     (br $while-continue|4)
    )
   )
  )
  (local.set $2
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $1)
   (i64.const 3696772916757045840)
  )
  (local.set $1
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#first
    (local.tee $3
     (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
      (local.get $2)
      (local.get $1)
     )
    )
   )
  )
  (loop $while-continue|5
   (if
    (local.get $1)
    (block
     (local.set $2
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#next
       (local.get $3)
       (local.get $1)
      )
     )
     (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#remove
      (local.get $3)
      (local.get $1)
     )
     (local.set $1
      (local.get $2)
     )
     (br $while-continue|5)
    )
   )
  )
  (local.set $1
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 3696772916757045808)
  )
  (local.set $0
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#first
    (local.tee $2
     (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
      (local.get $1)
      (local.get $0)
     )
    )
   )
  )
  (loop $while-continue|6
   (if
    (local.get $0)
    (block
     (local.set $1
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#next
       (local.get $2)
       (local.get $0)
      )
     )
     (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#remove
      (local.get $2)
      (local.get $0)
     )
     (local.set $0
      (local.get $1)
     )
     (br $while-continue|6)
    )
   )
  )
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eq
    (local.get $0)
    (local.get $1)
   )
   (return
    (i32.const 1)
   )
  )
  (if
   (select
    (i32.eqz
     (local.get $1)
    )
    (i32.const 1)
    (local.get $0)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (local.tee $2
     (call $~lib/string/String#get:length
      (local.get $0)
     )
    )
    (call $~lib/string/String#get:length
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $~lib/util/string/compareImpl
    (local.get $0)
    (i32.const 0)
    (local.get $1)
    (local.get $2)
   )
  )
 )
 (func $~lib/string/String.__ne (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $~lib/string/String.__eq
    (local.get $0)
    (local.get $1)
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#setPairStatus (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load offset=8
    (call $assembly/orderbook/orderbook.contract/orderbook#getConfig
     (local.get $0)
    )
   )
  )
  (local.set $3
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#requireGet
    (i32.load offset=12
     (local.get $0)
    )
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (if (result i32)
     (call $~lib/string/String.__eq
      (local.get $2)
      (i32.const 5728)
     )
     (i32.const 1)
     (call $~lib/string/String.__eq
      (local.get $2)
      (i32.const 6272)
     )
    )
    (i32.const 1)
    (call $~lib/string/String.__eq
     (local.get $2)
     (i32.const 6304)
    )
   )
   (i32.const 6352)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/string/String.__ne
    (i32.load offset=40
     (local.get $3)
    )
    (local.get $2)
   )
   (i32.const 6416)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:status
   (local.get $3)
   (local.get $2)
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#update
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $3)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/balances.table/BalancesTable>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/balances.table/BalancesTable>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/asset/Symbol.fromU64 (param $0 i64) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/as-chain/asset/Symbol#constructor)
   )
   (local.get $0)
  )
  (local.get $1)
 )
 (func $assembly/orderbook/tables/balances.table/BalancesTable#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=4
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (i32.const 48)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/balances.table/BalancesTable>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
    (local.get $1)
   )
   (i32.const 2736)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $4
     (call $assembly/orderbook/tables/balances.table/BalancesTable#getPrimaryValue
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/balances.table/BalancesTable>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
       (local.get $1)
      )
      (i32.const 2800)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/balances.table/BalancesTable>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $6
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/balances.table/BalancesTable>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/idxdb/IDXDB#set:table
      (local.get $1)
      (call $assembly/orderbook/tables/balances.table/BalancesTable#getPrimaryValue
       (local.get $6)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 2944)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $6
   (i32.load offset=12
    (local.tee $2
     (call $assembly/orderbook/tables/balances.table/BalancesTable#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $7)
   (i32.load offset=4
    (local.get $2)
   )
   (local.get $6)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $4)
      )
     )
     (local.set $2
      (call $assembly/orderbook/tables/config.table/ConfigTable#getSecondaryValue)
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $2)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $assembly/orderbook/tables/config.table/ConfigTable#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $4)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local.set $3
   (call $assembly/orderbook/tables/balances.table/BalancesTable#getPrimaryValue
    (local.get $1)
   )
  )
  (local.set $4
   (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/balances.table/BalancesTable>#requireFind
    (i32.load
     (local.get $0)
    )
    (local.get $3)
    (i32.const 1424)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/balances.table/BalancesTable>#update
   (i32.load
    (local.get $0)
   )
   (local.get $4)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#onTransfer (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (if
   (i64.ne
    (i64.load
     (local.get $2)
    )
    (i64.load
     (i32.load
      (local.get $0)
     )
    )
   )
   (return)
  )
  (if
   (i64.eq
    (i64.load
     (local.get $1)
    )
    (i64.load
     (i32.load
      (local.get $0)
     )
    )
   )
   (return)
  )
  (if
   (call $~lib/string/String.__ne
    (local.get $4)
    (i32.const 6496)
   )
   (return)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $3)
    )
    (i64.const 0)
   )
   (i32.const 6544)
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#verifyTokenExist
   (i32.load offset=8
    (local.get $3)
   )
   (local.tee $6
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (local.set $7
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
    (i32.load
     (local.get $0)
    )
    (local.get $1)
   )
  )
  (local.set $5
   (call $~lib/as-chain/asset/Symbol#code
    (i32.load offset=8
     (local.get $3)
    )
   )
  )
  (if
   (local.tee $1
    (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/balances.table/BalancesTable>#getByKey (result i32)
     (drop
      (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/balances.table/BalancesTable>#getByKey
       (i32.const 0)
       (i32.eqz
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
         (local.tee $2
          (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/balances.table/BalancesTable>#find
           (local.tee $4
            (i32.load
             (local.get $7)
            )
           )
           (local.get $5)
          )
         )
        )
       )
      )
     )
     (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/balances.table/BalancesTable>#get
      (i32.load
       (local.get $4)
      )
      (local.get $2)
     )
    )
   )
   (block
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (i32.load offset=4
         (local.get $1)
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $3)
       )
      )
     )
     (i32.const 6608)
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.tee $2
         (i32.load offset=4
          (local.get $1)
         )
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $3)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $5
       (i64.add
        (i64.load
         (local.get $2)
        )
        (i64.load
         (local.get $3)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 6736)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $5)
      (i64.const 4611686018427387903)
     )
     (i32.const 6800)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $1)
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $5)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $2)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:table
     (local.get $1)
     (i64.extend_i32_u
      (call $~lib/as-chain/system/currentTimeSec)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#update
     (local.get $7)
     (local.get $1)
     (i32.load
      (local.get $0)
     )
    )
   )
   (block
    (local.set $1
     (call $assembly/orderbook/tables/balances.table/BalancesTable#constructor
      (local.get $6)
      (local.get $3)
      (call $~lib/as-chain/asset/Asset#constructor
       (i64.const 0)
       (i32.load offset=8
        (local.get $3)
       )
      )
      (i64.extend_i32_u
       (call $~lib/as-chain/system/currentTimeSec)
      )
     )
    )
    (local.set $0
     (i32.load
      (local.get $0)
     )
    )
    (local.set $8
     (call $assembly/orderbook/tables/balances.table/BalancesTable#getPrimaryValue
      (local.get $1)
     )
    )
    (call $~lib/as-chain/system/check
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
       (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/balances.table/BalancesTable>#find
        (i32.load
         (local.get $7)
        )
        (local.get $8)
       )
      )
     )
     (i32.const 1200)
    )
    (local.set $4
     (i32.load
      (local.tee $6
       (i32.load
        (local.get $7)
       )
      )
     )
    )
    (local.set $10
     (call $assembly/orderbook/tables/balances.table/BalancesTable#getPrimaryValue
      (local.get $1)
     )
    )
    (local.set $5
     (i64.load
      (local.get $0)
     )
    )
    (local.set $2
     (i32.load offset=12
      (local.tee $3
       (call $assembly/orderbook/tables/balances.table/BalancesTable#pack
        (local.get $1)
       )
      )
     )
    )
    (drop
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
      (local.get $4)
      (call $~lib/as-chain/env/db_store_i64
       (i64.load offset=8
        (local.get $4)
       )
       (i64.load offset=16
        (local.get $4)
       )
       (local.get $5)
       (local.get $10)
       (i32.load offset=4
        (local.get $3)
       )
       (local.get $2)
      )
      (local.get $10)
      (i32.const 1)
     )
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $9)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $6)
        )
       )
      )
      (block
       (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
        (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
         (i32.load offset=4
          (local.get $6)
         )
         (local.get $9)
        )
        (call $assembly/orderbook/tables/balances.table/BalancesTable#getPrimaryValue
         (local.get $1)
        )
        (call $assembly/orderbook/tables/config.table/ConfigTable#getSecondaryValue)
        (i64.load
         (local.get $0)
        )
       )
       (local.set $9
        (i32.add
         (local.get $9)
         (i32.const 1)
        )
       )
       (br $for-loop|0)
      )
     )
    )
    (if
     (i64.ge_u
      (local.tee $5
       (call $assembly/orderbook/tables/balances.table/BalancesTable#getPrimaryValue
        (local.get $1)
       )
      )
      (i64.load offset=8
       (local.get $6)
      )
     )
     (call $~lib/as-chain/idxdb/IDXDB#set:scope
      (local.get $6)
      (select
       (i64.const -2)
       (i64.add
        (local.get $5)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $5)
        (i64.const -2)
       )
      )
     )
    )
    (if
     (i64.ge_u
      (local.get $8)
      (i64.load offset=8
       (local.get $7)
      )
     )
     (call $~lib/as-chain/idxdb/IDXDB#set:scope
      (local.get $7)
      (select
       (i64.const -2)
       (i64.add
        (local.get $8)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $8)
        (i64.const -2)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/array/Array<assembly/orderbook/tables/orders.table/OrdersTable>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (block
    (if
     (i32.lt_s
      (local.get $1)
      (i32.const 0)
     )
     (unreachable)
    )
    (call $~lib/array/ensureCapacity
     (local.get $0)
     (local.tee $3
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (i32.const 2)
    )
    (call $~lib/rt/common/OBJECT#set:rtId
     (local.get $0)
     (local.get $3)
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#sortBuyOrders (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (i32.load offset=12
      (local.get $0)
     )
    )
    (block
     (local.set $2
      (i32.const 0)
     )
     (loop $for-loop|1
      (if
       (i32.lt_s
        (local.get $2)
        (i32.sub
         (i32.sub
          (i32.load offset=12
           (local.get $0)
          )
          (local.get $3)
         )
         (i32.const 1)
        )
       )
       (block
        (if
         (if (result i32)
          (block (result i32)
           (if
            (i32.eqz
             (local.tee $1
              (i64.lt_s
               (i64.load
                (i32.load offset=28
                 (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                  (local.get $0)
                  (local.get $2)
                 )
                )
               )
               (i64.load
                (i32.load offset=28
                 (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                  (local.get $0)
                  (i32.add
                   (local.get $2)
                   (i32.const 1)
                  )
                 )
                )
               )
              )
             )
            )
            (local.set $1
             (if (result i32)
              (i64.eq
               (i64.load
                (i32.load offset=28
                 (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                  (local.get $0)
                  (local.get $2)
                 )
                )
               )
               (i64.load
                (i32.load offset=28
                 (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                  (local.get $0)
                  (i32.add
                   (local.get $2)
                   (i32.const 1)
                  )
                 )
                )
               )
              )
              (i64.gt_u
               (i64.load offset=56
                (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                 (local.get $0)
                 (local.get $2)
                )
               )
               (i64.load offset=56
                (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                 (local.get $0)
                 (i32.add
                  (local.get $2)
                  (i32.const 1)
                 )
                )
               )
              )
              (i32.const 0)
             )
            )
           )
           (local.get $1)
          )
          (local.get $1)
          (if (result i32)
           (if (result i32)
            (i64.eq
             (i64.load
              (i32.load offset=28
               (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                (local.get $0)
                (local.get $2)
               )
              )
             )
             (i64.load
              (i32.load offset=28
               (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                (local.get $0)
                (i32.add
                 (local.get $2)
                 (i32.const 1)
                )
               )
              )
             )
            )
            (i64.eq
             (i64.load offset=56
              (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
               (local.get $0)
               (local.get $2)
              )
             )
             (i64.load offset=56
              (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
               (local.get $0)
               (i32.add
                (local.get $2)
                (i32.const 1)
               )
              )
             )
            )
            (i32.const 0)
           )
           (i64.gt_u
            (i64.load
             (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
              (local.get $0)
              (local.get $2)
             )
            )
            (i64.load
             (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
              (local.get $0)
              (i32.add
               (local.get $2)
               (i32.const 1)
              )
             )
            )
           )
           (i32.const 0)
          )
         )
         (block
          (local.set $1
           (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
            (local.get $0)
            (local.get $2)
           )
          )
          (call $~lib/array/Array<assembly/orderbook/tables/orders.table/OrdersTable>#__set
           (local.get $0)
           (local.get $2)
           (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
            (local.get $0)
            (local.tee $4
             (i32.add
              (local.get $2)
              (i32.const 1)
             )
            )
           )
          )
          (call $~lib/array/Array<assembly/orderbook/tables/orders.table/OrdersTable>#__set
           (local.get $0)
           (local.get $4)
           (local.get $1)
          )
         )
        )
        (local.set $2
         (i32.add
          (local.get $2)
          (i32.const 1)
         )
        )
        (br $for-loop|1)
       )
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#getBestBuyOrders (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $4
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 66)
    (i32.const 7808)
   )
  )
  (local.set $3
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#first
    (i32.load offset=16
     (local.get $0)
    )
   )
  )
  (loop $while-continue|0
   (if
    (local.get $3)
    (block
     (if
      (if (result i32)
       (if (result i32)
        (if (result i32)
         (i64.eq
          (local.get $1)
          (i64.load offset=8
           (local.get $3)
          )
         )
         (call $~lib/string/String.__eq
          (i32.load offset=20
           (local.get $3)
          )
          (i32.const 7008)
         )
         (i32.const 0)
        )
        (call $~lib/string/String.__eq
         (i32.load offset=24
          (local.get $3)
         )
         (i32.const 7840)
        )
        (i32.const 0)
       )
       (if (result i32)
        (i32.load8_u offset=49
         (local.get $3)
        )
        (i32.eq
         (i32.load8_u offset=49
          (local.get $3)
         )
         (i32.const 1)
        )
        (i32.const 1)
       )
       (i32.const 0)
      )
      (call $~lib/array/Array<~lib/string/String>#push
       (local.get $4)
       (local.get $3)
      )
     )
     (local.set $3
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#next
       (i32.load offset=16
        (local.get $0)
       )
       (local.get $3)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#sortBuyOrders
   (local.get $4)
  )
  (local.set $3
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 66)
    (i32.const 7872)
   )
  )
  (local.set $0
   (i32.const 0)
  )
  (loop $for-loop|1
   (if
    (select
     (i32.lt_s
      (local.get $0)
      (local.get $2)
     )
     (i32.const 0)
     (i32.lt_s
      (local.get $0)
      (i32.load offset=12
       (local.get $4)
      )
     )
    )
    (block
     (call $~lib/array/Array<~lib/string/String>#push
      (local.get $3)
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (local.get $4)
       (local.get $0)
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
  (local.get $3)
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#sortSellOrders (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (i32.load offset=12
      (local.get $0)
     )
    )
    (block
     (local.set $2
      (i32.const 0)
     )
     (loop $for-loop|1
      (if
       (i32.lt_s
        (local.get $2)
        (i32.sub
         (i32.sub
          (i32.load offset=12
           (local.get $0)
          )
          (local.get $3)
         )
         (i32.const 1)
        )
       )
       (block
        (if
         (if (result i32)
          (block (result i32)
           (if
            (i32.eqz
             (local.tee $1
              (i64.gt_s
               (i64.load
                (i32.load offset=28
                 (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                  (local.get $0)
                  (local.get $2)
                 )
                )
               )
               (i64.load
                (i32.load offset=28
                 (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                  (local.get $0)
                  (i32.add
                   (local.get $2)
                   (i32.const 1)
                  )
                 )
                )
               )
              )
             )
            )
            (local.set $1
             (if (result i32)
              (i64.eq
               (i64.load
                (i32.load offset=28
                 (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                  (local.get $0)
                  (local.get $2)
                 )
                )
               )
               (i64.load
                (i32.load offset=28
                 (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                  (local.get $0)
                  (i32.add
                   (local.get $2)
                   (i32.const 1)
                  )
                 )
                )
               )
              )
              (i64.gt_u
               (i64.load offset=56
                (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                 (local.get $0)
                 (local.get $2)
                )
               )
               (i64.load offset=56
                (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                 (local.get $0)
                 (i32.add
                  (local.get $2)
                  (i32.const 1)
                 )
                )
               )
              )
              (i32.const 0)
             )
            )
           )
           (local.get $1)
          )
          (local.get $1)
          (if (result i32)
           (if (result i32)
            (i64.eq
             (i64.load
              (i32.load offset=28
               (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                (local.get $0)
                (local.get $2)
               )
              )
             )
             (i64.load
              (i32.load offset=28
               (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                (local.get $0)
                (i32.add
                 (local.get $2)
                 (i32.const 1)
                )
               )
              )
             )
            )
            (i64.eq
             (i64.load offset=56
              (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
               (local.get $0)
               (local.get $2)
              )
             )
             (i64.load offset=56
              (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
               (local.get $0)
               (i32.add
                (local.get $2)
                (i32.const 1)
               )
              )
             )
            )
            (i32.const 0)
           )
           (i64.gt_u
            (i64.load
             (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
              (local.get $0)
              (local.get $2)
             )
            )
            (i64.load
             (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
              (local.get $0)
              (i32.add
               (local.get $2)
               (i32.const 1)
              )
             )
            )
           )
           (i32.const 0)
          )
         )
         (block
          (local.set $1
           (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
            (local.get $0)
            (local.get $2)
           )
          )
          (call $~lib/array/Array<assembly/orderbook/tables/orders.table/OrdersTable>#__set
           (local.get $0)
           (local.get $2)
           (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
            (local.get $0)
            (local.tee $4
             (i32.add
              (local.get $2)
              (i32.const 1)
             )
            )
           )
          )
          (call $~lib/array/Array<assembly/orderbook/tables/orders.table/OrdersTable>#__set
           (local.get $0)
           (local.get $4)
           (local.get $1)
          )
         )
        )
        (local.set $2
         (i32.add
          (local.get $2)
          (i32.const 1)
         )
        )
        (br $for-loop|1)
       )
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#getBestSellOrders (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $4
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 66)
    (i32.const 7904)
   )
  )
  (local.set $3
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#first
    (i32.load offset=16
     (local.get $0)
    )
   )
  )
  (loop $while-continue|0
   (if
    (local.get $3)
    (block
     (if
      (if (result i32)
       (if (result i32)
        (if (result i32)
         (i64.eq
          (local.get $1)
          (i64.load offset=8
           (local.get $3)
          )
         )
         (call $~lib/string/String.__eq
          (i32.load offset=20
           (local.get $3)
          )
          (i32.const 7040)
         )
         (i32.const 0)
        )
        (call $~lib/string/String.__eq
         (i32.load offset=24
          (local.get $3)
         )
         (i32.const 7840)
        )
        (i32.const 0)
       )
       (if (result i32)
        (i32.load8_u offset=49
         (local.get $3)
        )
        (i32.eq
         (i32.load8_u offset=49
          (local.get $3)
         )
         (i32.const 1)
        )
        (i32.const 1)
       )
       (i32.const 0)
      )
      (call $~lib/array/Array<~lib/string/String>#push
       (local.get $4)
       (local.get $3)
      )
     )
     (local.set $3
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#next
       (i32.load offset=16
        (local.get $0)
       )
       (local.get $3)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#sortSellOrders
   (local.get $4)
  )
  (local.set $3
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 66)
    (i32.const 7936)
   )
  )
  (local.set $0
   (i32.const 0)
  )
  (loop $for-loop|1
   (if
    (select
     (i32.lt_s
      (local.get $0)
      (local.get $2)
     )
     (i32.const 0)
     (i32.lt_s
      (local.get $0)
      (i32.load offset=12
       (local.get $4)
      )
     )
    )
    (block
     (call $~lib/array/Array<~lib/string/String>#push
      (local.get $3)
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (local.get $4)
       (local.get $0)
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
  (local.get $3)
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#getCurrentMarketPrice (param $0 i32) (param $1 i64) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local.set $4
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#requireGet
    (i32.load offset=12
     (local.get $0)
    )
    (local.get $1)
   )
  )
  (local.set $3
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/trades.table/TradesTable>#first
    (i32.load offset=20
     (local.get $0)
    )
   )
  )
  (loop $while-continue|0
   (if
    (local.get $3)
    (block
     (if
      (if (result i32)
       (i64.eq
        (local.get $1)
        (i64.load offset=8
         (local.get $3)
        )
       )
       (i64.lt_u
        (local.get $5)
        (i64.load
         (local.get $3)
        )
       )
       (i32.const 0)
      )
      (local.set $2
       (block (result i64)
        (local.set $5
         (i64.load
          (local.get $3)
         )
        )
        (i64.load
         (i32.load offset=40
          (local.get $3)
         )
        )
       )
      )
     )
     (local.set $3
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/trades.table/TradesTable>#next
       (i32.load offset=20
        (local.get $0)
       )
       (local.get $3)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (if
   (i64.gt_s
    (local.get $2)
    (i64.const 0)
   )
   (return
    (call $~lib/as-chain/asset/Asset#constructor
     (local.get $2)
     (i32.load offset=16
      (local.get $4)
     )
    )
   )
  )
  (local.set $3
   (block $__inlined_func$assembly/orderbook/orderbook.contract/orderbook#getBestBidPrice (result i32)
    (if
     (i32.gt_s
      (i32.load offset=12
       (local.tee $3
        (call $assembly/orderbook/orderbook.contract/orderbook#getBestBuyOrders
         (local.get $0)
         (local.get $1)
         (i32.const 1)
        )
       )
      )
      (i32.const 0)
     )
     (br $__inlined_func$assembly/orderbook/orderbook.contract/orderbook#getBestBidPrice
      (i32.load offset=28
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (local.get $3)
        (i32.const 0)
       )
      )
     )
    )
    (call $~lib/as-chain/asset/Asset#constructor
     (i64.const 0)
     (i32.load offset=16
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#requireGet
       (i32.load offset=12
        (local.get $0)
       )
       (local.get $1)
      )
     )
    )
   )
  )
  (local.set $0
   (block $__inlined_func$assembly/orderbook/orderbook.contract/orderbook#getBestAskPrice (result i32)
    (if
     (i32.gt_s
      (i32.load offset=12
       (local.tee $6
        (call $assembly/orderbook/orderbook.contract/orderbook#getBestSellOrders
         (local.get $0)
         (local.get $1)
         (i32.const 1)
        )
       )
      )
      (i32.const 0)
     )
     (br $__inlined_func$assembly/orderbook/orderbook.contract/orderbook#getBestAskPrice
      (i32.load offset=28
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (local.get $6)
        (i32.const 0)
       )
      )
     )
    )
    (call $~lib/as-chain/asset/Asset#constructor
     (i64.const 0)
     (i32.load offset=16
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#requireGet
       (i32.load offset=12
        (local.get $0)
       )
       (local.get $1)
      )
     )
    )
   )
  )
  (if
   (if (result i32)
    (i64.gt_s
     (i64.load
      (local.get $3)
     )
     (i64.const 0)
    )
    (i64.gt_s
     (i64.load
      (local.get $0)
     )
     (i64.const 0)
    )
    (i32.const 0)
   )
   (return
    (call $~lib/as-chain/asset/Asset#constructor
     (i64.div_s
      (i64.add
       (i64.load
        (local.get $3)
       )
       (i64.load
        (local.get $0)
       )
      )
      (i64.const 2)
     )
     (i32.load offset=16
      (local.get $4)
     )
    )
   )
  )
  (call $~lib/as-chain/asset/Asset#constructor
   (i64.const 0)
   (i32.load offset=16
    (local.get $4)
   )
  )
 )
 (func $~lib/as-chain/bignum/integer/u128/u128#constructor (param $0 i64) (param $1 i64) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 67)
    )
   )
   (local.get $0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/as-chain/bignum/globals/__multi3 (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64) (result i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local.set $6
   (i64.mul
    (local.tee $4
     (i64.and
      (local.get $0)
      (i64.const 4294967295)
     )
    )
    (local.tee $5
     (i64.and
      (local.get $2)
      (i64.const 4294967295)
     )
    )
   )
  )
  (local.set $4
   (i64.add
    (i64.mul
     (local.get $4)
     (local.tee $7
      (i64.shr_u
       (local.get $2)
       (i64.const 32)
      )
     )
    )
    (i64.and
     (local.tee $5
      (i64.add
       (i64.mul
        (local.tee $8
         (i64.shr_u
          (local.get $0)
          (i64.const 32)
         )
        )
        (local.get $5)
       )
       (i64.shr_u
        (local.get $6)
        (i64.const 32)
       )
      )
     )
     (i64.const 4294967295)
    )
   )
  )
  (global.set $~lib/as-chain/bignum/globals/__res128_hi
   (i64.add
    (i64.add
     (i64.add
      (i64.add
       (i64.mul
        (local.get $7)
        (local.get $8)
       )
       (i64.shr_u
        (local.get $5)
        (i64.const 32)
       )
      )
      (i64.mul
       (local.get $1)
       (local.get $2)
      )
     )
     (i64.mul
      (local.get $0)
      (local.get $3)
     )
    )
    (i64.shr_u
     (local.get $4)
     (i64.const 32)
    )
   )
  )
  (i64.or
   (i64.and
    (local.get $6)
    (i64.const 4294967295)
   )
   (i64.shl
    (local.get $4)
    (i64.const 32)
   )
  )
 )
 (func $~lib/math/NativeMath.pow (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i64)
  (local $8 f64)
  (block $folding-inner4
   (block $folding-inner3
    (block $folding-inner2
     (block $folding-inner1
      (block $folding-inner0
       (if
        (f64.le
         (f64.abs
          (local.get $0)
         )
         (f64.const 2)
        )
        (block
         (br_if $folding-inner0
          (f64.eq
           (local.get $0)
           (f64.const 2)
          )
         )
         (if
          (f64.eq
           (local.get $0)
           (f64.const 0.5)
          )
          (return
           (f64.const 3.1622776601683795)
          )
         )
         (br_if $folding-inner1
          (f64.eq
           (local.get $0)
           (f64.const -1)
          )
         )
         (if
          (f64.eq
           (local.get $0)
           (f64.const 1)
          )
          (return
           (f64.const 10)
          )
         )
         (if
          (f64.eq
           (local.get $0)
           (f64.const 0)
          )
          (return
           (f64.const 1)
          )
         )
        )
       )
       (if
        (i32.eqz
         (i32.or
          (local.tee $2
           (i32.and
            (local.tee $4
             (i32.wrap_i64
              (i64.shr_u
               (local.tee $7
                (i64.reinterpret_f64
                 (local.get $0)
                )
               )
               (i64.const 32)
              )
             )
            )
            (i32.const 2147483647)
           )
          )
          (local.tee $1
           (i32.wrap_i64
            (local.get $7)
           )
          )
         )
        )
        (return
         (f64.const 1)
        )
       )
       (if
        (select
         (i32.const 1)
         (select
          (local.get $1)
          (i32.const 0)
          (i32.eq
           (local.get $2)
           (i32.const 2146435072)
          )
         )
         (i32.gt_u
          (local.get $2)
          (i32.const 2146435072)
         )
        )
        (return
         (f64.add
          (local.get $0)
          (f64.const 10)
         )
        )
       )
       (if
        (i32.eqz
         (local.get $1)
        )
        (block
         (if
          (i32.eq
           (local.get $2)
           (i32.const 2146435072)
          )
          (return
           (select
            (local.get $0)
            (f64.const 0)
            (i32.ge_s
             (local.get $4)
             (i32.const 0)
            )
           )
          )
         )
         (if
          (i32.eq
           (local.get $2)
           (i32.const 1072693248)
          )
          (block
           (if
            (i32.ge_s
             (local.get $4)
             (i32.const 0)
            )
            (return
             (f64.const 10)
            )
           )
           (br $folding-inner1)
          )
         )
         (br_if $folding-inner0
          (i32.eq
           (local.get $4)
           (i32.const 1073741824)
          )
         )
         (if
          (i32.eq
           (local.get $4)
           (i32.const 1071644672)
          )
          (return
           (f64.const 3.1622776601683795)
          )
         )
        )
       )
       (br_if $folding-inner4
        (i32.gt_u
         (local.get $2)
         (i32.const 1105199104)
        )
       )
       (local.set $1
        (i32.wrap_i64
         (local.tee $7
          (i64.reinterpret_f64
           (local.tee $5
            (f64.add
             (local.tee $3
              (f64.add
               (f64.mul
                (f64.sub
                 (local.get $0)
                 (local.tee $5
                  (f64.reinterpret_i64
                   (i64.and
                    (i64.reinterpret_f64
                     (local.get $0)
                    )
                    (i64.const -4294967296)
                   )
                  )
                 )
                )
                (f64.const 3.321928024291992)
               )
               (f64.mul
                (local.get $0)
                (f64.const 7.05953701603694e-08)
               )
              )
             )
             (local.tee $0
              (f64.mul
               (local.get $5)
               (f64.const 3.321928024291992)
              )
             )
            )
           )
          )
         )
        )
       )
       (if
        (i32.ge_s
         (local.tee $6
          (i32.wrap_i64
           (i64.shr_u
            (local.get $7)
            (i64.const 32)
           )
          )
         )
         (i32.const 1083179008)
        )
        (br_if $folding-inner2
         (i32.or
          (i32.or
           (local.get $1)
           (i32.sub
            (local.get $6)
            (i32.const 1083179008)
           )
          )
          (f64.gt
           (f64.add
            (local.get $3)
            (f64.const 8.008566259537294e-17)
           )
           (f64.sub
            (local.get $5)
            (local.get $0)
           )
          )
         )
        )
        (br_if $folding-inner3
         (select
          (i32.ge_u
           (i32.and
            (local.get $6)
            (i32.const 2147483647)
           )
           (i32.const 1083231232)
          )
          (i32.const 0)
          (i32.or
           (i32.or
            (local.get $1)
            (i32.add
             (local.get $6)
             (i32.const 1064252416)
            )
           )
           (f64.le
            (local.get $3)
            (f64.sub
             (local.get $5)
             (local.get $0)
            )
           )
          )
         )
        )
       )
       (local.set $2
        (i32.sub
         (i32.shr_u
          (local.tee $4
           (i32.and
            (local.get $6)
            (i32.const 2147483647)
           )
          )
          (i32.const 20)
         )
         (i32.const 1023)
        )
       )
       (local.set $1
        (i32.const 0)
       )
       (local.set $0
        (f64.mul
         (local.tee $3
          (f64.add
           (local.tee $8
            (f64.mul
             (local.tee $5
              (f64.reinterpret_i64
               (i64.and
                (i64.reinterpret_f64
                 (f64.add
                  (local.get $3)
                  (block (result f64)
                   (if
                    (i32.gt_s
                     (local.get $4)
                     (i32.const 1071644672)
                    )
                    (local.set $0
                     (block (result f64)
                      (local.set $2
                       (i32.sub
                        (i32.shr_u
                         (i32.and
                          (local.tee $4
                           (i32.add
                            (local.get $6)
                            (i32.shr_s
                             (i32.const 1048576)
                             (i32.add
                              (local.get $2)
                              (i32.const 1)
                             )
                            )
                           )
                          )
                          (i32.const 2147483647)
                         )
                         (i32.const 20)
                        )
                        (i32.const 1023)
                       )
                      )
                      (local.set $1
                       (select
                        (i32.sub
                         (i32.const 0)
                         (local.tee $1
                          (i32.shr_s
                           (i32.or
                            (i32.and
                             (local.get $4)
                             (i32.const 1048575)
                            )
                            (i32.const 1048576)
                           )
                           (i32.sub
                            (i32.const 20)
                            (local.get $2)
                           )
                          )
                         )
                        )
                        (local.get $1)
                        (i32.lt_s
                         (local.get $6)
                         (i32.const 0)
                        )
                       )
                      )
                      (f64.sub
                       (local.get $0)
                       (f64.reinterpret_i64
                        (i64.shl
                         (i64.extend_i32_s
                          (i32.and
                           (local.get $4)
                           (i32.xor
                            (i32.shr_s
                             (i32.const 1048575)
                             (local.get $2)
                            )
                            (i32.const -1)
                           )
                          )
                         )
                         (i64.const 32)
                        )
                       )
                      )
                     )
                    )
                   )
                   (local.get $0)
                  )
                 )
                )
                (i64.const -4294967296)
               )
              )
             )
             (f64.const 0.6931471824645996)
            )
           )
           (local.tee $5
            (f64.add
             (f64.mul
              (f64.sub
               (local.get $3)
               (f64.sub
                (local.get $5)
                (local.get $0)
               )
              )
              (f64.const 0.6931471805599453)
             )
             (f64.mul
              (local.get $5)
              (f64.const -1.904654299957768e-09)
             )
            )
           )
          )
         )
         (local.get $3)
        )
       )
       (return
        (if (result f64)
         (i32.le_s
          (i32.shr_s
           (local.tee $2
            (i32.add
             (i32.wrap_i64
              (i64.shr_u
               (i64.reinterpret_f64
                (local.tee $0
                 (f64.sub
                  (f64.const 1)
                  (f64.sub
                   (f64.sub
                    (f64.div
                     (f64.mul
                      (local.get $3)
                      (local.tee $0
                       (f64.sub
                        (local.get $3)
                        (f64.mul
                         (local.get $0)
                         (f64.add
                          (f64.mul
                           (local.get $0)
                           (f64.add
                            (f64.mul
                             (local.get $0)
                             (f64.add
                              (f64.mul
                               (local.get $0)
                               (f64.add
                                (f64.mul
                                 (local.get $0)
                                 (f64.const 4.1381367970572385e-08)
                                )
                                (f64.const -1.6533902205465252e-06)
                               )
                              )
                              (f64.const 6.613756321437934e-05)
                             )
                            )
                            (f64.const -2.7777777777015593e-03)
                           )
                          )
                          (f64.const 0.16666666666666602)
                         )
                        )
                       )
                      )
                     )
                     (f64.sub
                      (local.get $0)
                      (f64.const 2)
                     )
                    )
                    (f64.add
                     (local.tee $0
                      (f64.sub
                       (local.get $5)
                       (f64.sub
                        (local.get $3)
                        (local.get $8)
                       )
                      )
                     )
                     (f64.mul
                      (local.get $3)
                      (local.get $0)
                     )
                    )
                   )
                   (local.get $3)
                  )
                 )
                )
               )
               (i64.const 32)
              )
             )
             (i32.shl
              (local.get $1)
              (i32.const 20)
             )
            )
           )
           (i32.const 20)
          )
          (i32.const 0)
         )
         (f64.mul
          (if (result f64)
           (i32.gt_s
            (local.get $1)
            (i32.const 1023)
           )
           (block (result f64)
            (local.set $0
             (f64.mul
              (local.get $0)
              (f64.const 8988465674311579538646525e283)
             )
            )
            (if (result f64)
             (i32.gt_s
              (local.tee $1
               (i32.sub
                (local.get $1)
                (i32.const 1023)
               )
              )
              (i32.const 1023)
             )
             (block (result f64)
              (local.set $1
               (select
                (local.tee $1
                 (i32.sub
                  (local.get $1)
                  (i32.const 1023)
                 )
                )
                (i32.const 1023)
                (i32.lt_s
                 (local.get $1)
                 (i32.const 1023)
                )
               )
              )
              (f64.mul
               (local.get $0)
               (f64.const 8988465674311579538646525e283)
              )
             )
             (local.get $0)
            )
           )
           (if (result f64)
            (i32.lt_s
             (local.get $1)
             (i32.const -1022)
            )
            (block (result f64)
             (local.set $0
              (f64.mul
               (local.get $0)
               (f64.const 2.004168360008973e-292)
              )
             )
             (if (result f64)
              (i32.lt_s
               (local.tee $1
                (i32.add
                 (local.get $1)
                 (i32.const 969)
                )
               )
               (i32.const -1022)
              )
              (block (result f64)
               (local.set $1
                (select
                 (local.tee $1
                  (i32.add
                   (local.get $1)
                   (i32.const 969)
                  )
                 )
                 (i32.const -1022)
                 (i32.gt_s
                  (local.get $1)
                  (i32.const -1022)
                 )
                )
               )
               (f64.mul
                (local.get $0)
                (f64.const 2.004168360008973e-292)
               )
              )
              (local.get $0)
             )
            )
            (local.get $0)
           )
          )
          (f64.reinterpret_i64
           (i64.shl
            (i64.add
             (i64.extend_i32_s
              (local.get $1)
             )
             (i64.const 1023)
            )
            (i64.const 52)
           )
          )
         )
         (f64.reinterpret_i64
          (i64.or
           (i64.and
            (i64.reinterpret_f64
             (local.get $0)
            )
            (i64.const 4294967295)
           )
           (i64.shl
            (i64.extend_i32_s
             (local.get $2)
            )
            (i64.const 32)
           )
          )
         )
        )
       )
      )
      (return
       (f64.const 100)
      )
     )
     (return
      (f64.const 0.1)
     )
    )
    (return
     (f64.const inf)
    )
   )
   (return
    (f64.const 0)
   )
  )
  (select
   (f64.const inf)
   (f64.const 0)
   (i32.gt_s
    (local.get $4)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/bignum/globals/__udivmod128core (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64) (result i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local.set $5
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (local.get $0)
    (local.get $1)
   )
  )
  (local.set $8
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.and
     (local.tee $1
      (i64.shl
       (local.tee $6
        (i64.load
         (local.tee $10
          (call $~lib/as-chain/bignum/integer/u128/u128#constructor
           (local.get $2)
           (local.get $3)
          )
         )
        )
       )
       (local.tee $2
        (i64.and
         (local.tee $3
          (i64.extend_i32_s
           (local.tee $11
            (i32.and
             (i32.sub
              (local.tee $12
               (i32.add
                (i32.wrap_i64
                 (i64.clz
                  (i64.or
                   (i64.and
                    (local.get $3)
                    (i64.xor
                     (local.tee $3
                      (i64.shr_s
                       (i64.xor
                        (local.get $3)
                        (i64.sub
                         (local.get $3)
                         (i64.const 1)
                        )
                       )
                       (i64.const 63)
                      )
                     )
                     (i64.const -1)
                    )
                   )
                   (i64.and
                    (local.get $2)
                    (local.get $3)
                   )
                  )
                 )
                )
                (i32.and
                 (i32.wrap_i64
                  (local.get $3)
                 )
                 (i32.const 64)
                )
               )
              )
              (local.tee $14
               (i32.add
                (i32.wrap_i64
                 (i64.clz
                  (i64.or
                   (i64.and
                    (local.get $1)
                    (i64.xor
                     (local.tee $1
                      (i64.shr_s
                       (i64.xor
                        (local.get $1)
                        (i64.sub
                         (local.get $1)
                         (i64.const 1)
                        )
                       )
                       (i64.const 63)
                      )
                     )
                     (i64.const -1)
                    )
                   )
                   (i64.and
                    (local.get $0)
                    (local.get $1)
                   )
                  )
                 )
                )
                (i32.and
                 (i32.wrap_i64
                  (local.get $1)
                 )
                 (i32.const 64)
                )
               )
              )
             )
             (i32.const 127)
            )
           )
          )
         )
         (i64.const 63)
        )
       )
      )
     )
     (local.tee $0
      (i64.sub
       (i64.shr_u
        (local.get $3)
        (i64.const 6)
       )
       (i64.const 1)
      )
     )
    )
    (i64.or
     (i64.and
      (local.get $1)
      (i64.xor
       (local.get $0)
       (i64.const -1)
      )
     )
     (i64.and
      (local.get $0)
      (i64.or
       (i64.and
        (i64.sub
         (i64.shr_u
          (i64.and
           (i64.or
            (local.get $3)
            (i64.add
             (local.get $3)
             (i64.const 127)
            )
           )
           (i64.const 64)
          )
          (i64.const 6)
         )
         (i64.const 1)
        )
        (i64.shr_u
         (local.get $6)
         (i64.sub
          (i64.const 64)
          (local.get $2)
         )
        )
       )
       (i64.shl
        (i64.load offset=8
         (local.get $10)
        )
        (local.get $2)
       )
      )
     )
    )
   )
  )
  (local.set $7
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.const 0)
    (i64.const 0)
   )
  )
  (drop
   (i32.load
    (i32.sub
     (local.get $5)
     (i32.const 8)
    )
   )
  )
  (local.set $4
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.load
     (local.get $5)
    )
    (i64.load offset=8
     (local.get $5)
    )
   )
  )
  (drop
   (i32.load
    (i32.sub
     (local.tee $5
      (call $~lib/as-chain/bignum/integer/u128/u128#constructor
       (i64.and
        (local.tee $2
         (i64.shl
          (local.tee $0
           (i64.load
            (local.tee $5
             (call $~lib/as-chain/bignum/integer/u128/u128#constructor
              (i64.const 1)
              (i64.const 0)
             )
            )
           )
          )
          (local.tee $3
           (i64.and
            (local.tee $6
             (i64.extend_i32_s
              (i32.and
               (i32.sub
                (i32.const 128)
                (local.get $12)
               )
               (i32.const 127)
              )
             )
            )
            (i64.const 63)
           )
          )
         )
        )
        (local.tee $1
         (i64.sub
          (i64.shr_u
           (local.get $6)
           (i64.const 6)
          )
          (i64.const 1)
         )
        )
       )
       (i64.or
        (i64.and
         (local.get $2)
         (i64.xor
          (local.get $1)
          (i64.const -1)
         )
        )
        (i64.and
         (local.get $1)
         (i64.or
          (i64.and
           (i64.sub
            (i64.shr_u
             (i64.and
              (i64.or
               (local.get $6)
               (i64.add
                (local.get $6)
                (i64.const 127)
               )
              )
              (i64.const 64)
             )
             (i64.const 6)
            )
            (i64.const 1)
           )
           (i64.shr_u
            (local.get $0)
            (i64.sub
             (i64.const 64)
             (local.get $3)
            )
           )
          )
          (i64.shl
           (i64.load offset=8
            (local.get $5)
           )
           (local.get $3)
          )
         )
        )
       )
      )
     )
     (i32.const 8)
    )
   )
  )
  (local.set $1
   (i64.sub
    (local.tee $0
     (i64.load
      (local.get $5)
     )
    )
    (i64.const 1)
   )
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $5)
   (i64.sub
    (i64.load offset=8
     (local.get $5)
    )
    (i64.extend_i32_u
     (i64.lt_u
      (local.get $0)
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $5)
   (local.get $1)
  )
  (local.set $9
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.and
     (local.tee $2
      (i64.shl
       (local.tee $0
        (i64.load
         (local.get $5)
        )
       )
       (local.tee $3
        (i64.and
         (local.tee $6
          (i64.extend_i32_s
           (local.get $11)
          )
         )
         (i64.const 63)
        )
       )
      )
     )
     (local.tee $1
      (i64.sub
       (i64.shr_u
        (local.get $6)
        (i64.const 6)
       )
       (i64.const 1)
      )
     )
    )
    (i64.or
     (i64.and
      (local.get $2)
      (i64.xor
       (local.get $1)
       (i64.const -1)
      )
     )
     (i64.and
      (local.get $1)
      (i64.or
       (i64.and
        (i64.sub
         (i64.shr_u
          (i64.and
           (i64.or
            (local.get $6)
            (i64.add
             (local.get $6)
             (i64.const 127)
            )
           )
           (i64.const 64)
          )
          (i64.const 6)
         )
         (i64.const 1)
        )
        (i64.shr_u
         (local.get $0)
         (i64.sub
          (i64.const 64)
          (local.get $3)
         )
        )
       )
       (i64.shl
        (i64.load offset=8
         (local.get $5)
        )
        (local.get $3)
       )
      )
     )
    )
   )
  )
  (loop $while-continue|0
   (if
    (i32.eqz
     (if (result i32)
      (i64.eq
       (local.tee $1
        (i64.load offset=8
         (local.get $4)
        )
       )
       (local.tee $0
        (i64.load offset=8
         (local.get $10)
        )
       )
      )
      (i64.lt_u
       (i64.load
        (local.get $4)
       )
       (i64.load
        (local.get $10)
       )
      )
      (i64.gt_u
       (local.get $0)
       (local.get $1)
      )
     )
    )
    (block
     (local.set $13
      (i32.add
       (local.get $13)
       (i32.const 1)
      )
     )
     (local.set $7
      (call $~lib/as-chain/bignum/integer/u128/u128#constructor
       (i64.shl
        (local.tee $0
         (i64.load
          (local.get $7)
         )
        )
        (i64.const 1)
       )
       (i64.or
        (i64.shl
         (i64.load offset=8
          (local.get $7)
         )
         (i64.const 1)
        )
        (i64.shr_u
         (local.get $0)
         (i64.const 63)
        )
       )
      )
     )
     (local.set $5
      (local.tee $11
       (call $~lib/as-chain/bignum/integer/u128/u128#constructor
        (i64.and
         (i64.load
          (local.get $4)
         )
         (i64.load
          (local.get $9)
         )
        )
        (i64.and
         (i64.load offset=8
          (local.get $4)
         )
         (i64.load offset=8
          (local.get $9)
         )
        )
       )
      )
     )
     (if
      (i32.eqz
       (if (result i32)
        (i64.eq
         (local.tee $1
          (i64.load offset=8
           (local.get $11)
          )
         )
         (local.tee $0
          (i64.load offset=8
           (local.get $8)
          )
         )
        )
        (i64.lt_u
         (i64.load
          (local.get $5)
         )
         (i64.load
          (local.get $8)
         )
        )
        (i64.gt_u
         (local.get $0)
         (local.get $1)
        )
       )
      )
      (local.set $4
       (block (result i32)
        (drop
         (i32.load
          (i32.sub
           (local.get $7)
           (i32.const 8)
          )
         )
        )
        (local.set $1
         (i64.add
          (local.tee $0
           (i64.load
            (local.get $7)
           )
          )
          (i64.const 1)
         )
        )
        (call $~lib/as-chain/idxdb/IDXDB#set:scope
         (local.get $7)
         (i64.add
          (i64.load offset=8
           (local.get $7)
          )
          (i64.extend_i32_u
           (i64.gt_u
            (local.get $0)
            (local.get $1)
           )
          )
         )
        )
        (call $~lib/as-chain/name/Name#set:N
         (local.get $7)
         (local.get $1)
        )
        (call $~lib/as-chain/bignum/integer/u128/u128#constructor
         (local.tee $0
          (i64.sub
           (local.tee $1
            (i64.load
             (local.get $4)
            )
           )
           (i64.load
            (local.get $8)
           )
          )
         )
         (i64.sub
          (i64.sub
           (i64.load offset=8
            (local.get $4)
           )
           (i64.load offset=8
            (local.get $8)
           )
          )
          (i64.extend_i32_u
           (i64.gt_u
            (local.get $0)
            (local.get $1)
           )
          )
         )
        )
       )
      )
     )
     (local.set $0
      (i64.shr_u
       (local.tee $1
        (i64.load offset=8
         (local.get $9)
        )
       )
       (i64.const 1)
      )
     )
     (local.set $5
      (call $~lib/as-chain/bignum/integer/u128/u128#constructor
       (i64.or
        (i64.shl
         (local.get $1)
         (i64.const 63)
        )
        (i64.shr_u
         (i64.load
          (local.get $9)
         )
         (i64.const 1)
        )
       )
       (local.get $0)
      )
     )
     (local.set $9
      (call $~lib/as-chain/bignum/integer/u128/u128#constructor
       (i64.or
        (i64.load
         (local.get $9)
        )
        (i64.load
         (local.get $5)
        )
       )
       (i64.or
        (i64.load offset=8
         (local.get $9)
        )
        (i64.load offset=8
         (local.get $5)
        )
       )
      )
     )
     (local.set $0
      (i64.shr_u
       (local.tee $1
        (i64.load offset=8
         (local.get $8)
        )
       )
       (i64.const 1)
      )
     )
     (local.set $8
      (call $~lib/as-chain/bignum/integer/u128/u128#constructor
       (i64.or
        (i64.shl
         (local.get $1)
         (i64.const 63)
        )
        (i64.shr_u
         (i64.load
          (local.get $8)
         )
         (i64.const 1)
        )
       )
       (local.get $0)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (global.set $~lib/as-chain/bignum/globals/__divmod_quot_hi
   (i64.load offset=8
    (local.tee $5
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (i64.and
       (local.tee $2
        (i64.shl
         (local.tee $0
          (i64.load
           (local.get $7)
          )
         )
         (local.tee $3
          (i64.and
           (local.tee $6
            (i64.extend_i32_s
             (i32.and
              (i32.add
               (i32.sub
                (i32.sub
                 (local.get $12)
                 (local.get $14)
                )
                (local.get $13)
               )
               (i32.const 1)
              )
              (i32.const 127)
             )
            )
           )
           (i64.const 63)
          )
         )
        )
       )
       (local.tee $1
        (i64.sub
         (i64.shr_u
          (local.get $6)
          (i64.const 6)
         )
         (i64.const 1)
        )
       )
      )
      (i64.or
       (i64.and
        (local.get $2)
        (i64.xor
         (local.get $1)
         (i64.const -1)
        )
       )
       (i64.and
        (local.get $1)
        (i64.or
         (i64.and
          (i64.sub
           (i64.shr_u
            (i64.and
             (i64.or
              (local.get $6)
              (i64.add
               (local.get $6)
               (i64.const 127)
              )
             )
             (i64.const 64)
            )
            (i64.const 6)
           )
           (i64.const 1)
          )
          (i64.shr_u
           (local.get $0)
           (i64.sub
            (i64.const 64)
            (local.get $3)
           )
          )
         )
         (i64.shl
          (i64.load offset=8
           (local.get $7)
          )
          (local.get $3)
         )
        )
       )
      )
     )
    )
   )
  )
  (global.set $~lib/as-chain/bignum/globals/__divmod_rem_lo
   (i64.load
    (local.get $4)
   )
  )
  (global.set $~lib/as-chain/bignum/globals/__divmod_rem_hi
   (i64.load offset=8
    (local.get $4)
   )
  )
  (i64.load
   (local.get $5)
  )
 )
 (func $~lib/as-chain/bignum/globals/__udivmod128 (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i64) (result i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.eq
    (local.tee $5
     (i32.add
      (i32.wrap_i64
       (i64.clz
        (i64.or
         (i64.and
          (local.get $3)
          (i64.xor
           (local.tee $4
            (i64.shr_s
             (i64.xor
              (local.get $3)
              (i64.sub
               (local.get $3)
               (i64.const 1)
              )
             )
             (i64.const 63)
            )
           )
           (i64.const -1)
          )
         )
         (i64.and
          (local.get $2)
          (local.get $4)
         )
        )
       )
      )
      (i32.and
       (i32.wrap_i64
        (local.get $4)
       )
       (i32.const 64)
      )
     )
    )
    (i32.const 128)
   )
   (unreachable)
  )
  (local.set $6
   (i32.add
    (i32.wrap_i64
     (i64.ctz
      (i64.or
       (i64.and
        (local.get $3)
        (local.tee $4
         (i64.shr_s
          (i64.xor
           (local.get $2)
           (i64.sub
            (local.get $2)
            (i64.const 1)
           )
          )
          (i64.const 63)
         )
        )
       )
       (i64.and
        (local.get $2)
        (i64.xor
         (local.get $4)
         (i64.const -1)
        )
       )
      )
     )
    )
    (i32.and
     (i32.wrap_i64
      (local.get $4)
     )
     (i32.const 64)
    )
   )
  )
  (if
   (i64.eqz
    (i64.or
     (local.get $0)
     (local.get $1)
    )
   )
   (block
    (global.set $~lib/as-chain/bignum/globals/__divmod_quot_hi
     (i64.const 0)
    )
    (global.set $~lib/as-chain/bignum/globals/__divmod_rem_lo
     (i64.const 0)
    )
    (global.set $~lib/as-chain/bignum/globals/__divmod_rem_hi
     (i64.const 0)
    )
    (return
     (i64.const 0)
    )
   )
  )
  (if
   (i32.eq
    (local.get $5)
    (i32.const 127)
   )
   (block
    (global.set $~lib/as-chain/bignum/globals/__divmod_quot_hi
     (local.get $1)
    )
    (global.set $~lib/as-chain/bignum/globals/__divmod_rem_lo
     (i64.const 0)
    )
    (global.set $~lib/as-chain/bignum/globals/__divmod_rem_hi
     (i64.const 0)
    )
    (return
     (local.get $0)
    )
   )
  )
  (if
   (select
    (i64.eq
     (local.get $1)
     (local.get $3)
    )
    (i32.const 0)
    (i64.eq
     (local.get $0)
     (local.get $2)
    )
   )
   (block
    (global.set $~lib/as-chain/bignum/globals/__divmod_quot_hi
     (i64.const 0)
    )
    (global.set $~lib/as-chain/bignum/globals/__divmod_rem_lo
     (i64.const 0)
    )
    (global.set $~lib/as-chain/bignum/globals/__divmod_rem_hi
     (i64.const 0)
    )
    (return
     (i64.const 1)
    )
   )
  )
  (if
   (i64.eqz
    (i64.or
     (local.get $1)
     (local.get $3)
    )
   )
   (block
    (global.set $~lib/as-chain/bignum/globals/__divmod_quot_hi
     (i64.const 0)
    )
    (global.set $~lib/as-chain/bignum/globals/__divmod_rem_hi
     (i64.const 0)
    )
    (if
     (i64.eqz
      (i64.and
       (local.get $2)
       (i64.sub
        (local.get $2)
        (i64.const 1)
       )
      )
     )
     (block
      (global.set $~lib/as-chain/bignum/globals/__divmod_rem_lo
       (i64.const 0)
      )
      (return
       (i64.shr_u
        (local.get $0)
        (i64.extend_i32_s
         (local.get $6)
        )
       )
      )
     )
     (block
      (global.set $~lib/as-chain/bignum/globals/__divmod_rem_lo
       (i64.sub
        (local.get $0)
        (i64.mul
         (local.get $2)
         (local.tee $0
          (i64.div_u
           (local.get $0)
           (local.get $2)
          )
         )
        )
       )
      )
      (return
       (local.get $0)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/bignum/globals/__udivmod128core
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#calculateTotalValue (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $0)
    )
    (i64.const 0)
   )
   (i32.const 7200)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $1)
    )
    (i64.const 0)
   )
   (i32.const 7120)
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (i64.lt_s
     (i64.load
      (local.get $0)
     )
     (i64.const 10000000000)
    )
    (i64.lt_s
     (i64.load
      (local.get $1)
     )
     (i64.const 10000000000)
    )
    (i32.const 0)
   )
   (i32.const 8096)
  )
  (call $~lib/as-chain/system/check
   (i32.le_u
    (i32.and
     (local.tee $4
      (call $~lib/as-chain/asset/Symbol#precision
       (i32.load offset=8
        (local.get $2)
       )
      )
     )
     (i32.const 255)
    )
    (i32.const 18)
   )
   (i32.const 8192)
  )
  (local.set $0
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.load
     (local.get $0)
    )
    (i64.const 0)
   )
  )
  (local.set $1
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.load
     (local.get $1)
    )
    (i64.const 0)
   )
  )
  (local.set $0
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (call $~lib/as-chain/bignum/globals/__multi3
     (i64.load
      (local.get $0)
     )
     (i64.load offset=8
      (local.get $0)
     )
     (i64.load
      (local.get $1)
     )
     (i64.load offset=8
      (local.get $1)
     )
    )
    (global.get $~lib/as-chain/bignum/globals/__res128_hi)
   )
  )
  (local.set $1
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.trunc_f64_u
     (call $~lib/math/NativeMath.pow
      (f64.convert_i32_u
       (local.get $4)
      )
     )
    )
    (i64.const 0)
   )
  )
  (local.set $0
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (call $~lib/as-chain/bignum/globals/__udivmod128
     (i64.load
      (local.get $0)
     )
     (i64.load offset=8
      (local.get $0)
     )
     (i64.load
      (local.get $1)
     )
     (i64.load offset=8
      (local.get $1)
     )
    )
    (global.get $~lib/as-chain/bignum/globals/__divmod_quot_hi)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (if (result i32)
     (i64.eq
      (local.tee $3
       (i64.load offset=8
        (local.tee $1
         (call $~lib/as-chain/bignum/integer/u128/u128#constructor
          (i64.const -1)
          (i64.const 0)
         )
        )
       )
      )
      (local.tee $5
       (i64.load offset=8
        (local.get $0)
       )
      )
     )
     (i64.gt_u
      (i64.load
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
     )
     (i64.lt_u
      (local.get $3)
      (local.get $5)
     )
    )
   )
   (i32.const 8256)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (local.tee $3
     (i64.load
      (local.get $0)
     )
    )
    (i64.const 0)
   )
   (i32.const 8304)
  )
  (call $~lib/as-chain/asset/Asset#constructor
   (local.get $3)
   (i32.load offset=16
    (local.get $2)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#requireGet (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/balances.table/BalancesTable>#find
      (i32.load
       (local.get $0)
      )
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/balances.table/BalancesTable>#get (result i32)
   (if
    (local.tee $0
     (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/balances.table/BalancesTable>#get
      (i32.load
       (i32.load
        (local.get $0)
       )
      )
      (local.get $3)
     )
    )
    (br $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/balances.table/BalancesTable>#get
     (local.get $0)
    )
   )
   (global.set $~argumentsLength
    (i32.const 0)
   )
   (call $assembly/orderbook/tables/balances.table/BalancesTable#constructor@varargs
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#lockBalance (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local.set $7
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
    (i32.load
     (local.get $0)
    )
    (local.get $1)
   )
  )
  (block
   (if
    (call $~lib/string/String.__eq
     (local.get $2)
     (i32.const 7008)
    )
    (block
     (call $~lib/as-chain/system/check
      (i64.ge_s
       (i64.load
        (i32.load offset=4
         (local.tee $1
          (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#requireGet
           (local.get $7)
           (call $~lib/as-chain/asset/Symbol#code
            (i32.load offset=16
             (local.get $5)
            )
           )
           (i32.const 8384)
          )
         )
        )
       )
       (i64.load
        (local.get $4)
       )
      )
      (i32.const 8464)
     )
     (call $~lib/as-chain/system/check
      (i64.eq
       (i64.load
        (i32.load offset=8
         (local.tee $2
          (i32.load offset=4
           (local.get $1)
          )
         )
        )
       )
       (i64.load
        (i32.load offset=8
         (local.get $4)
        )
       )
      )
      (i32.const 6672)
     )
     (call $~lib/as-chain/system/check
      (i64.ge_s
       (local.tee $6
        (i64.sub
         (i64.load
          (local.get $2)
         )
         (i64.load
          (local.get $4)
         )
        )
       )
       (i64.const -4611686018427387903)
      )
      (i32.const 8528)
     )
     (call $~lib/as-chain/system/check
      (i64.le_s
       (local.get $6)
       (i64.const 4611686018427387903)
      )
      (i32.const 8592)
     )
     (call $~lib/rt/common/OBJECT#set:gcInfo
      (local.get $1)
      (call $~lib/as-chain/asset/Asset#constructor
       (local.get $6)
       (call $~lib/as-chain/asset/Symbol.fromU64
        (i64.load
         (i32.load offset=8
          (local.get $2)
         )
        )
       )
      )
     )
     (call $~lib/as-chain/system/check
      (i64.eq
       (i64.load
        (i32.load offset=8
         (local.tee $2
          (i32.load offset=8
           (local.get $1)
          )
         )
        )
       )
       (i64.load
        (i32.load offset=8
         (local.get $4)
        )
       )
      )
      (i32.const 6672)
     )
     (call $~lib/as-chain/system/check
      (i64.ge_s
       (local.tee $6
        (i64.add
         (i64.load
          (local.get $2)
         )
         (i64.load
          (local.get $4)
         )
        )
       )
       (i64.const -4611686018427387903)
      )
      (i32.const 6736)
     )
    )
    (block
     (call $~lib/as-chain/system/check
      (i64.ge_s
       (i64.load
        (i32.load offset=4
         (local.tee $1
          (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#requireGet
           (local.get $7)
           (call $~lib/as-chain/asset/Symbol#code
            (i32.load offset=8
             (local.get $5)
            )
           )
           (i32.const 8656)
          )
         )
        )
       )
       (i64.load
        (local.get $3)
       )
      )
      (i32.const 8464)
     )
     (call $~lib/as-chain/system/check
      (i64.eq
       (i64.load
        (i32.load offset=8
         (local.tee $2
          (i32.load offset=4
           (local.get $1)
          )
         )
        )
       )
       (i64.load
        (i32.load offset=8
         (local.get $3)
        )
       )
      )
      (i32.const 6672)
     )
     (call $~lib/as-chain/system/check
      (i64.ge_s
       (local.tee $6
        (i64.sub
         (i64.load
          (local.get $2)
         )
         (i64.load
          (local.get $3)
         )
        )
       )
       (i64.const -4611686018427387903)
      )
      (i32.const 8528)
     )
     (call $~lib/as-chain/system/check
      (i64.le_s
       (local.get $6)
       (i64.const 4611686018427387903)
      )
      (i32.const 8592)
     )
     (call $~lib/rt/common/OBJECT#set:gcInfo
      (local.get $1)
      (call $~lib/as-chain/asset/Asset#constructor
       (local.get $6)
       (call $~lib/as-chain/asset/Symbol.fromU64
        (i64.load
         (i32.load offset=8
          (local.get $2)
         )
        )
       )
      )
     )
     (call $~lib/as-chain/system/check
      (i64.eq
       (i64.load
        (i32.load offset=8
         (local.tee $2
          (i32.load offset=8
           (local.get $1)
          )
         )
        )
       )
       (i64.load
        (i32.load offset=8
         (local.get $3)
        )
       )
      )
      (i32.const 6672)
     )
     (call $~lib/as-chain/system/check
      (i64.ge_s
       (local.tee $6
        (i64.add
         (i64.load
          (local.get $2)
         )
         (i64.load
          (local.get $3)
         )
        )
       )
       (i64.const -4611686018427387903)
      )
      (i32.const 6736)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i64.le_s
     (local.get $6)
     (i64.const 4611686018427387903)
    )
    (i32.const 6800)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (call $~lib/as-chain/asset/Asset#constructor
    (local.get $6)
    (call $~lib/as-chain/asset/Symbol.fromU64
     (i64.load
      (i32.load offset=8
       (local.get $2)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $1)
   (i64.extend_i32_u
    (call $~lib/as-chain/system/currentTimeSec)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#update
   (local.get $7)
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/orders.table/OrdersTable>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_end_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/orders.table/OrdersTable>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/orders.table/OrdersTable>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (local.tee $0
    (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/orders.table/OrdersTable>#get
     (i32.load
      (local.get $0)
     )
     (local.get $1)
    )
   )
   (return
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#constructor@varargs
   (global.get $~lib/as-chain/name/EMPTY_NAME)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#get:availablePrimaryKey (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (if
   (i64.eq
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -1)
   )
   (if
    (i32.eq
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#begin
       (i32.load
        (local.get $0)
       )
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#end
       (i32.load
        (local.get $0)
       )
      )
     )
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $2
      (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#end
       (i32.load
        (local.get $0)
       )
      )
     )
     (local.set $3
      (i32.load
       (i32.load
        (local.get $0)
       )
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.set $1
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/orders.table/OrdersTable>#constructor
       (local.get $3)
       (call $~lib/as-chain/env/db_previous_i64
        (i32.load offset=4
         (local.get $2)
        )
        (local.get $1)
       )
       (i64.load
        (local.get $1)
       )
       (i32.const 1)
      )
     )
     (local.set $5
      (local.tee $4
       (i64.load
        (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#get
         (i32.load
          (local.get $0)
         )
         (local.get $1)
        )
       )
      )
     )
     (if
      (i64.ge_u
       (local.get $4)
       (i64.const -2)
      )
      (call $~lib/as-chain/idxdb/IDXDB#set:scope
       (local.get $0)
       (i64.const -2)
      )
      (call $~lib/as-chain/idxdb/IDXDB#set:scope
       (local.get $0)
       (i64.add
        (local.get $5)
        (i64.const 1)
       )
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.lt_u
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -2)
   )
   (i32.const 2160)
  )
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $assembly/orderbook/tables/orders.table/OrdersTable#pack (param $0 i32) (result i32)
  (local $1 i32)
  (drop
   (i32.load offset=16
    (local.get $0)
   )
  )
  (local.set $1
   (i32.add
    (call $~lib/as-chain/utils/Utils.calcPackedStringLength
     (i32.load offset=20
      (local.get $0)
     )
    )
    (call $~lib/as-chain/utils/Utils.calcPackedStringLength
     (i32.load offset=24
      (local.get $0)
     )
    )
   )
  )
  (drop
   (i32.load offset=28
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=32
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=36
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=40
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=44
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (local.get $1)
      (i32.const 122)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=20
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=28
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=36
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=44
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=48
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=49
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=56
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=64
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/idxdb/newSecondaryValue_U128 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (i64.store
   (local.tee $2
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u64>#constructor
       (i32.const 2)
      )
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (i64.store offset=8
   (local.get $2)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (i32.const 1)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/orders.table/OrdersTable#getSecondaryValue (param $0 i32) (param $1 i32) (result i32)
  (block $case6|0
   (block $case5|0
    (block $case4|0
     (block $case3|0
      (block $case2|0
       (block $case1|0
        (block $case0|0
         (br_table $case0|0 $case1|0 $case2|0 $case3|0 $case4|0 $case5|0 $case6|0
          (local.get $1)
         )
        )
        (return
         (call $~lib/as-chain/idxdb/newSecondaryValue_u64
          (i64.load
           (i32.load offset=16
            (local.get $0)
           )
          )
         )
        )
       )
       (return
        (call $~lib/as-chain/idxdb/newSecondaryValue_u64
         (i64.load offset=8
          (local.get $0)
         )
        )
       )
      )
      (return
       (call $~lib/as-chain/idxdb/newSecondaryValue_u64
        (i64.extend_i32_u
         (i32.load8_u offset=49
          (local.get $0)
         )
        )
       )
      )
     )
     (return
      (call $~lib/as-chain/idxdb/newSecondaryValue_u64
       (i64.load
        (i32.load offset=28
         (local.get $0)
        )
       )
      )
     )
    )
    (drop
     (i64.load offset=8
      (local.tee $1
       (call $~lib/as-chain/bignum/integer/u128/u128#constructor
        (i64.load offset=8
         (local.get $0)
        )
        (i64.const 0)
       )
      )
     )
    )
    (local.set $1
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (i64.const 0)
      (i64.load
       (local.get $1)
      )
     )
    )
    (local.set $0
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (i64.load
       (i32.load offset=28
        (local.get $0)
       )
      )
      (i64.const 0)
     )
    )
    (return
     (call $~lib/as-chain/idxdb/newSecondaryValue_U128
      (call $~lib/as-chain/bignum/integer/u128/u128#constructor
       (i64.or
        (i64.load
         (local.get $1)
        )
        (i64.load
         (local.get $0)
        )
       )
       (i64.or
        (i64.load offset=8
         (local.get $1)
        )
        (i64.load offset=8
         (local.get $0)
        )
       )
      )
     )
    )
   )
   (return
    (call $~lib/as-chain/idxdb/newSecondaryValue_u64
     (i64.load
      (i32.load offset=44
       (local.get $0)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/assert
   (i32.const 0)
   (i32.const 5760)
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (i32.const 0)
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#find
      (i32.load
       (local.get $0)
      )
      (local.tee $6
       (i64.load
        (local.get $1)
       )
      )
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $4
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $2)
   )
  )
  (local.set $7
   (i32.load
    (local.tee $5
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (local.set $10
   (i32.load offset=12
    (local.tee $9
     (call $assembly/orderbook/tables/orders.table/OrdersTable#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/orders.table/OrdersTable>#constructor
    (local.get $7)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $7)
     )
     (i64.load offset=16
      (local.get $7)
     )
     (local.get $8)
     (local.get $4)
     (i32.load offset=4
      (local.get $9)
     )
     (local.get $10)
    )
    (local.get $4)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $5)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $5)
       )
       (local.get $3)
      )
      (i64.load
       (local.get $1)
      )
      (call $assembly/orderbook/tables/orders.table/OrdersTable#getSecondaryValue
       (local.get $1)
       (local.get $3)
      )
      (i64.load
       (local.get $2)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $4
     (i64.load
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $5)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $5)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#LimitOrder (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.load8_u offset=12
     (call $assembly/orderbook/orderbook.contract/orderbook#getConfig
      (local.get $0)
     )
    )
   )
   (i32.const 6864)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/string/String.__eq
    (i32.load offset=40
     (local.tee $6
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#requireGet
       (i32.load offset=12
        (local.get $0)
       )
       (local.get $2)
      )
     )
    )
    (i32.const 5728)
   )
   (i32.const 6912)
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (call $~lib/string/String.__eq
     (local.get $3)
     (i32.const 7008)
    )
    (i32.const 1)
    (call $~lib/string/String.__eq
     (local.get $3)
     (i32.const 7040)
    )
   )
   (i32.const 7072)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $5)
    )
    (i64.const 0)
   )
   (i32.const 7120)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $4)
    )
    (i64.const 0)
   )
   (i32.const 7200)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $5)
     )
    )
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $6)
     )
    )
   )
   (i32.const 7264)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $4)
     )
    )
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=16
      (local.get $6)
     )
    )
   )
   (i32.const 7344)
  )
  (call $~lib/as-chain/system/check
   (i32.eq
    (i32.and
     (call $~lib/as-chain/asset/Symbol#precision
      (i32.load offset=8
       (local.get $5)
      )
     )
     (i32.const 255)
    )
    (i32.and
     (call $~lib/as-chain/asset/Symbol#precision
      (i32.load offset=8
       (local.get $6)
      )
     )
     (i32.const 255)
    )
   )
   (i32.const 7424)
  )
  (call $~lib/as-chain/system/check
   (i32.eq
    (i32.and
     (call $~lib/as-chain/asset/Symbol#precision
      (i32.load offset=8
       (local.get $4)
      )
     )
     (i32.const 255)
    )
    (i32.and
     (call $~lib/as-chain/asset/Symbol#precision
      (i32.load offset=16
       (local.get $6)
      )
     )
     (i32.const 255)
    )
   )
   (i32.const 7504)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (i64.load
     (local.get $5)
    )
    (i64.load
     (i32.load offset=24
      (local.get $6)
     )
    )
   )
   (i32.const 7584)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (i64.load
     (local.get $5)
    )
    (i64.load
     (i32.load offset=28
      (local.get $6)
     )
    )
   )
   (i32.const 7648)
  )
  (call $~lib/as-chain/system/check
   (i64.eqz
    (i64.rem_s
     (i64.load
      (local.get $4)
     )
     (i64.load
      (i32.load offset=32
       (local.get $6)
      )
     )
    )
   )
   (i32.const 7712)
  )
  (if
   (i32.eqz
    (i64.eqz
     (i64.load
      (local.tee $7
       (call $assembly/orderbook/orderbook.contract/orderbook#getCurrentMarketPrice
        (local.get $0)
        (local.get $2)
       )
      )
     )
    )
   )
   (block
    (local.set $8
     (i64.div_s
      (i64.mul
       (i64.load
        (local.get $7)
       )
       (i64.const 3)
      )
      (i64.const 2)
     )
    )
    (call $~lib/as-chain/system/check
     (if (result i32)
      (i64.ge_s
       (i64.load
        (local.get $4)
       )
       (i64.div_s
        (i64.shl
         (i64.load
          (local.get $7)
         )
         (i64.const 1)
        )
        (i64.const 3)
       )
      )
      (i64.ge_s
       (local.get $8)
       (i64.load
        (local.get $4)
       )
      )
      (i32.const 0)
     )
     (i32.const 7968)
    )
   )
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#lockBalance
   (local.get $0)
   (local.get $1)
   (local.get $3)
   (local.get $5)
   (call $assembly/orderbook/orderbook.contract/orderbook#calculateTotalValue
    (local.get $4)
    (local.get $5)
    (local.get $6)
   )
   (local.get $6)
  )
  (local.set $1
   (call $assembly/orderbook/tables/orders.table/OrdersTable#constructor
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#get:availablePrimaryKey
     (i32.load offset=16
      (local.get $0)
     )
    )
    (local.get $2)
    (local.get $1)
    (local.get $3)
    (i32.const 7840)
    (local.get $4)
    (local.get $5)
    (call $~lib/as-chain/asset/Asset#constructor
     (i64.const 0)
     (i32.load offset=8
      (local.get $5)
     )
    )
    (local.get $5)
    (call $~lib/as-chain/asset/Asset#constructor
     (i64.const 0)
     (i32.load offset=8
      (local.get $4)
     )
    )
    (i64.extend_i32_u
     (call $~lib/as-chain/system/currentTimeSec)
    )
    (i64.extend_i32_u
     (call $~lib/as-chain/system/currentTimeSec)
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#store
   (i32.load offset=16
    (local.get $0)
   )
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#lockBalanceMarket (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local.set $6
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
    (i32.load
     (local.get $0)
    )
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (i64.load
     (i32.load offset=4
      (local.tee $1
       (if (result i32)
        (call $~lib/string/String.__eq
         (local.get $2)
         (i32.const 7008)
        )
        (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#requireGet
         (local.get $6)
         (call $~lib/as-chain/asset/Symbol#code
          (i32.load offset=16
           (local.get $4)
          )
         )
         (i32.const 8384)
        )
        (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#requireGet
         (local.get $6)
         (call $~lib/as-chain/asset/Symbol#code
          (i32.load offset=8
           (local.get $4)
          )
         )
         (i32.const 8656)
        )
       )
      )
     )
    )
    (i64.load
     (local.get $3)
    )
   )
   (i32.const 8464)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.tee $2
       (i32.load offset=4
        (local.get $1)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $3)
     )
    )
   )
   (i32.const 6672)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $5
     (i64.sub
      (i64.load
       (local.get $2)
      )
      (i64.load
       (local.get $3)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 8528)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $5)
    (i64.const 4611686018427387903)
   )
   (i32.const 8592)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (call $~lib/as-chain/asset/Asset#constructor
    (local.get $5)
    (call $~lib/as-chain/asset/Symbol.fromU64
     (i64.load
      (i32.load offset=8
       (local.get $2)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.tee $2
       (i32.load offset=8
        (local.get $1)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $3)
     )
    )
   )
   (i32.const 6672)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $5
     (i64.add
      (i64.load
       (local.get $2)
      )
      (i64.load
       (local.get $3)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 6736)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $5)
    (i64.const 4611686018427387903)
   )
   (i32.const 6800)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (call $~lib/as-chain/asset/Asset#constructor
    (local.get $5)
    (call $~lib/as-chain/asset/Symbol.fromU64
     (i64.load
      (i32.load offset=8
       (local.get $2)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $1)
   (i64.extend_i32_u
    (call $~lib/as-chain/system/currentTimeSec)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#update
   (local.get $6)
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#calculateFee (param $0 i64) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (local.get $0)
    (i64.const 0)
   )
   (i32.const 9008)
  )
  (local.set $2
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (local.get $0)
    (i64.const 0)
   )
  )
  (local.set $1
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.extend_i32_u
     (i32.and
      (local.get $1)
      (i32.const 65535)
     )
    )
    (i64.const 0)
   )
  )
  (local.set $2
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (call $~lib/as-chain/bignum/globals/__multi3
     (i64.load
      (local.get $2)
     )
     (i64.load offset=8
      (local.get $2)
     )
     (i64.load
      (local.get $1)
     )
     (i64.load offset=8
      (local.get $1)
     )
    )
    (global.get $~lib/as-chain/bignum/globals/__res128_hi)
   )
  )
  (local.set $3
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.const 10000)
    (i64.const 0)
   )
  )
  (local.set $1
   (local.tee $5
    (call $~lib/as-chain/bignum/integer/u128/u128#constructor
     (call $~lib/as-chain/bignum/globals/__udivmod128
      (i64.load
       (local.get $2)
      )
      (i64.load offset=8
       (local.get $2)
      )
      (i64.load
       (local.get $3)
      )
      (i64.load offset=8
       (local.get $3)
      )
     )
     (global.get $~lib/as-chain/bignum/globals/__divmod_quot_hi)
    )
   )
  )
  (drop
   (call $~lib/as-chain/bignum/globals/__udivmod128
    (i64.load
     (local.get $2)
    )
    (i64.load offset=8
     (local.get $2)
    )
    (i64.load
     (local.get $3)
    )
    (i64.load offset=8
     (local.get $3)
    )
   )
  )
  (local.set $2
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (global.get $~lib/as-chain/bignum/globals/__divmod_rem_lo)
    (global.get $~lib/as-chain/bignum/globals/__divmod_rem_hi)
   )
  )
  (local.set $3
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.const 0)
    (i64.const 0)
   )
  )
  (if
   (if (result i32)
    (i64.eq
     (local.tee $0
      (i64.load offset=8
       (local.get $2)
      )
     )
     (local.tee $4
      (i64.load offset=8
       (local.get $3)
      )
     )
    )
    (i64.gt_u
     (i64.load
      (local.get $2)
     )
     (i64.load
      (local.get $3)
     )
    )
    (i64.gt_u
     (local.get $0)
     (local.get $4)
    )
   )
   (local.set $1
    (block (result i32)
     (local.set $1
      (call $~lib/as-chain/bignum/integer/u128/u128#constructor
       (i64.const 1)
       (i64.const 0)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (local.tee $4
       (i64.add
        (local.tee $0
         (i64.load
          (local.get $5)
         )
        )
        (i64.load
         (local.get $1)
        )
       )
      )
      (i64.add
       (i64.extend_i32_u
        (i64.gt_u
         (local.get $0)
         (local.get $4)
        )
       )
       (i64.add
        (i64.load offset=8
         (local.get $5)
        )
        (i64.load offset=8
         (local.get $1)
        )
       )
      )
     )
    )
   )
  )
  (local.set $3
   (local.tee $2
    (call $~lib/as-chain/bignum/integer/u128/u128#constructor
     (i64.const -1)
     (i64.const 0)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (if (result i32)
     (i64.eq
      (local.tee $0
       (i64.load offset=8
        (local.get $1)
       )
      )
      (local.tee $4
       (i64.load offset=8
        (local.get $2)
       )
      )
     )
     (i64.gt_u
      (i64.load
       (local.get $1)
      )
      (i64.load
       (local.get $3)
      )
     )
     (i64.gt_u
      (local.get $0)
      (local.get $4)
     )
    )
   )
   (i32.const 9088)
  )
  (i64.load
   (local.get $1)
  )
 )
 (func $~lib/string/String#padStart (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local.set $4
   (i32.shl
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (i32.const 1)
   )
  )
  (if
   (select
    (i32.const 1)
    (i32.eqz
     (local.tee $3
      (i32.shl
       (call $~lib/string/String#get:length
        (i32.const 3504)
       )
       (i32.const 1)
      )
     )
    )
    (i32.gt_u
     (local.get $4)
     (local.tee $2
      (i32.shl
       (local.get $1)
       (i32.const 1)
      )
     )
    )
   )
   (return
    (local.get $0)
   )
  )
  (local.set $1
   (call $~lib/rt/stub/__new
    (local.get $2)
    (i32.const 1)
   )
  )
  (if
   (i32.gt_u
    (local.tee $2
     (i32.sub
      (local.get $2)
      (local.get $4)
     )
    )
    (local.get $3)
   )
   (block
    (local.set $7
     (i32.mul
      (local.tee $5
       (i32.div_u
        (i32.sub
         (local.get $2)
         (i32.const 2)
        )
        (local.get $3)
       )
      )
      (local.get $3)
     )
    )
    (local.set $5
     (i32.mul
      (local.get $3)
      (local.get $5)
     )
    )
    (loop $while-continue|0
     (if
      (i32.gt_u
       (local.get $5)
       (local.get $6)
      )
      (block
       (call $~lib/memory/memory.copy
        (i32.add
         (local.get $1)
         (local.get $6)
        )
        (i32.const 3504)
        (local.get $3)
       )
       (local.set $6
        (i32.add
         (local.get $3)
         (local.get $6)
        )
       )
       (br $while-continue|0)
      )
     )
    )
    (call $~lib/memory/memory.copy
     (i32.add
      (local.get $1)
      (local.get $7)
     )
     (i32.const 3504)
     (i32.sub
      (local.get $2)
      (local.get $7)
     )
    )
   )
   (call $~lib/memory/memory.copy
    (local.get $1)
    (i32.const 3504)
    (local.get $2)
   )
  )
  (call $~lib/memory/memory.copy
   (i32.add
    (local.get $1)
    (local.get $2)
   )
   (local.get $0)
   (local.get $4)
  )
  (local.get $1)
 )
 (func $~lib/string/String#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local.set $3
   (call $~lib/string/String#get:length
    (local.get $0)
   )
  )
  (local.set $1
   (if (result i32)
    (i32.lt_s
     (local.get $1)
     (i32.const 0)
    )
    (select
     (local.tee $1
      (i32.add
       (local.get $1)
       (local.get $3)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (local.get $1)
      (i32.const 0)
     )
    )
    (select
     (local.get $1)
     (local.get $3)
     (i32.lt_s
      (local.get $1)
      (local.get $3)
     )
    )
   )
  )
  (if
   (i32.le_s
    (local.tee $2
     (i32.sub
      (if (result i32)
       (i32.lt_s
        (local.get $2)
        (i32.const 0)
       )
       (select
        (local.tee $2
         (i32.add
          (local.get $2)
          (local.get $3)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $2)
         (i32.const 0)
        )
       )
       (select
        (local.get $2)
        (local.get $3)
        (i32.lt_s
         (local.get $2)
         (local.get $3)
        )
       )
      )
      (local.get $1)
     )
    )
    (i32.const 0)
   )
   (return
    (i32.const 2288)
   )
  )
  (call $~lib/memory/memory.copy
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (i32.shl
       (local.get $2)
       (i32.const 1)
      )
     )
     (i32.const 1)
    )
   )
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/asset/Asset#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $4
   (call $~lib/as-chain/asset/Symbol#precision
    (i32.load offset=8
     (local.get $0)
    )
   )
  )
  (block $__inlined_func$~lib/util/number/itoa64
   (if
    (i64.eqz
     (local.tee $2
      (i64.load
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (i32.const 3504)
     )
     (br $__inlined_func$~lib/util/number/itoa64)
    )
   )
   (if
    (i64.le_u
     (local.tee $2
      (select
       (i64.sub
        (i64.const 0)
        (local.get $2)
       )
       (local.get $2)
       (local.tee $5
        (i32.wrap_i64
         (i64.shr_u
          (local.get $2)
          (i64.const 63)
         )
        )
       )
      )
     )
     (i64.const 4294967295)
    )
    (call $~lib/util/number/utoa_dec_simple<u32>
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $3
         (i32.add
          (call $~lib/util/number/decimalCount32
           (local.tee $6
            (i32.wrap_i64
             (local.get $2)
            )
           )
          )
          (local.get $5)
         )
        )
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (local.get $6)
     (local.get $3)
    )
    (call $~lib/util/number/utoa_dec_simple<u64>
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $3
         (i32.add
          (call $~lib/util/number/decimalCount64High
           (local.get $2)
          )
          (local.get $5)
         )
        )
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (local.get $2)
     (local.get $3)
    )
   )
   (if
    (local.get $5)
    (i32.store16
     (local.get $1)
     (i32.const 45)
    )
   )
  )
  (local.set $1
   (call $~lib/string/String#padStart
    (local.get $1)
    (i32.and
     (i32.add
      (local.get $4)
      (i32.const 1)
     )
     (i32.const 255)
    )
   )
  )
  (call $~lib/string/String.__concat
   (call $~lib/string/String.__concat
    (if (result i32)
     (i32.and
      (local.get $4)
      (i32.const 255)
     )
     (call $~lib/string/String.__concat
      (call $~lib/string/String.__concat
       (call $~lib/string/String#slice
        (local.get $1)
        (i32.const 0)
        (i32.sub
         (call $~lib/string/String#get:length
          (local.get $1)
         )
         (local.tee $3
          (i32.and
           (local.get $4)
           (i32.const 255)
          )
         )
        )
       )
       (i32.const 9552)
      )
      (call $~lib/string/String#slice
       (local.get $1)
       (i32.sub
        (call $~lib/string/String#get:length
         (local.get $1)
        )
        (local.get $3)
       )
       (call $~lib/string/String#get:length
        (local.get $1)
       )
      )
     )
     (local.get $1)
    )
    (i32.const 9584)
   )
   (call $~lib/as-chain/asset/Symbol#getSymbolString
    (i32.load offset=8
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/as-chain/name/S2N (result i64)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local.set $1
   (i32.le_s
    (call $~lib/string/String#get:length
     (i32.const 9776)
    )
    (i32.const 13)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 9664)
   (i32.const 1)
   (i32.const 9776)
  )
  (call $~lib/as-chain/system/check
   (local.get $1)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 9664)
   )
  )
  (loop $for-loop|0
   (if
    (i32.le_s
     (local.get $0)
     (i32.const 12)
    )
    (block
     (local.set $2
      (i64.const 0)
     )
     (if
      (select
       (i32.le_s
        (local.get $0)
        (i32.const 12)
       )
       (i32.const 0)
       (i32.gt_s
        (call $~lib/string/String#get:length
         (i32.const 9776)
        )
        (local.get $0)
       )
      )
      (block
       (local.set $1
        (call $~lib/string/String#charCodeAt
         (i32.const 9776)
         (local.get $0)
        )
       )
       (global.set $~argumentsLength
        (i32.const 1)
       )
       (if
        (i64.eq
         (local.tee $2
          (i64.extend_i32_u
           (i32.and
            (call_indirect (type $i32_=>_i32)
             (local.get $1)
             (i32.load
              (i32.const 1056)
             )
            )
            (i32.const 65535)
           )
          )
         )
         (i64.const 65535)
        )
        (block
         (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          (i32.const 9744)
          (i32.const 1)
          (i32.const 9776)
         )
         (call $~lib/as-chain/system/check
          (i32.const 0)
          (call $~lib/staticarray/StaticArray<~lib/string/String>#join
           (i32.const 9744)
          )
         )
         (return
          (i64.const 0)
         )
        )
       )
      )
     )
     (local.set $3
      (i64.or
       (local.get $3)
       (select
        (i64.shl
         (i64.and
          (local.get $2)
          (i64.const 31)
         )
         (i64.sub
          (i64.const 64)
          (i64.mul
           (i64.extend_i32_s
            (local.tee $1
             (i32.add
              (local.get $0)
              (i32.const 1)
             )
            )
           )
           (i64.const 5)
          )
         )
        )
        (i64.and
         (local.get $2)
         (i64.const 15)
        )
        (i32.lt_s
         (local.get $0)
         (i32.const 12)
        )
       )
      )
     )
     (local.set $0
      (local.get $1)
     )
     (br $for-loop|0)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/action/PermissionLevel#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 70)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $assembly/orderbook/orderbook.inline/TokenTransfer#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=4
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (i32.add
       (call $~lib/as-chain/utils/Utils.calcPackedStringLength
        (i32.load offset=12
         (local.get $0)
        )
       )
       (i32.const 32)
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packName (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $0)
   (i64.load
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/action/Action#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/serializer/Encoder#packName
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (i32.add
       (i32.add
        (i32.add
         (call $~lib/as-chain/varint/calcPackedVarUint32Length
          (i32.load offset=12
           (i32.load offset=8
            (local.get $0)
           )
          )
         )
         (i32.shl
          (i32.load offset=12
           (i32.load offset=8
            (local.get $0)
           )
          )
          (i32.const 4)
         )
        )
        (i32.const 16)
       )
       (call $~lib/as-chain/varint/calcPackedVarUint32Length
        (i32.load offset=12
         (i32.load offset=12
          (local.get $0)
         )
        )
       )
      )
      (i32.load offset=12
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packName
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $1)
   (i32.load offset=12
    (i32.load offset=8
     (local.get $0)
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (i32.load offset=8
       (local.get $0)
      )
     )
    )
    (block
     (call $~lib/as-chain/serializer/Encoder#pack
      (local.get $1)
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=8
        (local.get $0)
       )
       (local.get $2)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $1)
   (i32.load offset=12
    (local.tee $0
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $1)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $1)
   (local.tee $0
    (i32.load offset=12
     (local.get $0)
    )
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.add
     (local.get $3)
     (i32.load offset=4
      (i32.load
       (local.get $1)
      )
     )
    )
    (local.get $2)
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#transfer (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $7
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 69)
    )
   )
   (i32.const 0)
  )
  (local.set $8
   (call $~lib/as-chain/name/S2N)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $6
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $6)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $7)
   (local.get $6)
  )
  (local.set $6
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 3617214756542218240)
  )
  (local.set $6
   (call $~lib/as-chain/action/PermissionLevel#constructor
    (local.get $6)
    (local.get $0)
   )
  )
  (local.set $7
   (i32.load
    (local.get $7)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 71)
    )
   )
   (local.get $7)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $6)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 68)
    )
   )
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $4)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $5)
  )
  (drop
   (i32.load offset=4
    (local.tee $2
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 72)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $2)
   (i32.const 0)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $0)
   )
  )
  (local.set $4
   (i32.load
    (local.get $0)
   )
  )
  (local.set $1
   (call $assembly/orderbook/orderbook.inline/TokenTransfer#pack
    (local.get $1)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 73)
    )
   )
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $4)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $1)
  )
  (local.set $1
   (i32.load offset=12
    (local.tee $0
     (call $~lib/as-chain/action/Action#pack
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/env/send_inline
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
    (local.get $1)
   )
   (i32.const 2736)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/orders.table/OrdersTable>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
       (local.get $1)
      )
      (i32.const 2800)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/orders.table/OrdersTable>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $4
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/orders.table/OrdersTable>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/idxdb/IDXDB#set:table
      (local.get $1)
      (i64.load
       (local.get $4)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 2944)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i32.load offset=12
    (local.tee $4
     (call $assembly/orderbook/tables/orders.table/OrdersTable#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $7)
   (i32.load offset=4
    (local.get $4)
   )
   (local.get $8)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $6)
      )
     )
     (local.set $4
      (call $assembly/orderbook/tables/orders.table/OrdersTable#getSecondaryValue
       (local.get $2)
       (local.get $5)
      )
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $4)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $4)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $assembly/orderbook/tables/orders.table/OrdersTable#getSecondaryValue
        (local.get $2)
        (local.get $5)
       )
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local.set $3
   (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#requireFind
    (i32.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i32.const 1424)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#update
   (i32.load
    (local.get $0)
   )
   (local.get $3)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/trades.table/TradesTable>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/trades.table/TradesTable>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_end_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/trades.table/TradesTable>#get:availablePrimaryKey (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (if
   (i64.eq
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -1)
   )
   (if
    (i32.eq
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/trades.table/TradesTable>#begin
       (i32.load
        (local.get $0)
       )
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/trades.table/TradesTable>#end
       (i32.load
        (local.get $0)
       )
      )
     )
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $2
      (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/trades.table/TradesTable>#end
       (i32.load
        (local.get $0)
       )
      )
     )
     (local.set $3
      (i32.load
       (i32.load
        (local.get $0)
       )
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.set $2
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/trades.table/TradesTable>#constructor
       (local.get $3)
       (call $~lib/as-chain/env/db_previous_i64
        (i32.load offset=4
         (local.get $2)
        )
        (local.get $1)
       )
       (i64.load
        (local.get $1)
       )
       (i32.const 1)
      )
     )
     (local.set $5
      (local.tee $4
       (i64.load
        (if (result i32)
         (local.tee $1
          (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/trades.table/TradesTable>#get (result i32)
           (local.set $3
            (i32.load
             (i32.load
              (local.get $0)
             )
            )
           )
           (drop
            (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/trades.table/TradesTable>#get
             (i32.const 0)
             (i32.eqz
              (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
               (local.get $2)
              )
             )
            )
           )
           (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/trades.table/TradesTable>#getEx
            (local.get $3)
            (i32.load offset=4
             (local.get $2)
            )
           )
          )
         )
         (local.get $1)
         (block (result i32)
          (global.set $~argumentsLength
           (i32.const 0)
          )
          (call $assembly/orderbook/tables/trades.table/TradesTable#constructor@varargs
           (global.get $~lib/as-chain/name/EMPTY_NAME)
           (global.get $~lib/as-chain/name/EMPTY_NAME)
          )
         )
        )
       )
      )
     )
     (if
      (i64.ge_u
       (local.get $4)
       (i64.const -2)
      )
      (call $~lib/as-chain/idxdb/IDXDB#set:scope
       (local.get $0)
       (i64.const -2)
      )
      (call $~lib/as-chain/idxdb/IDXDB#set:scope
       (local.get $0)
       (i64.add
        (local.get $5)
        (i64.const 1)
       )
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.lt_u
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -2)
   )
   (i32.const 2160)
  )
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $assembly/orderbook/tables/trades.table/TradesTable#pack (param $0 i32) (result i32)
  (local $1 i32)
  (drop
   (i32.load offset=32
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=36
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=40
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=44
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=48
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=52
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=56
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.const 136)
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=36
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=44
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=48
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=52
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=56
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=64
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/trades.table/TradesTable>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local.set $3
   (i64.load
    (local.get $1)
   )
  )
  (local.set $6
   (i64.load
    (local.get $2)
   )
  )
  (local.set $5
   (i32.load
    (local.get $0)
   )
  )
  (local.set $8
   (i32.load offset=12
    (local.tee $7
     (call $assembly/orderbook/tables/trades.table/TradesTable#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/trades.table/TradesTable>#constructor
    (local.get $5)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $5)
     )
     (i64.load offset=16
      (local.get $5)
     )
     (local.get $6)
     (local.get $3)
     (i32.load offset=4
      (local.get $7)
     )
     (local.get $8)
    )
    (local.get $3)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $0)
       )
       (local.get $4)
      )
      (i64.load
       (local.get $1)
      )
      (block $__inlined_func$assembly/orderbook/tables/trades.table/TradesTable#getSecondaryValue (result i32)
       (block $case5|0
        (block $case4|0
         (block $case3|0
          (block $case2|0
           (block $case1|0
            (block $case0|0
             (br_table $case0|0 $case1|0 $case2|0 $case3|0 $case4|0 $case5|0
              (local.get $4)
             )
            )
            (br $__inlined_func$assembly/orderbook/tables/trades.table/TradesTable#getSecondaryValue
             (call $~lib/as-chain/idxdb/newSecondaryValue_u64
              (i64.load offset=8
               (local.get $1)
              )
             )
            )
           )
           (br $__inlined_func$assembly/orderbook/tables/trades.table/TradesTable#getSecondaryValue
            (call $~lib/as-chain/idxdb/newSecondaryValue_u64
             (i64.load
              (i32.load offset=32
               (local.get $1)
              )
             )
            )
           )
          )
          (br $__inlined_func$assembly/orderbook/tables/trades.table/TradesTable#getSecondaryValue
           (call $~lib/as-chain/idxdb/newSecondaryValue_u64
            (i64.load
             (i32.load offset=36
              (local.get $1)
             )
            )
           )
          )
         )
         (br $__inlined_func$assembly/orderbook/tables/trades.table/TradesTable#getSecondaryValue
          (call $~lib/as-chain/idxdb/newSecondaryValue_u64
           (i64.load
            (i32.load offset=40
             (local.get $1)
            )
           )
          )
         )
        )
        (br $__inlined_func$assembly/orderbook/tables/trades.table/TradesTable#getSecondaryValue
         (call $~lib/as-chain/idxdb/newSecondaryValue_u64
          (i64.load offset=64
           (local.get $1)
          )
         )
        )
       )
       (call $~lib/as-chain/system/assert
        (i32.const 0)
        (i32.const 5760)
       )
       (call $~lib/as-chain/idxdb/SecondaryValue#constructor
        (i32.const 0)
        (call $~lib/array/Array<u64>#constructor
         (i32.const 0)
        )
       )
      )
      (i64.load
       (local.get $2)
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $3
     (i64.load
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $3)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $3)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/trades.table/TradesTable>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/trades.table/TradesTable>#find
      (i32.load
       (local.get $0)
      )
      (local.tee $3
       (i64.load
        (local.get $1)
       )
      )
     )
    )
   )
   (i32.const 1200)
  )
  (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/trades.table/TradesTable>#store
   (i32.load
    (local.get $0)
   )
   (local.get $1)
   (local.get $2)
  )
  (if
   (i64.ge_u
    (local.get $3)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $3)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $3)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $assembly/orderbook/tables/fees.table/FeesTable#get:bypairtoken (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local.set $2
   (i64.load
    (local.tee $1
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (i64.load offset=8
       (local.get $0)
      )
      (i64.const 0)
     )
    )
   )
  )
  (drop
   (i64.load offset=8
    (local.get $1)
   )
  )
  (local.set $1
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.const 0)
    (local.get $2)
   )
  )
  (local.set $0
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (i32.load offset=20
       (local.get $0)
      )
     )
    )
    (i64.const 0)
   )
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#constructor
   (i64.or
    (i64.load
     (local.get $1)
    )
    (i64.load
     (local.get $0)
    )
   )
   (i64.or
    (i64.load offset=8
     (local.get $1)
    )
    (i64.load offset=8
     (local.get $0)
    )
   )
  )
 )
 (func $assembly/orderbook/tables/fees.table/FeesTable#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load offset=16
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=20
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=24
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=28
        (local.get $0)
       )
      )
      (i32.const 80)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=20
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=28
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $assembly/orderbook/tables/fees.table/FeesTable#getSecondaryValue (param $0 i32) (param $1 i32) (result i32)
  (block $case3|0
   (block $case2|0
    (block $case1|0
     (block $case0|0
      (br_table $case0|0 $case1|0 $case2|0 $case3|0
       (local.get $1)
      )
     )
     (return
      (call $~lib/as-chain/idxdb/newSecondaryValue_U128
       (call $assembly/orderbook/tables/fees.table/FeesTable#get:bypairtoken
        (local.get $0)
       )
      )
     )
    )
    (return
     (call $~lib/as-chain/idxdb/newSecondaryValue_u64
      (i64.load offset=8
       (local.get $0)
      )
     )
    )
   )
   (return
    (call $~lib/as-chain/idxdb/newSecondaryValue_u64
     (call $~lib/as-chain/asset/Symbol#code
      (i32.load offset=8
       (i32.load offset=20
        (local.get $0)
       )
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/assert
   (i32.const 0)
   (i32.const 5760)
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (i32.const 0)
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/fees.table/FeesTable>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
    (local.get $1)
   )
   (i32.const 2736)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/fees.table/FeesTable>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
       (local.get $1)
      )
      (i32.const 2800)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/fees.table/FeesTable>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $4
        (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/fees.table/FeesTable>#getValue
         (local.get $1)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/idxdb/IDXDB#set:table
      (local.get $1)
      (i64.load
       (local.get $4)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 2944)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i32.load offset=12
    (local.tee $4
     (call $assembly/orderbook/tables/fees.table/FeesTable#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $7)
   (i32.load offset=4
    (local.get $4)
   )
   (local.get $8)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $6)
      )
     )
     (local.set $4
      (call $assembly/orderbook/tables/fees.table/FeesTable#getSecondaryValue
       (local.get $2)
       (local.get $5)
      )
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $4)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $4)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $assembly/orderbook/tables/fees.table/FeesTable#getSecondaryValue
        (local.get $2)
        (local.get $5)
       )
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/fees.table/FeesTable>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/fees.table/FeesTable>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_end_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/fees.table/FeesTable>#get:availablePrimaryKey (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (if
   (i64.eq
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -1)
   )
   (if
    (i32.eq
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/fees.table/FeesTable>#begin
       (i32.load
        (local.get $0)
       )
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/fees.table/FeesTable>#end
       (i32.load
        (local.get $0)
       )
      )
     )
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:scope
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $2
      (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/fees.table/FeesTable>#end
       (i32.load
        (local.get $0)
       )
      )
     )
     (local.set $3
      (i32.load
       (i32.load
        (local.get $0)
       )
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.set $2
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/fees.table/FeesTable>#constructor
       (local.get $3)
       (call $~lib/as-chain/env/db_previous_i64
        (i32.load offset=4
         (local.get $2)
        )
        (local.get $1)
       )
       (i64.load
        (local.get $1)
       )
       (i32.const 1)
      )
     )
     (local.set $5
      (local.tee $4
       (i64.load
        (if (result i32)
         (local.tee $1
          (block $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/fees.table/FeesTable>#get (result i32)
           (local.set $3
            (i32.load
             (i32.load
              (local.get $0)
             )
            )
           )
           (drop
            (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/fees.table/FeesTable>#get
             (i32.const 0)
             (i32.eqz
              (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
               (local.get $2)
              )
             )
            )
           )
           (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/fees.table/FeesTable>#getEx
            (local.get $3)
            (i32.load offset=4
             (local.get $2)
            )
           )
          )
         )
         (local.get $1)
         (block (result i32)
          (global.set $~argumentsLength
           (i32.const 0)
          )
          (call $assembly/orderbook/tables/fees.table/FeesTable#constructor@varargs
           (global.get $~lib/as-chain/name/EMPTY_NAME)
          )
         )
        )
       )
      )
     )
     (if
      (i64.ge_u
       (local.get $4)
       (i64.const -2)
      )
      (call $~lib/as-chain/idxdb/IDXDB#set:scope
       (local.get $0)
       (i64.const -2)
      )
      (call $~lib/as-chain/idxdb/IDXDB#set:scope
       (local.get $0)
       (i64.add
        (local.get $5)
        (i64.const 1)
       )
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.lt_u
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -2)
   )
   (i32.const 2160)
  )
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/fees.table/FeesTable>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
     (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/fees.table/FeesTable>#find
      (i32.load
       (local.get $0)
      )
      (local.tee $6
       (i64.load
        (local.get $1)
       )
      )
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $4
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $2)
   )
  )
  (local.set $7
   (i32.load
    (local.tee $5
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (local.set $10
   (i32.load offset=12
    (local.tee $9
     (call $assembly/orderbook/tables/fees.table/FeesTable#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/fees.table/FeesTable>#constructor
    (local.get $7)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $7)
     )
     (i64.load offset=16
      (local.get $7)
     )
     (local.get $8)
     (local.get $4)
     (i32.load offset=4
      (local.get $9)
     )
     (local.get $10)
    )
    (local.get $4)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $5)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $5)
       )
       (local.get $3)
      )
      (i64.load
       (local.get $1)
      )
      (call $assembly/orderbook/tables/fees.table/FeesTable#getSecondaryValue
       (local.get $1)
       (local.get $3)
      )
      (i64.load
       (local.get $2)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $4
     (i64.load
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $5)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $5)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/idxdb/IDXDB#set:scope
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#recordFeeStats (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local.set $7
   (call $~lib/as-chain/asset/Symbol#code
    (i32.load offset=8
     (local.get $3)
    )
   )
  )
  (drop
   (i64.load offset=8
    (local.tee $5
     (call $~lib/as-chain/bignum/integer/u128/u128#constructor
      (local.get $1)
      (i64.const 0)
     )
    )
   )
  )
  (local.set $5
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.const 0)
    (i64.load
     (local.get $5)
    )
   )
  )
  (local.set $6
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (local.get $7)
    (i64.const 0)
   )
  )
  (local.set $6
   (call $~lib/as-chain/bignum/integer/u128/u128#constructor
    (i64.or
     (i64.load
      (local.get $5)
     )
     (i64.load
      (local.get $6)
     )
    )
    (i64.or
     (i64.load offset=8
      (local.get $5)
     )
     (i64.load offset=8
      (local.get $6)
     )
    )
   )
  )
  (local.set $5
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/fees.table/FeesTable>#first
    (i32.load offset=28
     (local.get $0)
    )
   )
  )
  (loop $while-continue|0
   (if
    (local.get $5)
    (if
     (i32.eqz
      (if (result i32)
       (i64.eq
        (i64.load offset=8
         (local.tee $8
          (call $assembly/orderbook/tables/fees.table/FeesTable#get:bypairtoken
           (local.get $5)
          )
         )
        )
        (i64.load offset=8
         (local.get $6)
        )
       )
       (i64.eq
        (i64.load
         (local.get $8)
        )
        (i64.load
         (local.get $6)
        )
       )
       (i32.const 0)
      )
     )
     (block
      (local.set $5
       (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/fees.table/FeesTable>#next
        (i32.load offset=28
         (local.get $0)
        )
        (local.get $5)
       )
      )
      (br $while-continue|0)
     )
    )
   )
  )
  (if
   (local.get $5)
   (block
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.tee $2
         (i32.load offset=20
          (local.get $5)
         )
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $3)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $1
       (i64.add
        (i64.load
         (local.get $2)
        )
        (i64.load
         (local.get $3)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 6736)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $1)
      (i64.const 4611686018427387903)
     )
     (i32.const 6800)
    )
    (call $assembly/orderbook/tables/pairs.table/PairsTable#set:quote_contract
     (local.get $5)
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $1)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $2)
        )
       )
      )
     )
    )
    (if
     (local.get $4)
     (block
      (call $~lib/as-chain/system/check
       (i64.eq
        (i64.load
         (i32.load offset=8
          (local.tee $2
           (i32.load offset=24
            (local.get $5)
           )
          )
         )
        )
        (i64.load
         (i32.load offset=8
          (local.get $3)
         )
        )
       )
       (i32.const 6672)
      )
      (call $~lib/as-chain/system/check
       (i64.ge_s
        (local.tee $1
         (i64.add
          (i64.load
           (local.get $2)
          )
          (i64.load
           (local.get $3)
          )
         )
        )
        (i64.const -4611686018427387903)
       )
       (i32.const 6736)
      )
      (call $~lib/as-chain/system/check
       (i64.le_s
        (local.get $1)
        (i64.const 4611686018427387903)
       )
       (i32.const 6800)
      )
      (call $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size
       (local.get $5)
       (call $~lib/as-chain/asset/Asset#constructor
        (local.get $1)
        (call $~lib/as-chain/asset/Symbol.fromU64
         (i64.load
          (i32.load offset=8
           (local.get $2)
          )
         )
        )
       )
      )
     )
     (block
      (call $~lib/as-chain/system/check
       (i64.eq
        (i64.load
         (i32.load offset=8
          (local.tee $2
           (i32.load offset=28
            (local.get $5)
           )
          )
         )
        )
        (i64.load
         (i32.load offset=8
          (local.get $3)
         )
        )
       )
       (i32.const 6672)
      )
      (call $~lib/as-chain/system/check
       (i64.ge_s
        (local.tee $1
         (i64.add
          (i64.load
           (local.get $2)
          )
          (i64.load
           (local.get $3)
          )
         )
        )
        (i64.const -4611686018427387903)
       )
       (i32.const 6736)
      )
      (call $~lib/as-chain/system/check
       (i64.le_s
        (local.get $1)
        (i64.const 4611686018427387903)
       )
       (i32.const 6800)
      )
      (call $assembly/orderbook/tables/pairs.table/PairsTable#set:max_order_size
       (local.get $5)
       (call $~lib/as-chain/asset/Asset#constructor
        (local.get $1)
        (call $~lib/as-chain/asset/Symbol.fromU64
         (i64.load
          (i32.load offset=8
           (local.get $2)
          )
         )
        )
       )
      )
     )
    )
    (call $assembly/orderbook/tables/fees.table/FeesTable#set:last_updated
     (local.get $5)
     (i64.extend_i32_u
      (call $~lib/as-chain/system/currentTimeSec)
     )
    )
    (local.set $2
     (i32.load
      (local.get $0)
     )
    )
    (local.set $3
     (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/fees.table/FeesTable>#requireFind
      (i32.load
       (local.tee $0
        (i32.load offset=28
         (local.get $0)
        )
       )
      )
      (i64.load
       (local.get $5)
      )
      (i32.const 1424)
     )
    )
    (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/fees.table/FeesTable>#update
     (i32.load
      (local.get $0)
     )
     (local.get $3)
     (local.get $5)
     (local.get $2)
    )
   )
   (block
    (local.set $2
     (call $assembly/orderbook/tables/fees.table/FeesTable#constructor
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/fees.table/FeesTable>#get:availablePrimaryKey
       (i32.load offset=28
        (local.get $0)
       )
      )
      (local.get $1)
      (local.get $2)
      (local.get $3)
      (if (result i32)
       (local.get $4)
       (local.get $3)
       (call $~lib/as-chain/asset/Asset#constructor
        (i64.const 0)
        (i32.load offset=8
         (local.get $3)
        )
       )
      )
      (if (result i32)
       (local.get $4)
       (call $~lib/as-chain/asset/Asset#constructor
        (i64.const 0)
        (i32.load offset=8
         (local.get $3)
        )
       )
       (local.get $3)
      )
      (i64.extend_i32_u
       (call $~lib/as-chain/system/currentTimeSec)
      )
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/fees.table/FeesTable>#store
     (i32.load offset=28
      (local.get $0)
     )
     (local.get $2)
     (i32.load
      (local.get $0)
     )
    )
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#verifyTradeInvariants (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i64)
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $0)
    )
    (i64.const 0)
   )
   (i32.const 10256)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $1)
    )
    (i64.const 0)
   )
   (i32.const 10336)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.get $2)
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $3)
     )
    )
   )
   (i32.const 6672)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $5
     (i64.add
      (i64.load
       (local.get $2)
      )
      (i64.load
       (local.get $3)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 6736)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $5)
    (i64.const 4611686018427387903)
   )
   (i32.const 6800)
  )
  (call $~lib/as-chain/system/check
   (i64.lt_s
    (i64.load
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $5)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $2)
        )
       )
      )
     )
    )
    (i64.load
     (local.get $1)
    )
   )
   (i32.const 10416)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $0)
     )
    )
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $4)
     )
    )
   )
   (i32.const 10496)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $1)
     )
    )
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=16
      (local.get $4)
     )
    )
   )
   (i32.const 10560)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $2)
     )
    )
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=16
      (local.get $4)
     )
    )
   )
   (i32.const 10624)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $3)
     )
    )
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=16
      (local.get $4)
     )
    )
   )
   (i32.const 10704)
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#executeMarketTrade (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (param $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local.set $13
   (call $~lib/as-chain/asset/Asset#constructor
    (call $assembly/orderbook/orderbook.contract/orderbook#calculateFee
     (i64.load
      (local.get $6)
     )
     (i32.load16_u offset=38
      (local.get $7)
     )
    )
    (i32.load offset=16
     (local.get $7)
    )
   )
  )
  (local.set $14
   (call $~lib/as-chain/asset/Asset#constructor
    (call $assembly/orderbook/orderbook.contract/orderbook#calculateFee
     (i64.load
      (local.get $6)
     )
     (i32.load16_u offset=36
      (local.get $7)
     )
    )
    (i32.load offset=16
     (local.get $7)
    )
   )
  )
  (local.set $16
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
    (i32.load
     (local.get $0)
    )
    (local.get $1)
   )
  )
  (local.set $12
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
    (i32.load
     (local.get $0)
    )
    (local.get $2)
   )
  )
  (if
   (call $~lib/string/String.__eq
    (local.get $8)
    (i32.const 7008)
   )
   (block
    (local.set $9
     (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#requireGet
      (local.get $16)
      (call $~lib/as-chain/asset/Symbol#code
       (i32.load offset=16
        (local.get $7)
       )
      )
      (i32.const 9136)
     )
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.get $6)
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $13)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $10
       (i64.add
        (i64.load
         (local.get $6)
        )
        (i64.load
         (local.get $13)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 6736)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $10)
      (i64.const 4611686018427387903)
     )
     (i32.const 6800)
    )
    (local.set $11
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $10)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $6)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.tee $15
         (i32.load offset=4
          (local.get $9)
         )
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.tee $17
         (i32.load offset=8
          (local.get $9)
         )
        )
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $10
       (i64.add
        (i64.load
         (local.get $15)
        )
        (i64.load
         (local.get $17)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 6736)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $10)
      (i64.const 4611686018427387903)
     )
     (i32.const 6800)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (i64.load
       (call $~lib/as-chain/asset/Asset#constructor
        (local.get $10)
        (call $~lib/as-chain/asset/Symbol.fromU64
         (i64.load
          (i32.load offset=8
           (local.get $15)
          )
         )
        )
       )
      )
      (i64.load
       (local.get $11)
      )
     )
     (i32.const 9200)
    )
    (if
     (i64.ge_s
      (i64.load
       (i32.load offset=8
        (local.get $9)
       )
      )
      (i64.load
       (local.get $11)
      )
     )
     (block
      (call $~lib/as-chain/system/check
       (i64.eq
        (i64.load
         (i32.load offset=8
          (local.tee $15
           (i32.load offset=8
            (local.get $9)
           )
          )
         )
        )
        (i64.load
         (i32.load offset=8
          (local.get $11)
         )
        )
       )
       (i32.const 6672)
      )
      (call $~lib/as-chain/system/check
       (i64.ge_s
        (local.tee $10
         (i64.sub
          (i64.load
           (local.get $15)
          )
          (i64.load
           (local.get $11)
          )
         )
        )
        (i64.const -4611686018427387903)
       )
       (i32.const 8528)
      )
      (call $~lib/as-chain/system/check
       (i64.le_s
        (local.get $10)
        (i64.const 4611686018427387903)
       )
       (i32.const 8592)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $9)
       (call $~lib/as-chain/asset/Asset#constructor
        (local.get $10)
        (call $~lib/as-chain/asset/Symbol.fromU64
         (i64.load
          (i32.load offset=8
           (local.get $15)
          )
         )
        )
       )
      )
     )
     (block
      (local.set $10
       (i64.sub
        (i64.load
         (local.get $11)
        )
        (i64.load
         (i32.load offset=8
          (local.get $9)
         )
        )
       )
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $9)
       (call $~lib/as-chain/asset/Asset#constructor
        (i64.const 0)
        (i32.load offset=8
         (i32.load offset=8
          (local.get $9)
         )
        )
       )
      )
      (local.set $11
       (i32.load offset=4
        (local.get $9)
       )
      )
      (local.set $15
       (call $~lib/as-chain/asset/Asset#constructor
        (local.get $10)
        (i32.load offset=8
         (i32.load offset=4
          (local.get $9)
         )
        )
       )
      )
      (call $~lib/as-chain/system/check
       (i64.eq
        (i64.load
         (i32.load offset=8
          (local.get $11)
         )
        )
        (i64.load
         (i32.load offset=8
          (local.get $15)
         )
        )
       )
       (i32.const 6672)
      )
      (call $~lib/as-chain/system/check
       (i64.ge_s
        (local.tee $10
         (i64.sub
          (i64.load
           (local.get $11)
          )
          (i64.load
           (local.get $15)
          )
         )
        )
        (i64.const -4611686018427387903)
       )
       (i32.const 8528)
      )
      (call $~lib/as-chain/system/check
       (i64.le_s
        (local.get $10)
        (i64.const 4611686018427387903)
       )
       (i32.const 8592)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $9)
       (call $~lib/as-chain/asset/Asset#constructor
        (local.get $10)
        (call $~lib/as-chain/asset/Symbol.fromU64
         (i64.load
          (i32.load offset=8
           (local.get $11)
          )
         )
        )
       )
      )
     )
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:table
     (local.get $9)
     (i64.extend_i32_u
      (call $~lib/as-chain/system/currentTimeSec)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#update
     (local.get $16)
     (local.get $9)
     (i32.load
      (local.get $0)
     )
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (i64.load
       (i32.load offset=8
        (local.tee $9
         (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#requireGet
          (local.get $12)
          (call $~lib/as-chain/asset/Symbol#code
           (i32.load offset=8
            (local.get $7)
           )
          )
          (i32.const 9280)
         )
        )
       )
      )
      (i64.load
       (local.get $5)
      )
     )
     (i32.const 9344)
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.tee $11
         (i32.load offset=8
          (local.get $9)
         )
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $5)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $10
       (i64.sub
        (i64.load
         (local.get $11)
        )
        (i64.load
         (local.get $5)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 8528)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $10)
      (i64.const 4611686018427387903)
     )
     (i32.const 8592)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $9)
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $10)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $11)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:table
     (local.get $9)
     (i64.extend_i32_u
      (call $~lib/as-chain/system/currentTimeSec)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#update
     (local.get $12)
     (local.get $9)
     (i32.load
      (local.get $0)
     )
    )
    (local.set $9
     (i32.load offset=12
      (local.get $7)
     )
    )
    (local.set $11
     (i32.load
      (local.get $0)
     )
    )
    (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     (i32.const 9504)
     (i32.const 1)
     (call $~lib/as-chain/asset/Asset#toString
      (local.get $5)
     )
    )
    (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     (i32.const 9504)
     (i32.const 3)
     (call $~lib/as-chain/asset/Asset#toString
      (local.get $4)
     )
    )
    (call $assembly/orderbook/orderbook.contract/orderbook#transfer
     (local.get $0)
     (local.get $9)
     (local.get $11)
     (local.get $1)
     (local.get $5)
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 9504)
     )
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.get $6)
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $14)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $10
       (i64.sub
        (i64.load
         (local.get $6)
        )
        (i64.load
         (local.get $14)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 8528)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $10)
      (i64.const 4611686018427387903)
     )
     (i32.const 8592)
    )
    (local.set $9
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $10)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $6)
        )
       )
      )
     )
    )
    (local.set $11
     (i32.load offset=20
      (local.get $7)
     )
    )
    (local.set $12
     (i32.load
      (local.get $0)
     )
    )
    (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     (i32.const 9920)
     (i32.const 1)
     (call $~lib/number/U64#toString
      (i64.load
       (local.get $3)
      )
     )
    )
    (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     (i32.const 9920)
     (i32.const 3)
     (call $~lib/as-chain/asset/Asset#toString
      (local.get $5)
     )
    )
    (call $assembly/orderbook/orderbook.contract/orderbook#transfer
     (local.get $0)
     (local.get $11)
     (local.get $12)
     (local.get $2)
     (local.get $9)
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 9920)
     )
    )
   )
   (block
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (i64.load
       (i32.load offset=8
        (local.tee $9
         (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#requireGet
          (local.get $12)
          (call $~lib/as-chain/asset/Symbol#code
           (i32.load offset=8
            (local.get $7)
           )
          )
          (i32.const 9280)
         )
        )
       )
      )
      (i64.load
       (local.get $5)
      )
     )
     (i32.const 9344)
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.tee $11
         (i32.load offset=8
          (local.get $9)
         )
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $5)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $10
       (i64.sub
        (i64.load
         (local.get $11)
        )
        (i64.load
         (local.get $5)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 8528)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $10)
      (i64.const 4611686018427387903)
     )
     (i32.const 8592)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $9)
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $10)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $11)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:table
     (local.get $9)
     (i64.extend_i32_u
      (call $~lib/as-chain/system/currentTimeSec)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#update
     (local.get $12)
     (local.get $9)
     (i32.load
      (local.get $0)
     )
    )
    (local.set $9
     (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#requireGet
      (local.get $16)
      (call $~lib/as-chain/asset/Symbol#code
       (i32.load offset=16
        (local.get $7)
       )
      )
      (i32.const 9136)
     )
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.get $6)
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $14)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $10
       (i64.add
        (i64.load
         (local.get $6)
        )
        (i64.load
         (local.get $14)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 6736)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $10)
      (i64.const 4611686018427387903)
     )
     (i32.const 6800)
    )
    (local.set $11
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $10)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $6)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.tee $12
         (i32.load offset=4
          (local.get $9)
         )
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.tee $15
         (i32.load offset=8
          (local.get $9)
         )
        )
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $10
       (i64.add
        (i64.load
         (local.get $12)
        )
        (i64.load
         (local.get $15)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 6736)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $10)
      (i64.const 4611686018427387903)
     )
     (i32.const 6800)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (i64.load
       (call $~lib/as-chain/asset/Asset#constructor
        (local.get $10)
        (call $~lib/as-chain/asset/Symbol.fromU64
         (i64.load
          (i32.load offset=8
           (local.get $12)
          )
         )
        )
       )
      )
      (i64.load
       (local.get $11)
      )
     )
     (i32.const 9200)
    )
    (if
     (i64.ge_s
      (i64.load
       (i32.load offset=8
        (local.get $9)
       )
      )
      (i64.load
       (local.get $11)
      )
     )
     (block
      (call $~lib/as-chain/system/check
       (i64.eq
        (i64.load
         (i32.load offset=8
          (local.tee $12
           (i32.load offset=8
            (local.get $9)
           )
          )
         )
        )
        (i64.load
         (i32.load offset=8
          (local.get $11)
         )
        )
       )
       (i32.const 6672)
      )
      (call $~lib/as-chain/system/check
       (i64.ge_s
        (local.tee $10
         (i64.sub
          (i64.load
           (local.get $12)
          )
          (i64.load
           (local.get $11)
          )
         )
        )
        (i64.const -4611686018427387903)
       )
       (i32.const 8528)
      )
      (call $~lib/as-chain/system/check
       (i64.le_s
        (local.get $10)
        (i64.const 4611686018427387903)
       )
       (i32.const 8592)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $9)
       (call $~lib/as-chain/asset/Asset#constructor
        (local.get $10)
        (call $~lib/as-chain/asset/Symbol.fromU64
         (i64.load
          (i32.load offset=8
           (local.get $12)
          )
         )
        )
       )
      )
     )
     (block
      (local.set $10
       (i64.sub
        (i64.load
         (local.get $11)
        )
        (i64.load
         (i32.load offset=8
          (local.get $9)
         )
        )
       )
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $9)
       (call $~lib/as-chain/asset/Asset#constructor
        (i64.const 0)
        (i32.load offset=8
         (i32.load offset=8
          (local.get $9)
         )
        )
       )
      )
      (local.set $11
       (i32.load offset=4
        (local.get $9)
       )
      )
      (local.set $12
       (call $~lib/as-chain/asset/Asset#constructor
        (local.get $10)
        (i32.load offset=8
         (i32.load offset=4
          (local.get $9)
         )
        )
       )
      )
      (call $~lib/as-chain/system/check
       (i64.eq
        (i64.load
         (i32.load offset=8
          (local.get $11)
         )
        )
        (i64.load
         (i32.load offset=8
          (local.get $12)
         )
        )
       )
       (i32.const 6672)
      )
      (call $~lib/as-chain/system/check
       (i64.ge_s
        (local.tee $10
         (i64.sub
          (i64.load
           (local.get $11)
          )
          (i64.load
           (local.get $12)
          )
         )
        )
        (i64.const -4611686018427387903)
       )
       (i32.const 8528)
      )
      (call $~lib/as-chain/system/check
       (i64.le_s
        (local.get $10)
        (i64.const 4611686018427387903)
       )
       (i32.const 8592)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $9)
       (call $~lib/as-chain/asset/Asset#constructor
        (local.get $10)
        (call $~lib/as-chain/asset/Symbol.fromU64
         (i64.load
          (i32.load offset=8
           (local.get $11)
          )
         )
        )
       )
      )
     )
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:table
     (local.get $9)
     (i64.extend_i32_u
      (call $~lib/as-chain/system/currentTimeSec)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#update
     (local.get $16)
     (local.get $9)
     (i32.load
      (local.get $0)
     )
    )
    (local.set $9
     (i32.load offset=12
      (local.get $7)
     )
    )
    (local.set $11
     (i32.load
      (local.get $0)
     )
    )
    (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     (i32.const 10016)
     (i32.const 1)
     (call $~lib/number/U64#toString
      (i64.load
       (local.get $3)
      )
     )
    )
    (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     (i32.const 10016)
     (i32.const 3)
     (call $~lib/as-chain/asset/Asset#toString
      (local.get $5)
     )
    )
    (call $assembly/orderbook/orderbook.contract/orderbook#transfer
     (local.get $0)
     (local.get $9)
     (local.get $11)
     (local.get $1)
     (local.get $5)
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 10016)
     )
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.get $6)
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $13)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $10
       (i64.sub
        (i64.load
         (local.get $6)
        )
        (i64.load
         (local.get $13)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 8528)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $10)
      (i64.const 4611686018427387903)
     )
     (i32.const 8592)
    )
    (local.set $9
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $10)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $6)
        )
       )
      )
     )
    )
    (local.set $11
     (i32.load offset=20
      (local.get $7)
     )
    )
    (local.set $12
     (i32.load
      (local.get $0)
     )
    )
    (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     (i32.const 10112)
     (i32.const 1)
     (call $~lib/as-chain/asset/Asset#toString
      (local.get $5)
     )
    )
    (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     (i32.const 10112)
     (i32.const 3)
     (call $~lib/as-chain/asset/Asset#toString
      (local.get $4)
     )
    )
    (call $assembly/orderbook/orderbook.contract/orderbook#transfer
     (local.get $0)
     (local.get $11)
     (local.get $12)
     (local.get $2)
     (local.get $9)
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 10112)
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.tee $9
       (i32.load offset=36
        (local.get $3)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $5)
     )
    )
   )
   (i32.const 6672)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $10
     (i64.add
      (i64.load
       (local.get $9)
      )
      (i64.load
       (local.get $5)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 6736)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $10)
    (i64.const 4611686018427387903)
   )
   (i32.const 6800)
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:filled_amount
   (local.get $3)
   (call $~lib/as-chain/asset/Asset#constructor
    (local.get $10)
    (call $~lib/as-chain/asset/Symbol.fromU64
     (i64.load
      (i32.load offset=8
       (local.get $9)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.tee $9
       (i32.load offset=40
        (local.get $3)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $5)
     )
    )
   )
   (i32.const 6672)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $10
     (i64.sub
      (i64.load
       (local.get $9)
      )
      (i64.load
       (local.get $5)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 8528)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $10)
    (i64.const 4611686018427387903)
   )
   (i32.const 8592)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:status
   (local.get $3)
   (call $~lib/as-chain/asset/Asset#constructor
    (local.get $10)
    (call $~lib/as-chain/asset/Symbol.fromU64
     (i64.load
      (i32.load offset=8
       (local.get $9)
      )
     )
    )
   )
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:status
   (local.get $3)
   (select
    (i32.const 2)
    (i32.const 1)
    (i64.eqz
     (i64.load
      (i32.load offset=40
       (local.get $3)
      )
     )
    )
   )
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:updated_at
   (local.get $3)
   (i64.extend_i32_u
    (call $~lib/as-chain/system/currentTimeSec)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#update
   (i32.load offset=16
    (local.get $0)
   )
   (local.get $3)
   (i32.load
    (local.get $0)
   )
  )
  (local.set $1
   (call $assembly/orderbook/tables/trades.table/TradesTable#constructor
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/trades.table/TradesTable>#get:availablePrimaryKey
     (i32.load offset=20
      (local.get $0)
     )
    )
    (i64.load
     (local.get $7)
    )
    (if (result i64)
     (call $~lib/string/String.__eq
      (local.get $8)
      (i32.const 7008)
     )
     (i64.const -1)
     (i64.load
      (local.get $3)
     )
    )
    (if (result i64)
     (call $~lib/string/String.__eq
      (local.get $8)
      (i32.const 7040)
     )
     (i64.const -1)
     (i64.load
      (local.get $3)
     )
    )
    (local.get $1)
    (local.get $2)
    (local.get $4)
    (local.get $5)
    (local.get $6)
    (select
     (local.get $13)
     (local.get $14)
     (call $~lib/string/String.__eq
      (local.get $8)
      (i32.const 7008)
     )
    )
    (select
     (local.get $13)
     (local.get $14)
     (call $~lib/string/String.__eq
      (local.get $8)
      (i32.const 7040)
     )
    )
    (i64.extend_i32_u
     (call $~lib/as-chain/system/currentTimeSec)
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/trades.table/TradesTable>#store
   (i32.load offset=20
    (local.get $0)
   )
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
  (local.set $1
   (call $assembly/orderbook/orderbook.contract/orderbook#getConfig
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.get $13)
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $14)
     )
    )
   )
   (i32.const 6672)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $10
     (i64.add
      (i64.load
       (local.get $13)
      )
      (i64.load
       (local.get $14)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 6736)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $10)
    (i64.const 4611686018427387903)
   )
   (i32.const 6800)
  )
  (local.set $2
   (call $~lib/as-chain/asset/Asset#constructor
    (local.get $10)
    (call $~lib/as-chain/asset/Symbol.fromU64
     (i64.load
      (i32.load offset=8
       (local.get $13)
      )
     )
    )
   )
  )
  (local.set $3
   (i32.load offset=20
    (local.get $7)
   )
  )
  (local.set $4
   (i32.load
    (local.get $0)
   )
  )
  (local.set $1
   (i32.load offset=24
    (local.get $1)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 10224)
   (i32.const 1)
   (call $~lib/number/U64#toString
    (i64.load
     (local.get $7)
    )
   )
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#transfer
   (local.get $0)
   (local.get $3)
   (local.get $4)
   (local.get $1)
   (local.get $2)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 10224)
   )
  )
  (if
   (call $~lib/string/String.__eq
    (local.get $8)
    (i32.const 7008)
   )
   (block
    (call $assembly/orderbook/orderbook.contract/orderbook#recordFeeStats
     (local.get $0)
     (i64.load
      (local.get $7)
     )
     (i32.load offset=20
      (local.get $7)
     )
     (local.get $13)
     (i32.const 0)
    )
    (call $assembly/orderbook/orderbook.contract/orderbook#recordFeeStats
     (local.get $0)
     (i64.load
      (local.get $7)
     )
     (i32.load offset=20
      (local.get $7)
     )
     (local.get $14)
     (i32.const 1)
    )
   )
   (block
    (call $assembly/orderbook/orderbook.contract/orderbook#recordFeeStats
     (local.get $0)
     (i64.load
      (local.get $7)
     )
     (i32.load offset=20
      (local.get $7)
     )
     (local.get $14)
     (i32.const 1)
    )
    (call $assembly/orderbook/orderbook.contract/orderbook#recordFeeStats
     (local.get $0)
     (i64.load
      (local.get $7)
     )
     (i32.load offset=20
      (local.get $7)
     )
     (local.get $13)
     (i32.const 0)
    )
   )
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#verifyTradeInvariants
   (local.get $5)
   (local.get $6)
   (local.get $13)
   (local.get $14)
   (local.get $7)
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#unlockPartialFill (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (if
   (i32.ne
    (i32.load8_u offset=49
     (local.get $1)
    )
    (i32.const 1)
   )
   (return)
  )
  (local.set $5
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
    (i32.load
     (local.get $0)
    )
    (i32.load offset=16
     (local.get $1)
    )
   )
  )
  (if
   (call $~lib/string/String.__eq
    (i32.load offset=20
     (local.get $1)
    )
    (i32.const 7008)
   )
   (block
    (local.set $3
     (call $assembly/orderbook/orderbook.contract/orderbook#calculateTotalValue
      (i32.load offset=28
       (local.get $1)
      )
      (i32.load offset=32
       (local.get $1)
      )
      (local.get $2)
     )
    )
    (local.set $1
     (call $assembly/orderbook/orderbook.contract/orderbook#calculateTotalValue
      (i32.load offset=28
       (local.get $1)
      )
      (i32.load offset=40
       (local.get $1)
      )
      (local.get $2)
     )
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.get $3)
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $1)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $4
       (i64.sub
        (i64.load
         (local.get $3)
        )
        (i64.load
         (local.get $1)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 8528)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $4)
      (i64.const 4611686018427387903)
     )
     (i32.const 8592)
    )
    (if
     (i64.gt_s
      (i64.load
       (local.tee $3
        (call $~lib/as-chain/asset/Asset#constructor
         (local.get $4)
         (call $~lib/as-chain/asset/Symbol.fromU64
          (i64.load
           (i32.load offset=8
            (local.get $3)
           )
          )
         )
        )
       )
      )
      (i64.const 0)
     )
     (if
      (i64.ge_s
       (i64.load
        (i32.load offset=8
         (local.tee $1
          (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#requireGet
           (local.get $5)
           (call $~lib/as-chain/asset/Symbol#code
            (i32.load offset=16
             (local.get $2)
            )
           )
           (i32.const 10784)
          )
         )
        )
       )
       (i64.load
        (local.get $3)
       )
      )
      (block
       (call $~lib/as-chain/system/check
        (i64.eq
         (i64.load
          (i32.load offset=8
           (local.tee $2
            (i32.load offset=8
             (local.get $1)
            )
           )
          )
         )
         (i64.load
          (i32.load offset=8
           (local.get $3)
          )
         )
        )
        (i32.const 6672)
       )
       (call $~lib/as-chain/system/check
        (i64.ge_s
         (local.tee $4
          (i64.sub
           (i64.load
            (local.get $2)
           )
           (i64.load
            (local.get $3)
           )
          )
         )
         (i64.const -4611686018427387903)
        )
        (i32.const 8528)
       )
       (call $~lib/as-chain/system/check
        (i64.le_s
         (local.get $4)
         (i64.const 4611686018427387903)
        )
        (i32.const 8592)
       )
       (call $~lib/rt/common/OBJECT#set:gcInfo2
        (local.get $1)
        (call $~lib/as-chain/asset/Asset#constructor
         (local.get $4)
         (call $~lib/as-chain/asset/Symbol.fromU64
          (i64.load
           (i32.load offset=8
            (local.get $2)
           )
          )
         )
        )
       )
       (call $~lib/as-chain/system/check
        (i64.eq
         (i64.load
          (i32.load offset=8
           (local.tee $2
            (i32.load offset=4
             (local.get $1)
            )
           )
          )
         )
         (i64.load
          (i32.load offset=8
           (local.get $3)
          )
         )
        )
        (i32.const 6672)
       )
       (call $~lib/as-chain/system/check
        (i64.ge_s
         (local.tee $4
          (i64.add
           (i64.load
            (local.get $2)
           )
           (i64.load
            (local.get $3)
           )
          )
         )
         (i64.const -4611686018427387903)
        )
        (i32.const 6736)
       )
       (call $~lib/as-chain/system/check
        (i64.le_s
         (local.get $4)
         (i64.const 4611686018427387903)
        )
        (i32.const 6800)
       )
       (call $~lib/rt/common/OBJECT#set:gcInfo
        (local.get $1)
        (call $~lib/as-chain/asset/Asset#constructor
         (local.get $4)
         (call $~lib/as-chain/asset/Symbol.fromU64
          (i64.load
           (i32.load offset=8
            (local.get $2)
           )
          )
         )
        )
       )
       (call $~lib/as-chain/idxdb/IDXDB#set:table
        (local.get $1)
        (i64.extend_i32_u
         (call $~lib/as-chain/system/currentTimeSec)
        )
       )
       (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#update
        (local.get $5)
        (local.get $1)
        (i32.load
         (local.get $0)
        )
       )
      )
     )
    )
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#executeMarketBuy (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (param $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  (local $12 i32)
  (local.set $5
   (local.get $3)
  )
  (call $~lib/as-chain/system/check
   (i32.gt_s
    (i32.load offset=12
     (local.tee $7
      (call $assembly/orderbook/orderbook.contract/orderbook#getBestSellOrders
       (local.get $0)
       (i64.load
        (local.get $2)
       )
       (i32.const 100)
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 8880)
  )
  (local.set $11
   (i64.add
    (local.tee $6
     (i64.load
      (i32.load offset=28
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (local.get $7)
        (i32.const 0)
       )
      )
     )
    )
    (i64.div_s
     (i64.mul
      (local.get $6)
      (i64.extend_i32_u
       (i32.and
        (local.get $4)
        (i32.const 65535)
       )
      )
     )
     (i64.const 10000)
    )
   )
  )
  (loop $for-loop|0
   (if
    (select
     (i64.gt_s
      (local.get $5)
      (i64.const 0)
     )
     (i32.const 0)
     (i32.lt_s
      (local.get $8)
      (i32.load offset=12
       (local.get $7)
      )
     )
    )
    (block $for-break0
     (if
      (i64.ne
       (i64.load
        (i32.load offset=16
         (local.tee $4
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (local.get $7)
           (local.get $8)
          )
         )
        )
       )
       (i64.load
        (local.get $1)
       )
      )
      (local.set $5
       (block (result i64)
        (br_if $for-break0
         (i64.lt_s
          (local.get $11)
          (i64.load
           (i32.load offset=28
            (local.get $4)
           )
          )
         )
        )
        (local.set $6
         (if (result i64)
          (i64.ge_s
           (local.get $5)
           (i64.load
            (local.tee $9
             (call $assembly/orderbook/orderbook.contract/orderbook#calculateTotalValue
              (i32.load offset=28
               (local.get $4)
              )
              (i32.load offset=40
               (local.get $4)
              )
              (local.get $2)
             )
            )
           )
          )
          (block (result i64)
           (local.set $10
            (i64.load
             (i32.load offset=40
              (local.get $4)
             )
            )
           )
           (i64.load
            (local.get $9)
           )
          )
          (block (result i64)
           (call $~lib/as-chain/system/check
            (i64.gt_s
             (local.tee $10
              (i64.div_s
               (i64.mul
                (local.get $5)
                (i64.trunc_f64_u
                 (call $~lib/math/NativeMath.pow
                  (f64.convert_i32_u
                   (call $~lib/as-chain/asset/Symbol#precision
                    (i32.load offset=8
                     (local.get $2)
                    )
                   )
                  )
                 )
                )
               )
               (i64.load
                (i32.load offset=28
                 (local.get $4)
                )
               )
              )
             )
             (i64.const 0)
            )
            (i32.const 8944)
           )
           (local.get $5)
          )
         )
        )
        (local.set $9
         (call $~lib/as-chain/asset/Asset#constructor
          (local.get $10)
          (i32.load offset=8
           (local.get $2)
          )
         )
        )
        (local.set $12
         (call $~lib/as-chain/asset/Asset#constructor
          (local.get $6)
          (i32.load offset=16
           (local.get $2)
          )
         )
        )
        (call $assembly/orderbook/orderbook.contract/orderbook#executeMarketTrade
         (local.get $0)
         (local.get $1)
         (i32.load offset=16
          (local.get $4)
         )
         (local.get $4)
         (i32.load offset=28
          (local.get $4)
         )
         (local.get $9)
         (local.get $12)
         (local.get $2)
         (i32.const 7008)
        )
        (call $assembly/orderbook/orderbook.contract/orderbook#unlockPartialFill
         (local.get $0)
         (local.get $4)
         (local.get $2)
        )
        (i64.sub
         (local.get $5)
         (local.get $6)
        )
       )
      )
     )
     (local.set $8
      (i32.add
       (local.get $8)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.gt_s
    (local.get $5)
    (i64.const 0)
   )
   (block
    (local.set $4
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $5)
      (i32.load offset=16
       (local.get $2)
      )
     )
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (i64.load
       (i32.load offset=8
        (local.tee $1
         (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#requireGet
          (local.tee $7
           (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
            (i32.load
             (local.get $0)
            )
            (local.get $1)
           )
          )
          (call $~lib/as-chain/asset/Symbol#code
           (i32.load offset=16
            (local.get $2)
           )
          )
          (i32.const 10784)
         )
        )
       )
      )
      (i64.load
       (local.get $4)
      )
     )
     (i32.const 10832)
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.tee $2
         (i32.load offset=8
          (local.get $1)
         )
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $4)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $6
       (i64.sub
        (i64.load
         (local.get $2)
        )
        (i64.load
         (local.get $4)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 8528)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $6)
      (i64.const 4611686018427387903)
     )
     (i32.const 8592)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $1)
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $6)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $2)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.tee $2
         (i32.load offset=4
          (local.get $1)
         )
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $4)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $6
       (i64.add
        (i64.load
         (local.get $2)
        )
        (i64.load
         (local.get $4)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 6736)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $6)
      (i64.const 4611686018427387903)
     )
     (i32.const 6800)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $1)
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $6)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $2)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:table
     (local.get $1)
     (i64.extend_i32_u
      (call $~lib/as-chain/system/currentTimeSec)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#update
     (local.get $7)
     (local.get $1)
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.sub
     (local.get $3)
     (local.get $5)
    )
    (i64.const 0)
   )
   (i32.const 10912)
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#executeMarketSell (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (param $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local.set $5
   (local.get $3)
  )
  (call $~lib/as-chain/system/check
   (i32.gt_s
    (i32.load offset=12
     (local.tee $7
      (call $assembly/orderbook/orderbook.contract/orderbook#getBestBuyOrders
       (local.get $0)
       (i64.load
        (local.get $2)
       )
       (i32.const 100)
      )
     )
    )
    (i32.const 0)
   )
   (i32.const 8880)
  )
  (local.set $10
   (i64.sub
    (local.tee $6
     (i64.load
      (i32.load offset=28
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (local.get $7)
        (i32.const 0)
       )
      )
     )
    )
    (i64.div_s
     (i64.mul
      (local.get $6)
      (i64.extend_i32_u
       (i32.and
        (local.get $4)
        (i32.const 65535)
       )
      )
     )
     (i64.const 10000)
    )
   )
  )
  (loop $for-loop|0
   (if
    (select
     (i64.gt_s
      (local.get $5)
      (i64.const 0)
     )
     (i32.const 0)
     (i32.lt_s
      (local.get $8)
      (i32.load offset=12
       (local.get $7)
      )
     )
    )
    (block $for-break0
     (if
      (i64.ne
       (i64.load
        (i32.load offset=16
         (local.tee $4
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (local.get $7)
           (local.get $8)
          )
         )
        )
       )
       (i64.load
        (local.get $1)
       )
      )
      (local.set $5
       (block (result i64)
        (br_if $for-break0
         (i64.gt_s
          (local.get $10)
          (i64.load
           (i32.load offset=28
            (local.get $4)
           )
          )
         )
        )
        (local.set $9
         (call $~lib/as-chain/asset/Asset#constructor
          (local.tee $6
           (if (result i64)
            (i64.ge_s
             (local.get $5)
             (i64.load
              (i32.load offset=40
               (local.get $4)
              )
             )
            )
            (i64.load
             (i32.load offset=40
              (local.get $4)
             )
            )
            (local.get $5)
           )
          )
          (i32.load offset=8
           (local.get $2)
          )
         )
        )
        (call $~lib/as-chain/system/check
         (i64.gt_s
          (i64.load
           (local.tee $11
            (call $assembly/orderbook/orderbook.contract/orderbook#calculateTotalValue
             (i32.load offset=28
              (local.get $4)
             )
             (local.get $9)
             (local.get $2)
            )
           )
          )
          (i64.const 0)
         )
         (i32.const 11088)
        )
        (call $assembly/orderbook/orderbook.contract/orderbook#executeMarketTrade
         (local.get $0)
         (i32.load offset=16
          (local.get $4)
         )
         (local.get $1)
         (local.get $4)
         (i32.load offset=28
          (local.get $4)
         )
         (local.get $9)
         (local.get $11)
         (local.get $2)
         (i32.const 7040)
        )
        (call $assembly/orderbook/orderbook.contract/orderbook#unlockPartialFill
         (local.get $0)
         (local.get $4)
         (local.get $2)
        )
        (i64.sub
         (local.get $5)
         (local.get $6)
        )
       )
      )
     )
     (local.set $8
      (i32.add
       (local.get $8)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.gt_s
    (local.get $5)
    (i64.const 0)
   )
   (block
    (local.set $4
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $5)
      (i32.load offset=8
       (local.get $2)
      )
     )
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (i64.load
       (i32.load offset=8
        (local.tee $1
         (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#requireGet
          (local.tee $7
           (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
            (i32.load
             (local.get $0)
            )
            (local.get $1)
           )
          )
          (call $~lib/as-chain/asset/Symbol#code
           (i32.load offset=8
            (local.get $2)
           )
          )
          (i32.const 10784)
         )
        )
       )
      )
      (i64.load
       (local.get $4)
      )
     )
     (i32.const 10832)
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.tee $2
         (i32.load offset=8
          (local.get $1)
         )
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $4)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $6
       (i64.sub
        (i64.load
         (local.get $2)
        )
        (i64.load
         (local.get $4)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 8528)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $6)
      (i64.const 4611686018427387903)
     )
     (i32.const 8592)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $1)
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $6)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $2)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.tee $2
         (i32.load offset=4
          (local.get $1)
         )
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $4)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $6
       (i64.add
        (i64.load
         (local.get $2)
        )
        (i64.load
         (local.get $4)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 6736)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $6)
      (i64.const 4611686018427387903)
     )
     (i32.const 6800)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $1)
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $6)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $2)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:table
     (local.get $1)
     (i64.extend_i32_u
      (call $~lib/as-chain/system/currentTimeSec)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#update
     (local.get $7)
     (local.get $1)
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.sub
     (local.get $3)
     (local.get $5)
    )
    (i64.const 0)
   )
   (i32.const 11168)
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#marketOrder (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.load8_u offset=12
     (call $assembly/orderbook/orderbook.contract/orderbook#getConfig
      (local.get $0)
     )
    )
   )
   (i32.const 6864)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/string/String.__eq
    (i32.load offset=40
     (local.tee $6
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#requireGet
       (i32.load offset=12
        (local.get $0)
       )
       (local.get $2)
      )
     )
    )
    (i32.const 5728)
   )
   (i32.const 6912)
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (call $~lib/string/String.__eq
     (local.get $3)
     (i32.const 7008)
    )
    (i32.const 1)
    (call $~lib/string/String.__eq
     (local.get $3)
     (i32.const 7040)
    )
   )
   (i32.const 7072)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $4)
    )
    (i64.const 0)
   )
   (i32.const 7120)
  )
  (call $~lib/as-chain/system/check
   (i32.le_u
    (i32.and
     (local.get $5)
     (i32.const 65535)
    )
    (i32.const 10000)
   )
   (i32.const 8736)
  )
  (if
   (call $~lib/string/String.__eq
    (local.get $3)
    (i32.const 7008)
   )
   (block
    (call $~lib/as-chain/system/check
     (i64.eq
      (call $~lib/as-chain/asset/Symbol#code
       (i32.load offset=8
        (local.get $4)
       )
      )
      (call $~lib/as-chain/asset/Symbol#code
       (i32.load offset=16
        (local.get $6)
       )
      )
     )
     (i32.const 8800)
    )
    (call $~lib/as-chain/system/check
     (i32.eq
      (i32.and
       (call $~lib/as-chain/asset/Symbol#precision
        (i32.load offset=8
         (local.get $4)
        )
       )
       (i32.const 255)
      )
      (i32.and
       (call $~lib/as-chain/asset/Symbol#precision
        (i32.load offset=16
         (local.get $6)
        )
       )
       (i32.const 255)
      )
     )
     (i32.const 7424)
    )
    (call $assembly/orderbook/orderbook.contract/orderbook#lockBalanceMarket
     (local.get $0)
     (local.get $1)
     (local.get $3)
     (local.get $4)
     (local.get $6)
    )
    (call $assembly/orderbook/orderbook.contract/orderbook#executeMarketBuy
     (local.get $0)
     (local.get $1)
     (local.get $6)
     (i64.load
      (local.get $4)
     )
     (local.get $5)
    )
   )
   (block
    (call $~lib/as-chain/system/check
     (i64.eq
      (call $~lib/as-chain/asset/Symbol#code
       (i32.load offset=8
        (local.get $4)
       )
      )
      (call $~lib/as-chain/asset/Symbol#code
       (i32.load offset=8
        (local.get $6)
       )
      )
     )
     (i32.const 11008)
    )
    (call $~lib/as-chain/system/check
     (i32.eq
      (i32.and
       (call $~lib/as-chain/asset/Symbol#precision
        (i32.load offset=8
         (local.get $4)
        )
       )
       (i32.const 255)
      )
      (i32.and
       (call $~lib/as-chain/asset/Symbol#precision
        (i32.load offset=8
         (local.get $6)
        )
       )
       (i32.const 255)
      )
     )
     (i32.const 7424)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (i64.load
       (local.get $4)
      )
      (i64.load
       (i32.load offset=24
        (local.get $6)
       )
      )
     )
     (i32.const 7584)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (i64.load
       (local.get $4)
      )
      (i64.load
       (i32.load offset=28
        (local.get $6)
       )
      )
     )
     (i32.const 7648)
    )
    (call $assembly/orderbook/orderbook.contract/orderbook#lockBalanceMarket
     (local.get $0)
     (local.get $1)
     (local.get $3)
     (local.get $4)
     (local.get $6)
    )
    (call $assembly/orderbook/orderbook.contract/orderbook#executeMarketSell
     (local.get $0)
     (local.get $1)
     (local.get $6)
     (i64.load
      (local.get $4)
     )
     (local.get $5)
    )
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#stopLossOrder (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32)
  (local $7 i32)
  (local $8 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (i32.load8_u offset=12
     (call $assembly/orderbook/orderbook.contract/orderbook#getConfig
      (local.get $0)
     )
    )
   )
   (i32.const 6864)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/string/String.__eq
    (i32.load offset=40
     (local.tee $7
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#requireGet
       (i32.load offset=12
        (local.get $0)
       )
       (local.get $2)
      )
     )
    )
    (i32.const 5728)
   )
   (i32.const 6912)
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (call $~lib/string/String.__eq
     (local.get $3)
     (i32.const 7008)
    )
    (i32.const 1)
    (call $~lib/string/String.__eq
     (local.get $3)
     (i32.const 7040)
    )
   )
   (i32.const 7072)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $6)
    )
    (i64.const 0)
   )
   (i32.const 7120)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $4)
    )
    (i64.const 0)
   )
   (i32.const 11264)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (local.get $5)
    )
    (i64.const 0)
   )
   (i32.const 11344)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $6)
     )
    )
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $7)
     )
    )
   )
   (i32.const 7264)
  )
  (call $~lib/as-chain/system/check
   (i32.eq
    (i32.and
     (call $~lib/as-chain/asset/Symbol#precision
      (i32.load offset=8
       (local.get $6)
      )
     )
     (i32.const 255)
    )
    (i32.and
     (call $~lib/as-chain/asset/Symbol#precision
      (i32.load offset=8
       (local.get $7)
      )
     )
     (i32.const 255)
    )
   )
   (i32.const 7424)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $4)
     )
    )
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=16
      (local.get $7)
     )
    )
   )
   (i32.const 11424)
  )
  (call $~lib/as-chain/system/check
   (i32.eq
    (i32.and
     (call $~lib/as-chain/asset/Symbol#precision
      (i32.load offset=8
       (local.get $4)
      )
     )
     (i32.const 255)
    )
    (i32.and
     (call $~lib/as-chain/asset/Symbol#precision
      (i32.load offset=16
       (local.get $7)
      )
     )
     (i32.const 255)
    )
   )
   (i32.const 11520)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=8
      (local.get $5)
     )
    )
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=16
      (local.get $7)
     )
    )
   )
   (i32.const 11616)
  )
  (call $~lib/as-chain/system/check
   (i32.eq
    (i32.and
     (call $~lib/as-chain/asset/Symbol#precision
      (i32.load offset=8
       (local.get $5)
      )
     )
     (i32.const 255)
    )
    (i32.and
     (call $~lib/as-chain/asset/Symbol#precision
      (i32.load offset=16
       (local.get $7)
      )
     )
     (i32.const 255)
    )
   )
   (i32.const 11712)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (i64.load
     (local.get $6)
    )
    (i64.load
     (i32.load offset=24
      (local.get $7)
     )
    )
   )
   (i32.const 7584)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (i64.load
     (local.get $6)
    )
    (i64.load
     (i32.load offset=28
      (local.get $7)
     )
    )
   )
   (i32.const 7648)
  )
  (call $~lib/as-chain/system/check
   (i64.eqz
    (i64.rem_s
     (i64.load
      (local.get $4)
     )
     (i64.load
      (i32.load offset=32
       (local.get $7)
      )
     )
    )
   )
   (i32.const 11792)
  )
  (call $~lib/as-chain/system/check
   (i64.eqz
    (i64.rem_s
     (i64.load
      (local.get $5)
     )
     (i64.load
      (i32.load offset=32
       (local.get $7)
      )
     )
    )
   )
   (i32.const 11904)
  )
  (if
   (i64.gt_s
    (i64.load
     (local.tee $8
      (call $assembly/orderbook/orderbook.contract/orderbook#getCurrentMarketPrice
       (local.get $0)
       (local.get $2)
      )
     )
    )
    (i64.const 0)
   )
   (block
    (if
     (call $~lib/string/String.__eq
      (local.get $3)
      (i32.const 7008)
     )
     (call $~lib/as-chain/system/check
      (i64.ge_s
       (i64.load
        (local.get $4)
       )
       (i64.load
        (local.get $8)
       )
      )
      (i32.const 12016)
     )
     (call $~lib/as-chain/system/check
      (i64.le_s
       (i64.load
        (local.get $4)
       )
       (i64.load
        (local.get $8)
       )
      )
      (i32.const 12128)
     )
    )
    (if
     (call $~lib/string/String.__eq
      (local.get $3)
      (i32.const 7008)
     )
     (block
      (call $~lib/as-chain/system/check
       (i64.ge_s
        (i64.load
         (local.get $5)
        )
        (i64.load
         (local.get $4)
        )
       )
       (i32.const 12240)
      )
      (call $~lib/as-chain/system/check
       (if (result i32)
        (i64.le_u
         (i64.load
          (local.get $5)
         )
         (i64.const 9223372036854775807)
        )
        (i64.le_s
         (i64.load
          (local.get $5)
         )
         (i64.shl
          (i64.load
           (local.get $4)
          )
          (i64.const 1)
         )
        )
        (i32.const 0)
       )
       (i32.const 12352)
      )
     )
     (block
      (call $~lib/as-chain/system/check
       (i64.le_s
        (i64.load
         (local.get $5)
        )
        (i64.load
         (local.get $4)
        )
       )
       (i32.const 12464)
      )
      (call $~lib/as-chain/system/check
       (if (result i32)
        (i64.le_s
         (i64.load
          (local.get $4)
         )
         (i64.shl
          (i64.load
           (local.get $5)
          )
          (i64.const 1)
         )
        )
        (i32.const 1)
        (i64.gt_u
         (i64.load
          (local.get $4)
         )
         (i64.const 9223372036854775807)
        )
       )
       (i32.const 12576)
      )
     )
    )
   )
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#lockBalance
   (local.get $0)
   (local.get $1)
   (local.get $3)
   (local.get $6)
   (call $assembly/orderbook/orderbook.contract/orderbook#calculateTotalValue
    (local.get $5)
    (local.get $6)
    (local.get $7)
   )
   (local.get $7)
  )
  (local.set $1
   (call $assembly/orderbook/tables/orders.table/OrdersTable#constructor
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#get:availablePrimaryKey
     (i32.load offset=16
      (local.get $0)
     )
    )
    (local.get $2)
    (local.get $1)
    (local.get $3)
    (i32.const 12688)
    (local.get $5)
    (local.get $6)
    (call $~lib/as-chain/asset/Asset#constructor
     (i64.const 0)
     (i32.load offset=8
      (local.get $6)
     )
    )
    (local.get $6)
    (local.get $4)
    (i64.extend_i32_u
     (call $~lib/as-chain/system/currentTimeSec)
    )
    (i64.extend_i32_u
     (call $~lib/as-chain/system/currentTimeSec)
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#store
   (i32.load offset=16
    (local.get $0)
   )
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#calculateTradeAmount (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (call $~lib/as-chain/asset/Asset#constructor
   (select
    (local.tee $2
     (i64.load
      (i32.load offset=40
       (local.get $0)
      )
     )
    )
    (local.tee $3
     (i64.load
      (i32.load offset=40
       (local.get $1)
      )
     )
    )
    (i64.lt_s
     (local.get $2)
     (local.get $3)
    )
   )
   (i32.load offset=8
    (i32.load offset=32
     (local.get $0)
    )
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#updateOrderAfterTrade (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.tee $3
       (i32.load offset=36
        (local.get $1)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $2)
     )
    )
   )
   (i32.const 6672)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $4
     (i64.add
      (i64.load
       (local.get $3)
      )
      (i64.load
       (local.get $2)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 6736)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $4)
    (i64.const 4611686018427387903)
   )
   (i32.const 6800)
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:filled_amount
   (local.get $1)
   (call $~lib/as-chain/asset/Asset#constructor
    (local.get $4)
    (call $~lib/as-chain/asset/Symbol.fromU64
     (i64.load
      (i32.load offset=8
       (local.get $3)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.tee $3
       (i32.load offset=40
        (local.get $1)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $2)
     )
    )
   )
   (i32.const 6672)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $4
     (i64.sub
      (i64.load
       (local.get $3)
      )
      (i64.load
       (local.get $2)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 8528)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $4)
    (i64.const 4611686018427387903)
   )
   (i32.const 8592)
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:status
   (local.get $1)
   (call $~lib/as-chain/asset/Asset#constructor
    (local.get $4)
    (call $~lib/as-chain/asset/Symbol.fromU64
     (i64.load
      (i32.load offset=8
       (local.get $3)
      )
     )
    )
   )
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:status
   (local.get $1)
   (select
    (i32.const 2)
    (i32.const 1)
    (i64.eqz
     (i64.load
      (i32.load offset=40
       (local.get $1)
      )
     )
    )
   )
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:updated_at
   (local.get $1)
   (i64.extend_i32_u
    (call $~lib/as-chain/system/currentTimeSec)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#update
   (i32.load offset=16
    (local.get $0)
   )
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#executeTrade (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local.set $12
   (select
    (local.get $1)
    (local.get $2)
    (call $~lib/string/String.__eq
     (i32.load offset=20
      (local.get $1)
     )
     (i32.const 7008)
    )
   )
  )
  (local.set $13
   (select
    (local.get $1)
    (local.get $2)
    (call $~lib/string/String.__eq
     (i32.load offset=20
      (local.get $1)
     )
     (i32.const 7040)
    )
   )
  )
  (local.set $14
   (i32.load offset=16
    (local.get $12)
   )
  )
  (local.set $15
   (i32.load offset=16
    (local.get $13)
   )
  )
  (local.set $9
   (call $assembly/orderbook/orderbook.contract/orderbook#calculateTotalValue
    (local.get $3)
    (local.get $4)
    (local.get $5)
   )
  )
  (local.set $2
   (if (result i32)
    (block (result i32)
     (if
      (i32.eqz
       (local.tee $1
        (i64.lt_u
         (i64.load offset=56
          (local.get $12)
         )
         (i64.load offset=56
          (local.get $13)
         )
        )
       )
      )
      (local.set $1
       (if (result i32)
        (i64.eq
         (i64.load offset=56
          (local.get $12)
         )
         (i64.load offset=56
          (local.get $13)
         )
        )
        (i64.lt_u
         (i64.load
          (local.get $12)
         )
         (i64.load
          (local.get $13)
         )
        )
        (i32.const 0)
       )
      )
     )
     (local.get $1)
    )
    (i32.load16_u offset=36
     (local.get $5)
    )
    (i32.load16_u offset=38
     (local.get $5)
    )
   )
  )
  (local.set $10
   (if (result i32)
    (local.get $1)
    (i32.load16_u offset=38
     (local.get $5)
    )
    (i32.load16_u offset=36
     (local.get $5)
    )
   )
  )
  (local.set $11
   (call $~lib/as-chain/asset/Asset#constructor
    (call $assembly/orderbook/orderbook.contract/orderbook#calculateFee
     (i64.load
      (local.get $9)
     )
     (local.get $2)
    )
    (i32.load offset=16
     (local.get $5)
    )
   )
  )
  (local.set $10
   (call $~lib/as-chain/asset/Asset#constructor
    (call $assembly/orderbook/orderbook.contract/orderbook#calculateFee
     (i64.load
      (local.get $9)
     )
     (local.get $10)
    )
    (i32.load offset=16
     (local.get $5)
    )
   )
  )
  (local.set $2
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#requireGet
    (local.tee $16
     (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
      (i32.load
       (local.get $0)
      )
      (local.get $14)
     )
    )
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=16
      (local.get $5)
     )
    )
    (i32.const 9136)
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.get $9)
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $11)
     )
    )
   )
   (i32.const 6672)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $6
     (i64.add
      (i64.load
       (local.get $9)
      )
      (i64.load
       (local.get $11)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 6736)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $6)
    (i64.const 4611686018427387903)
   )
   (i32.const 6800)
  )
  (local.set $7
   (call $~lib/as-chain/asset/Asset#constructor
    (local.get $6)
    (call $~lib/as-chain/asset/Symbol.fromU64
     (i64.load
      (i32.load offset=8
       (local.get $9)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.tee $8
       (i32.load offset=4
        (local.get $2)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=8
      (local.tee $17
       (i32.load offset=8
        (local.get $2)
       )
      )
     )
    )
   )
   (i32.const 6672)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $6
     (i64.add
      (i64.load
       (local.get $8)
      )
      (i64.load
       (local.get $17)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 6736)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $6)
    (i64.const 4611686018427387903)
   )
   (i32.const 6800)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (i64.load
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $6)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $8)
        )
       )
      )
     )
    )
    (i64.load
     (local.get $7)
    )
   )
   (i32.const 9200)
  )
  (if
   (i64.ge_s
    (i64.load
     (i32.load offset=8
      (local.get $2)
     )
    )
    (i64.load
     (local.get $7)
    )
   )
   (block
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.tee $8
         (i32.load offset=8
          (local.get $2)
         )
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $7)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $6
       (i64.sub
        (i64.load
         (local.get $8)
        )
        (i64.load
         (local.get $7)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 8528)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $6)
      (i64.const 4611686018427387903)
     )
     (i32.const 8592)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $2)
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $6)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $8)
        )
       )
      )
     )
    )
   )
   (block
    (local.set $6
     (i64.sub
      (i64.load
       (local.get $7)
      )
      (i64.load
       (i32.load offset=8
        (local.get $2)
       )
      )
     )
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $2)
     (call $~lib/as-chain/asset/Asset#constructor
      (i64.const 0)
      (i32.load offset=8
       (i32.load offset=8
        (local.get $2)
       )
      )
     )
    )
    (local.set $7
     (i32.load offset=4
      (local.get $2)
     )
    )
    (local.set $8
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $6)
      (i32.load offset=8
       (i32.load offset=4
        (local.get $2)
       )
      )
     )
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.get $7)
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $8)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $6
       (i64.sub
        (i64.load
         (local.get $7)
        )
        (i64.load
         (local.get $8)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 8528)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $6)
      (i64.const 4611686018427387903)
     )
     (i32.const 8592)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $2)
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $6)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $7)
        )
       )
      )
     )
    )
   )
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $2)
   (i64.extend_i32_u
    (call $~lib/as-chain/system/currentTimeSec)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#update
   (local.get $16)
   (local.get $2)
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (i64.load
     (i32.load offset=8
      (local.tee $2
       (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#requireGet
        (local.tee $8
         (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
          (i32.load
           (local.get $0)
          )
          (local.get $15)
         )
        )
        (call $~lib/as-chain/asset/Symbol#code
         (i32.load offset=8
          (local.get $5)
         )
        )
        (i32.const 9280)
       )
      )
     )
    )
    (i64.load
     (local.get $4)
    )
   )
   (i32.const 9344)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.tee $7
       (i32.load offset=8
        (local.get $2)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $4)
     )
    )
   )
   (i32.const 6672)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $6
     (i64.sub
      (i64.load
       (local.get $7)
      )
      (i64.load
       (local.get $4)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 8528)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $6)
    (i64.const 4611686018427387903)
   )
   (i32.const 8592)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (call $~lib/as-chain/asset/Asset#constructor
    (local.get $6)
    (call $~lib/as-chain/asset/Symbol.fromU64
     (i64.load
      (i32.load offset=8
       (local.get $7)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $2)
   (i64.extend_i32_u
    (call $~lib/as-chain/system/currentTimeSec)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#update
   (local.get $8)
   (local.get $2)
   (i32.load
    (local.get $0)
   )
  )
  (local.set $2
   (i32.load offset=12
    (local.get $5)
   )
  )
  (local.set $7
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 12736)
   (i32.const 1)
   (call $~lib/number/U64#toString
    (i64.load
     (local.get $12)
    )
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 12736)
   (i32.const 3)
   (call $~lib/as-chain/asset/Asset#toString
    (local.get $4)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 12736)
   (i32.const 5)
   (call $~lib/as-chain/asset/Asset#toString
    (local.get $3)
   )
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#transfer
   (local.get $0)
   (local.get $2)
   (local.get $7)
   (local.get $14)
   (local.get $4)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 12736)
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.get $9)
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $10)
     )
    )
   )
   (i32.const 6672)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $6
     (i64.sub
      (i64.load
       (local.get $9)
      )
      (i64.load
       (local.get $10)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 8528)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $6)
    (i64.const 4611686018427387903)
   )
   (i32.const 8592)
  )
  (local.set $2
   (call $~lib/as-chain/asset/Asset#constructor
    (local.get $6)
    (call $~lib/as-chain/asset/Symbol.fromU64
     (i64.load
      (i32.load offset=8
       (local.get $9)
      )
     )
    )
   )
  )
  (local.set $7
   (i32.load offset=20
    (local.get $5)
   )
  )
  (local.set $8
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 12784)
   (i32.const 1)
   (call $~lib/number/U64#toString
    (i64.load
     (local.get $13)
    )
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 12784)
   (i32.const 3)
   (call $~lib/as-chain/asset/Asset#toString
    (local.get $4)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 12784)
   (i32.const 5)
   (call $~lib/as-chain/asset/Asset#toString
    (local.get $3)
   )
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#transfer
   (local.get $0)
   (local.get $7)
   (local.get $8)
   (local.get $15)
   (local.get $2)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 12784)
   )
  )
  (local.set $2
   (call $assembly/orderbook/orderbook.contract/orderbook#getConfig
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.get $11)
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $10)
     )
    )
   )
   (i32.const 6672)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $6
     (i64.add
      (i64.load
       (local.get $11)
      )
      (i64.load
       (local.get $10)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 6736)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $6)
    (i64.const 4611686018427387903)
   )
   (i32.const 6800)
  )
  (local.set $7
   (call $~lib/as-chain/asset/Asset#constructor
    (local.get $6)
    (call $~lib/as-chain/asset/Symbol.fromU64
     (i64.load
      (i32.load offset=8
       (local.get $11)
      )
     )
    )
   )
  )
  (local.set $8
   (i32.load offset=20
    (local.get $5)
   )
  )
  (local.set $16
   (i32.load
    (local.get $0)
   )
  )
  (local.set $2
   (i32.load offset=24
    (local.get $2)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 12832)
   (i32.const 1)
   (call $~lib/number/U64#toString
    (i64.load
     (local.get $5)
    )
   )
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#transfer
   (local.get $0)
   (local.get $8)
   (local.get $16)
   (local.get $2)
   (local.get $7)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 12832)
   )
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#recordFeeStats
   (local.get $0)
   (i64.load
    (local.get $5)
   )
   (i32.load offset=20
    (local.get $5)
   )
   (local.get $11)
   (local.get $1)
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#recordFeeStats
   (local.get $0)
   (i64.load
    (local.get $5)
   )
   (i32.load offset=20
    (local.get $5)
   )
   (local.get $10)
   (i32.eqz
    (local.get $1)
   )
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#updateOrderAfterTrade
   (local.get $0)
   (local.get $12)
   (local.get $4)
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#updateOrderAfterTrade
   (local.get $0)
   (local.get $13)
   (local.get $4)
  )
  (local.set $1
   (call $assembly/orderbook/tables/trades.table/TradesTable#constructor
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/trades.table/TradesTable>#get:availablePrimaryKey
     (i32.load offset=20
      (local.get $0)
     )
    )
    (i64.load
     (local.get $5)
    )
    (i64.load
     (local.get $12)
    )
    (i64.load
     (local.get $13)
    )
    (local.get $14)
    (local.get $15)
    (local.get $3)
    (local.get $4)
    (local.get $9)
    (local.get $11)
    (local.get $10)
    (i64.extend_i32_u
     (call $~lib/as-chain/system/currentTimeSec)
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/trades.table/TradesTable>#store
   (i32.load offset=20
    (local.get $0)
   )
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#verifyTradeInvariants
   (local.get $4)
   (local.get $9)
   (local.get $11)
   (local.get $10)
   (local.get $5)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#get (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#getByKey (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#getByKey
     (i32.const 0)
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
       (local.tee $2
        (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#find
         (local.tee $0
          (i32.load
           (local.get $0)
          )
         )
         (local.get $1)
        )
       )
      )
     )
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<assembly/orderbook/tables/orders.table/OrdersTable>#get
    (i32.load
     (local.get $0)
    )
    (local.get $2)
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#unlockBalance (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local.set $7
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
    (i32.load
     (local.get $0)
    )
    (local.get $1)
   )
  )
  (if
   (call $~lib/string/String.__eq
    (local.get $2)
    (i32.const 7008)
   )
   (block
    (local.set $1
     (call $assembly/orderbook/orderbook.contract/orderbook#calculateTotalValue
      (local.get $5)
      (local.get $3)
      (local.get $4)
     )
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (i64.load
       (i32.load offset=8
        (local.tee $2
         (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#requireGet
          (local.get $7)
          (call $~lib/as-chain/asset/Symbol#code
           (i32.load offset=16
            (local.get $4)
           )
          )
          (i32.const 10784)
         )
        )
       )
      )
      (i64.load
       (local.get $1)
      )
     )
     (i32.const 10832)
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.tee $3
         (i32.load offset=8
          (local.get $2)
         )
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $1)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $6
       (i64.sub
        (i64.load
         (local.get $3)
        )
        (i64.load
         (local.get $1)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 8528)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $6)
      (i64.const 4611686018427387903)
     )
     (i32.const 8592)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $2)
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $6)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $3)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.tee $3
         (i32.load offset=4
          (local.get $2)
         )
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $1)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $6
       (i64.add
        (i64.load
         (local.get $3)
        )
        (i64.load
         (local.get $1)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 6736)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $6)
      (i64.const 4611686018427387903)
     )
     (i32.const 6800)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $2)
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $6)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $3)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:table
     (local.get $2)
     (i64.extend_i32_u
      (call $~lib/as-chain/system/currentTimeSec)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#update
     (local.get $7)
     (local.get $2)
     (i32.load
      (local.get $0)
     )
    )
   )
   (block
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (i64.load
       (i32.load offset=8
        (local.tee $1
         (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#requireGet
          (local.get $7)
          (call $~lib/as-chain/asset/Symbol#code
           (i32.load offset=8
            (local.get $4)
           )
          )
          (i32.const 10784)
         )
        )
       )
      )
      (i64.load
       (local.get $3)
      )
     )
     (i32.const 10832)
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.tee $2
         (i32.load offset=8
          (local.get $1)
         )
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $3)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $6
       (i64.sub
        (i64.load
         (local.get $2)
        )
        (i64.load
         (local.get $3)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 8528)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $6)
      (i64.const 4611686018427387903)
     )
     (i32.const 8592)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $1)
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $6)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $2)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.tee $2
         (i32.load offset=4
          (local.get $1)
         )
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $3)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $6
       (i64.add
        (i64.load
         (local.get $2)
        )
        (i64.load
         (local.get $3)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 6736)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $6)
      (i64.const 4611686018427387903)
     )
     (i32.const 6800)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $1)
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $6)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $2)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:table
     (local.get $1)
     (i64.extend_i32_u
      (call $~lib/as-chain/system/currentTimeSec)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#update
     (local.get $7)
     (local.get $1)
     (i32.load
      (local.get $0)
     )
    )
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#processLimit (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local.set $5
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#requireGet
    (i32.load offset=12
     (local.get $0)
    )
    (local.get $1)
   )
  )
  (local.set $9
   (call $assembly/orderbook/orderbook.contract/orderbook#getBestBuyOrders
    (local.get $0)
    (local.get $1)
    (local.get $2)
   )
  )
  (local.set $10
   (call $assembly/orderbook/orderbook.contract/orderbook#getBestSellOrders
    (local.get $0)
    (local.get $1)
    (local.get $2)
   )
  )
  (loop $for-loop|0
   (if
    (select
     (i32.gt_s
      (local.get $2)
      (local.get $11)
     )
     (i32.const 0)
     (i32.lt_s
      (local.get $8)
      (i32.load offset=12
       (local.get $9)
      )
     )
    )
    (block
     (if
      (i32.eqz
       (if (result i32)
        (i32.load8_u offset=49
         (local.tee $6
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (local.get $9)
           (local.get $8)
          )
         )
        )
        (i32.ne
         (i32.load8_u offset=49
          (local.get $6)
         )
         (i32.const 1)
        )
        (i32.const 0)
       )
      )
      (block
       (local.set $7
        (i32.const 0)
       )
       (loop $for-loop|1
        (if
         (select
          (i32.gt_s
           (local.get $2)
           (local.get $11)
          )
          (i32.const 0)
          (i32.lt_s
           (local.get $7)
           (i32.load offset=12
            (local.get $10)
           )
          )
         )
         (block $for-break1
          (block $for-continue|1
           (br_if $for-continue|1
            (if (result i32)
             (i32.load8_u offset=49
              (local.tee $3
               (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                (local.get $10)
                (local.get $7)
               )
              )
             )
             (i32.ne
              (i32.load8_u offset=49
               (local.get $3)
              )
              (i32.const 1)
             )
             (i32.const 0)
            )
           )
           (br_if $for-continue|1
            (i64.eq
             (i64.load
              (i32.load offset=16
               (local.get $6)
              )
             )
             (i64.load
              (i32.load offset=16
               (local.get $3)
              )
             )
            )
           )
           (if
            (i64.ge_s
             (i64.load
              (i32.load offset=28
               (local.get $6)
              )
             )
             (i64.load
              (i32.load offset=28
               (local.get $3)
              )
             )
            )
            (block
             (local.set $4
              (call $assembly/orderbook/orderbook.contract/orderbook#calculateTradeAmount
               (local.get $6)
               (local.get $3)
              )
             )
             (call $assembly/orderbook/orderbook.contract/orderbook#executeTrade
              (local.get $0)
              (local.get $6)
              (local.get $3)
              (i32.load offset=28
               (local.get $3)
              )
              (local.get $4)
              (local.get $5)
             )
             (local.set $11
              (i32.add
               (local.get $11)
               (i32.const 1)
              )
             )
             (call $assembly/orderbook/orderbook.contract/orderbook#unlockPartialFill
              (local.get $0)
              (local.get $6)
              (local.get $5)
             )
             (call $assembly/orderbook/orderbook.contract/orderbook#unlockPartialFill
              (local.get $0)
              (local.get $3)
              (local.get $5)
             )
             (local.set $4
              (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#get
               (i32.load offset=16
                (local.get $0)
               )
               (i64.load
                (local.get $6)
               )
              )
             )
             (local.set $3
              (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#get
               (i32.load offset=16
                (local.get $0)
               )
               (i64.load
                (local.get $3)
               )
              )
             )
             (if
              (local.get $4)
              (call $~lib/array/Array<assembly/orderbook/tables/orders.table/OrdersTable>#__set
               (local.get $9)
               (local.get $8)
               (local.get $4)
              )
             )
             (if
              (local.get $3)
              (call $~lib/array/Array<assembly/orderbook/tables/orders.table/OrdersTable>#__set
               (local.get $10)
               (local.get $7)
               (local.get $3)
              )
             )
             (if
              (if (result i32)
               (if (result i32)
                (local.get $4)
                (i32.eq
                 (i32.load8_u offset=49
                  (local.get $4)
                 )
                 (i32.const 1)
                )
                (i32.const 0)
               )
               (i64.lt_s
                (i64.load
                 (i32.load offset=40
                  (local.get $4)
                 )
                )
                (i64.load
                 (i32.load offset=24
                  (local.get $5)
                 )
                )
               )
               (i32.const 0)
              )
              (block
               (call $assembly/orderbook/orderbook.contract/orderbook#unlockBalance
                (local.get $0)
                (i32.load offset=16
                 (local.get $4)
                )
                (i32.load offset=20
                 (local.get $4)
                )
                (i32.load offset=40
                 (local.get $4)
                )
                (local.get $5)
                (i32.load offset=28
                 (local.get $4)
                )
               )
               (call $assembly/orderbook/tables/orders.table/OrdersTable#set:status
                (local.get $4)
                (i32.const 3)
               )
               (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#update
                (i32.load offset=16
                 (local.get $0)
                )
                (local.get $4)
                (i32.load
                 (local.get $0)
                )
               )
               (call $~lib/array/Array<assembly/orderbook/tables/orders.table/OrdersTable>#__set
                (local.get $9)
                (local.get $8)
                (local.get $4)
               )
              )
             )
             (if
              (if (result i32)
               (if (result i32)
                (local.get $3)
                (i32.eq
                 (i32.load8_u offset=49
                  (local.get $3)
                 )
                 (i32.const 1)
                )
                (i32.const 0)
               )
               (i64.lt_s
                (i64.load
                 (i32.load offset=40
                  (local.get $3)
                 )
                )
                (i64.load
                 (i32.load offset=24
                  (local.get $5)
                 )
                )
               )
               (i32.const 0)
              )
              (block
               (call $assembly/orderbook/orderbook.contract/orderbook#unlockBalance
                (local.get $0)
                (i32.load offset=16
                 (local.get $3)
                )
                (i32.load offset=20
                 (local.get $3)
                )
                (i32.load offset=40
                 (local.get $3)
                )
                (local.get $5)
                (i32.load offset=28
                 (local.get $3)
                )
               )
               (call $assembly/orderbook/tables/orders.table/OrdersTable#set:status
                (local.get $3)
                (i32.const 3)
               )
               (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#update
                (i32.load offset=16
                 (local.get $0)
                )
                (local.get $3)
                (i32.load
                 (local.get $0)
                )
               )
               (call $~lib/array/Array<assembly/orderbook/tables/orders.table/OrdersTable>#__set
                (local.get $10)
                (local.get $7)
                (local.get $3)
               )
              )
             )
             (br_if $for-break1
              (if (result i32)
               (local.get $4)
               (i32.eq
                (i32.load8_u offset=49
                 (local.get $4)
                )
                (i32.const 2)
               )
               (i32.const 0)
              )
             )
            )
           )
          )
          (local.set $7
           (i32.add
            (local.get $7)
            (i32.const 1)
           )
          )
          (br $for-loop|1)
         )
        )
       )
      )
     )
     (local.set $8
      (i32.add
       (local.get $8)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#executeStopLossTrade (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local.set $12
   (if (result i32)
    (call $~lib/string/String.__eq
     (i32.load offset=20
      (local.get $1)
     )
     (i32.const 7008)
    )
    (i32.load offset=16
     (local.get $1)
    )
    (i32.load offset=16
     (local.get $2)
    )
   )
  )
  (local.set $14
   (if (result i32)
    (call $~lib/string/String.__eq
     (i32.load offset=20
      (local.get $1)
     )
     (i32.const 7040)
    )
    (i32.load offset=16
     (local.get $1)
    )
    (i32.load offset=16
     (local.get $2)
    )
   )
  )
  (local.set $11
   (call $~lib/as-chain/asset/Asset#constructor
    (call $assembly/orderbook/orderbook.contract/orderbook#calculateFee
     (i64.load
      (local.tee $10
       (call $assembly/orderbook/orderbook.contract/orderbook#calculateTotalValue
        (local.get $3)
        (local.get $4)
        (local.get $5)
       )
      )
     )
     (i32.load16_u offset=38
      (local.get $5)
     )
    )
    (i32.load offset=16
     (local.get $5)
    )
   )
  )
  (local.set $13
   (call $~lib/as-chain/asset/Asset#constructor
    (call $assembly/orderbook/orderbook.contract/orderbook#calculateFee
     (i64.load
      (local.get $10)
     )
     (i32.load16_u offset=36
      (local.get $5)
     )
    )
    (i32.load offset=16
     (local.get $5)
    )
   )
  )
  (local.set $17
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
    (i32.load
     (local.get $0)
    )
    (local.get $12)
   )
  )
  (local.set $18
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
    (i32.load
     (local.get $0)
    )
    (local.get $14)
   )
  )
  (local.set $15
   (select
    (local.get $11)
    (local.get $13)
    (i64.eq
     (i64.load
      (local.get $12)
     )
     (i64.load
      (i32.load offset=16
       (local.get $1)
      )
     )
    )
   )
  )
  (local.set $16
   (select
    (local.get $11)
    (local.get $13)
    (i64.eq
     (i64.load
      (local.get $14)
     )
     (i64.load
      (i32.load offset=16
       (local.get $1)
      )
     )
    )
   )
  )
  (local.set $6
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#requireGet
    (local.get $17)
    (call $~lib/as-chain/asset/Symbol#code
     (i32.load offset=16
      (local.get $5)
     )
    )
    (i32.const 9136)
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.get $10)
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $15)
     )
    )
   )
   (i32.const 6672)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $7
     (i64.add
      (i64.load
       (local.get $10)
      )
      (i64.load
       (local.get $15)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 6736)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $7)
    (i64.const 4611686018427387903)
   )
   (i32.const 6800)
  )
  (local.set $8
   (call $~lib/as-chain/asset/Asset#constructor
    (local.get $7)
    (call $~lib/as-chain/asset/Symbol.fromU64
     (i64.load
      (i32.load offset=8
       (local.get $10)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.tee $9
       (i32.load offset=4
        (local.get $6)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=8
      (local.tee $19
       (i32.load offset=8
        (local.get $6)
       )
      )
     )
    )
   )
   (i32.const 6672)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $7
     (i64.add
      (i64.load
       (local.get $9)
      )
      (i64.load
       (local.get $19)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 6736)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $7)
    (i64.const 4611686018427387903)
   )
   (i32.const 6800)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (i64.load
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $7)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $9)
        )
       )
      )
     )
    )
    (i64.load
     (local.get $8)
    )
   )
   (i32.const 9200)
  )
  (if
   (i64.ge_s
    (i64.load
     (i32.load offset=8
      (local.get $6)
     )
    )
    (i64.load
     (local.get $8)
    )
   )
   (block
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.tee $9
         (i32.load offset=8
          (local.get $6)
         )
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $8)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $7
       (i64.sub
        (i64.load
         (local.get $9)
        )
        (i64.load
         (local.get $8)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 8528)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $7)
      (i64.const 4611686018427387903)
     )
     (i32.const 8592)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $6)
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $7)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $9)
        )
       )
      )
     )
    )
   )
   (block
    (local.set $7
     (i64.sub
      (i64.load
       (local.get $8)
      )
      (i64.load
       (i32.load offset=8
        (local.get $6)
       )
      )
     )
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $6)
     (call $~lib/as-chain/asset/Asset#constructor
      (i64.const 0)
      (i32.load offset=8
       (i32.load offset=8
        (local.get $6)
       )
      )
     )
    )
    (local.set $8
     (i32.load offset=4
      (local.get $6)
     )
    )
    (local.set $9
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $7)
      (i32.load offset=8
       (i32.load offset=4
        (local.get $6)
       )
      )
     )
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.get $8)
       )
      )
      (i64.load
       (i32.load offset=8
        (local.get $9)
       )
      )
     )
     (i32.const 6672)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $7
       (i64.sub
        (i64.load
         (local.get $8)
        )
        (i64.load
         (local.get $9)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 8528)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $7)
      (i64.const 4611686018427387903)
     )
     (i32.const 8592)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $6)
     (call $~lib/as-chain/asset/Asset#constructor
      (local.get $7)
      (call $~lib/as-chain/asset/Symbol.fromU64
       (i64.load
        (i32.load offset=8
         (local.get $8)
        )
       )
      )
     )
    )
   )
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $6)
   (i64.extend_i32_u
    (call $~lib/as-chain/system/currentTimeSec)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#update
   (local.get $17)
   (local.get $6)
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (i64.load
     (i32.load offset=8
      (local.tee $6
       (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#requireGet
        (local.get $18)
        (call $~lib/as-chain/asset/Symbol#code
         (i32.load offset=8
          (local.get $5)
         )
        )
        (i32.const 9280)
       )
      )
     )
    )
    (i64.load
     (local.get $4)
    )
   )
   (i32.const 9344)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.tee $8
       (i32.load offset=8
        (local.get $6)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $4)
     )
    )
   )
   (i32.const 6672)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $7
     (i64.sub
      (i64.load
       (local.get $8)
      )
      (i64.load
       (local.get $4)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 8528)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $7)
    (i64.const 4611686018427387903)
   )
   (i32.const 8592)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $6)
   (call $~lib/as-chain/asset/Asset#constructor
    (local.get $7)
    (call $~lib/as-chain/asset/Symbol.fromU64
     (i64.load
      (i32.load offset=8
       (local.get $8)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $6)
   (i64.extend_i32_u
    (call $~lib/as-chain/system/currentTimeSec)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#update
   (local.get $18)
   (local.get $6)
   (i32.load
    (local.get $0)
   )
  )
  (local.set $6
   (i32.load offset=12
    (local.get $5)
   )
  )
  (local.set $8
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 12944)
   (i32.const 1)
   (call $~lib/number/U64#toString
    (i64.load
     (local.get $1)
    )
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 12944)
   (i32.const 3)
   (call $~lib/as-chain/asset/Asset#toString
    (local.get $4)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 12944)
   (i32.const 5)
   (call $~lib/as-chain/asset/Asset#toString
    (local.get $3)
   )
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#transfer
   (local.get $0)
   (local.get $6)
   (local.get $8)
   (local.get $12)
   (local.get $4)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 12944)
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.get $10)
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $16)
     )
    )
   )
   (i32.const 6672)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $7
     (i64.sub
      (i64.load
       (local.get $10)
      )
      (i64.load
       (local.get $16)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 8528)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $7)
    (i64.const 4611686018427387903)
   )
   (i32.const 8592)
  )
  (local.set $6
   (call $~lib/as-chain/asset/Asset#constructor
    (local.get $7)
    (call $~lib/as-chain/asset/Symbol.fromU64
     (i64.load
      (i32.load offset=8
       (local.get $10)
      )
     )
    )
   )
  )
  (local.set $8
   (i32.load offset=20
    (local.get $5)
   )
  )
  (local.set $9
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 13040)
   (i32.const 1)
   (call $~lib/as-chain/asset/Asset#toString
    (local.get $4)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 13040)
   (i32.const 3)
   (call $~lib/as-chain/asset/Asset#toString
    (local.get $3)
   )
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#transfer
   (local.get $0)
   (local.get $8)
   (local.get $9)
   (local.get $14)
   (local.get $6)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 13040)
   )
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#updateOrderAfterTrade
   (local.get $0)
   (local.get $1)
   (local.get $4)
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#updateOrderAfterTrade
   (local.get $0)
   (local.get $2)
   (local.get $4)
  )
  (local.set $1
   (call $assembly/orderbook/tables/trades.table/TradesTable#constructor
    (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/trades.table/TradesTable>#get:availablePrimaryKey
     (i32.load offset=20
      (local.get $0)
     )
    )
    (i64.load
     (local.get $5)
    )
    (if (result i64)
     (call $~lib/string/String.__eq
      (i32.load offset=20
       (local.get $1)
      )
      (i32.const 7008)
     )
     (i64.load
      (local.get $1)
     )
     (i64.load
      (local.get $2)
     )
    )
    (if (result i64)
     (call $~lib/string/String.__eq
      (i32.load offset=20
       (local.get $1)
      )
      (i32.const 7040)
     )
     (i64.load
      (local.get $1)
     )
     (i64.load
      (local.get $2)
     )
    )
    (local.get $12)
    (local.get $14)
    (local.get $3)
    (local.get $4)
    (local.get $10)
    (local.get $15)
    (local.get $16)
    (i64.extend_i32_u
     (call $~lib/as-chain/system/currentTimeSec)
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/trades.table/TradesTable>#store
   (i32.load offset=20
    (local.get $0)
   )
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
  (local.set $1
   (call $assembly/orderbook/orderbook.contract/orderbook#getConfig
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.get $11)
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $13)
     )
    )
   )
   (i32.const 6672)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $7
     (i64.add
      (i64.load
       (local.get $11)
      )
      (i64.load
       (local.get $13)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 6736)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $7)
    (i64.const 4611686018427387903)
   )
   (i32.const 6800)
  )
  (local.set $2
   (call $~lib/as-chain/asset/Asset#constructor
    (local.get $7)
    (call $~lib/as-chain/asset/Symbol.fromU64
     (i64.load
      (i32.load offset=8
       (local.get $11)
      )
     )
    )
   )
  )
  (local.set $3
   (i32.load offset=20
    (local.get $5)
   )
  )
  (local.set $12
   (i32.load
    (local.get $0)
   )
  )
  (local.set $1
   (i32.load offset=24
    (local.get $1)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 13088)
   (i32.const 1)
   (call $~lib/number/U64#toString
    (i64.load
     (local.get $5)
    )
   )
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#transfer
   (local.get $0)
   (local.get $3)
   (local.get $12)
   (local.get $1)
   (local.get $2)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 13088)
   )
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#recordFeeStats
   (local.get $0)
   (i64.load
    (local.get $5)
   )
   (i32.load offset=20
    (local.get $5)
   )
   (local.get $11)
   (i32.const 0)
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#recordFeeStats
   (local.get $0)
   (i64.load
    (local.get $5)
   )
   (i32.load offset=20
    (local.get $5)
   )
   (local.get $13)
   (i32.const 1)
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#verifyTradeInvariants
   (local.get $4)
   (local.get $10)
   (local.get $11)
   (local.get $13)
   (local.get $5)
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#matchStopLossOrder (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $5
   (if (result i32)
    (call $~lib/string/String.__eq
     (i32.load offset=20
      (local.get $1)
     )
     (i32.const 7008)
    )
    (call $assembly/orderbook/orderbook.contract/orderbook#getBestSellOrders
     (local.get $0)
     (i64.load
      (local.get $2)
     )
     (i32.const 100)
    )
    (call $assembly/orderbook/orderbook.contract/orderbook#getBestBuyOrders
     (local.get $0)
     (i64.load
      (local.get $2)
     )
     (i32.const 100)
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (i32.load offset=12
      (local.get $5)
     )
    )
    (block $for-break0
     (local.set $3
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (local.get $5)
       (local.get $4)
      )
     )
     (block $for-continue|0
      (br_if $for-continue|0
       (i64.eq
        (i64.load
         (i32.load offset=16
          (local.get $1)
         )
        )
        (i64.load
         (i32.load offset=16
          (local.get $3)
         )
        )
       )
      )
      (if
       (call $~lib/string/String.__eq
        (i32.load offset=20
         (local.get $1)
        )
        (i32.const 7008)
       )
       (br_if $for-continue|0
        (i64.gt_s
         (i64.load
          (i32.load offset=28
           (local.get $3)
          )
         )
         (i64.load
          (i32.load offset=28
           (local.get $1)
          )
         )
        )
       )
       (br_if $for-continue|0
        (i64.lt_s
         (i64.load
          (i32.load offset=28
           (local.get $3)
          )
         )
         (i64.load
          (i32.load offset=28
           (local.get $1)
          )
         )
        )
       )
      )
      (if
       (if (result i32)
        (call $~lib/string/String.__eq
         (i32.load offset=20
          (local.get $1)
         )
         (i32.const 7008)
        )
        (i64.ge_s
         (i64.load
          (i32.load offset=28
           (local.get $1)
          )
         )
         (i64.load
          (i32.load offset=28
           (local.get $3)
          )
         )
        )
        (i64.le_s
         (i64.load
          (i32.load offset=28
           (local.get $1)
          )
         )
         (i64.load
          (i32.load offset=28
           (local.get $3)
          )
         )
        )
       )
       (block
        (local.set $6
         (call $assembly/orderbook/orderbook.contract/orderbook#calculateTradeAmount
          (local.get $1)
          (local.get $3)
         )
        )
        (call $assembly/orderbook/orderbook.contract/orderbook#executeStopLossTrade
         (local.get $0)
         (local.get $1)
         (local.get $3)
         (i32.load offset=28
          (local.get $3)
         )
         (local.get $6)
         (local.get $2)
        )
        (call $assembly/orderbook/orderbook.contract/orderbook#unlockPartialFill
         (local.get $0)
         (local.get $1)
         (local.get $2)
        )
        (call $assembly/orderbook/orderbook.contract/orderbook#unlockPartialFill
         (local.get $0)
         (local.get $3)
         (local.get $2)
        )
        (br_if $for-break0
         (if (result i32)
          (local.tee $3
           (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#get
            (i32.load offset=16
             (local.get $0)
            )
            (i64.load
             (local.get $1)
            )
           )
          )
          (i32.eq
           (i32.load8_u offset=49
            (local.get $3)
           )
           (i32.const 2)
          )
          (i32.const 0)
         )
        )
       )
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#processStopLossTakeProfit (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $6
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#requireGet
    (i32.load offset=12
     (local.get $0)
    )
    (local.get $1)
   )
  )
  (if
   (i64.eqz
    (i64.load
     (local.tee $5
      (call $assembly/orderbook/orderbook.contract/orderbook#getCurrentMarketPrice
       (local.get $0)
       (local.get $1)
      )
     )
    )
   )
   (return)
  )
  (local.set $4
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#first
    (i32.load offset=16
     (local.get $0)
    )
   )
  )
  (loop $while-continue|0
   (if
    (select
     (i32.gt_u
      (local.get $2)
      (local.get $3)
     )
     (i32.const 0)
     (local.get $4)
    )
    (block
     (if
      (if (result i32)
       (if (result i32)
        (if (result i32)
         (i64.eq
          (local.get $1)
          (i64.load offset=8
           (local.get $4)
          )
         )
         (call $~lib/string/String.__eq
          (i32.load offset=24
           (local.get $4)
          )
          (i32.const 12688)
         )
         (i32.const 0)
        )
        (i32.eqz
         (i32.load8_u offset=48
          (local.get $4)
         )
        )
        (i32.const 0)
       )
       (if (result i32)
        (i32.load8_u offset=49
         (local.get $4)
        )
        (i32.eq
         (i32.load8_u offset=49
          (local.get $4)
         )
         (i32.const 1)
        )
        (i32.const 1)
       )
       (i32.const 0)
      )
      (if
       (if (result i32)
        (call $~lib/string/String.__eq
         (i32.load offset=20
          (local.get $4)
         )
         (i32.const 7008)
        )
        (i64.ge_s
         (i64.load
          (local.get $5)
         )
         (i64.load
          (i32.load offset=44
           (local.get $4)
          )
         )
        )
        (i64.le_s
         (i64.load
          (local.get $5)
         )
         (i64.load
          (i32.load offset=44
           (local.get $4)
          )
         )
        )
       )
       (local.set $3
        (block (result i32)
         (call $assembly/orderbook/tables/orders.table/OrdersTable#set:is_triggered
          (local.get $4)
          (i32.const 1)
         )
         (call $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size
          (local.get $4)
          (i32.const 7840)
         )
         (call $assembly/orderbook/tables/orders.table/OrdersTable#set:updated_at
          (local.get $4)
          (i64.extend_i32_u
           (call $~lib/as-chain/system/currentTimeSec)
          )
         )
         (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#update
          (i32.load offset=16
           (local.get $0)
          )
          (local.get $4)
          (i32.load
           (local.get $0)
          )
         )
         (call $assembly/orderbook/orderbook.contract/orderbook#matchStopLossOrder
          (local.get $0)
          (local.get $4)
          (local.get $6)
         )
         (i32.add
          (local.get $3)
          (i32.const 1)
         )
        )
       )
      )
     )
     (local.set $4
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#next
       (i32.load offset=16
        (local.get $0)
       )
       (local.get $4)
      )
     )
     (br $while-continue|0)
    )
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#withdrawAll (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (local.set $2
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#first
    (local.tee $3
     (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
      (i32.load
       (local.get $0)
      )
      (local.get $1)
     )
    )
   )
  )
  (loop $while-continue|0
   (if
    (local.get $2)
    (block
     (if
      (i64.gt_s
       (i64.load
        (i32.load offset=4
         (local.get $2)
        )
       )
       (i64.const 0)
      )
      (block
       (local.set $4
        (i32.load
         (local.get $2)
        )
       )
       (local.set $5
        (i32.load
         (local.get $0)
        )
       )
       (local.set $6
        (i32.load offset=4
         (local.get $2)
        )
       )
       (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        (i32.const 13168)
        (i32.const 1)
        (call $~lib/as-chain/asset/Asset#toString
         (i32.load offset=4
          (local.get $2)
         )
        )
       )
       (call $assembly/orderbook/orderbook.contract/orderbook#transfer
        (local.get $0)
        (local.get $4)
        (local.get $5)
        (local.get $1)
        (local.get $6)
        (call $~lib/staticarray/StaticArray<~lib/string/String>#join
         (i32.const 13168)
        )
       )
       (call $~lib/rt/common/OBJECT#set:gcInfo
        (local.get $2)
        (call $~lib/as-chain/asset/Asset#constructor
         (i64.const 0)
         (i32.load offset=8
          (i32.load offset=4
           (local.get $2)
          )
         )
        )
       )
       (call $~lib/as-chain/idxdb/IDXDB#set:table
        (local.get $2)
        (i64.extend_i32_u
         (call $~lib/as-chain/system/currentTimeSec)
        )
       )
       (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#update
        (local.get $3)
        (local.get $2)
        (i32.load
         (local.get $0)
        )
       )
      )
     )
     (local.set $2
      (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#next
       (local.get $3)
       (local.get $2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#withdraw (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (i64.load
     (i32.load offset=4
      (local.tee $3
       (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#requireGet
        (local.tee $6
         (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#constructor
          (i32.load
           (local.get $0)
          )
          (local.get $1)
         )
        )
        (call $~lib/as-chain/asset/Symbol#code
         (i32.load offset=8
          (local.get $2)
         )
        )
        (i32.const 13200)
       )
      )
     )
    )
    (i64.load
     (local.get $2)
    )
   )
   (i32.const 13264)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.tee $4
       (i32.load offset=4
        (local.get $3)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=8
      (local.get $2)
     )
    )
   )
   (i32.const 6672)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $5
     (i64.sub
      (i64.load
       (local.get $4)
      )
      (i64.load
       (local.get $2)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 8528)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $5)
    (i64.const 4611686018427387903)
   )
   (i32.const 8592)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $3)
   (call $~lib/as-chain/asset/Asset#constructor
    (local.get $5)
    (call $~lib/as-chain/asset/Symbol.fromU64
     (i64.load
      (i32.load offset=8
       (local.get $4)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:table
   (local.get $3)
   (i64.extend_i32_u
    (call $~lib/as-chain/system/currentTimeSec)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/balances.table/BalancesTable>#update
   (local.get $6)
   (local.get $3)
   (i32.load
    (local.get $0)
   )
  )
  (local.set $3
   (i32.load
    (local.get $3)
   )
  )
  (local.set $4
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 13328)
   (i32.const 1)
   (call $~lib/as-chain/asset/Asset#toString
    (local.get $2)
   )
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#transfer
   (local.get $0)
   (local.get $3)
   (local.get $4)
   (local.get $1)
   (local.get $2)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 13328)
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/orderbook#cancelOrder (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/as-chain/system/check
   (block (result i32)
    (call $~lib/as-chain/system/check
     (call $~lib/as-chain/dbi64/PrimaryIterator<assembly/orderbook/tables/config.table/ConfigTable>#isOk
      (local.tee $4
       (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#find
        (i32.load
         (local.tee $3
          (i32.load offset=16
           (local.get $0)
          )
         )
        )
        (local.get $2)
       )
      )
     )
     (i32.const 13360)
    )
    (i64.eq
     (i64.load
      (i32.load offset=16
       (local.tee $3
        (call $~lib/as-chain/mi/MultiIndex<assembly/orderbook/tables/orders.table/OrdersTable>#get
         (i32.load
          (local.get $3)
         )
         (local.get $4)
        )
       )
      )
     )
     (i64.load
      (local.get $1)
     )
    )
   )
   (i32.const 13424)
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (i32.load8_u offset=49
     (local.get $3)
    )
    (i32.eq
     (i32.load8_u offset=49
      (local.get $3)
     )
     (i32.const 1)
    )
    (i32.const 1)
   )
   (i32.const 13472)
  )
  (local.set $1
   (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/pairs.table/PairsTable>#requireGet
    (i32.load offset=12
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $3)
    )
   )
  )
  (call $assembly/orderbook/orderbook.contract/orderbook#unlockBalance
   (local.get $0)
   (i32.load offset=16
    (local.get $3)
   )
   (i32.load offset=20
    (local.get $3)
   )
   (i32.load offset=40
    (local.get $3)
   )
   (local.get $1)
   (i32.load offset=28
    (local.get $3)
   )
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:status
   (local.get $3)
   (i32.const 3)
  )
  (call $assembly/orderbook/tables/orders.table/OrdersTable#set:updated_at
   (local.get $3)
   (i64.extend_i32_u
    (call $~lib/as-chain/system/currentTimeSec)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<assembly/orderbook/tables/orders.table/OrdersTable>#update
   (i32.load offset=16
    (local.get $0)
   )
   (local.get $3)
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/initAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/orderbook/orderbook.contract/createPairAction#set:maker_fee_bp (param $0 i32) (param $1 i32)
  (i32.store16 offset=28
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/orderbook.contract/createPairAction#set:taker_fee_bp (param $0 i32) (param $1 i32)
  (i32.store16 offset=30
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/orderbook.contract/createPairAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.tee $1
    (call $~lib/as-chain/serializer/Decoder#constructor
     (local.get $1)
    )
   )
   (local.tee $2
    (call $~lib/as-chain/asset/Symbol#constructor)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Symbol#constructor)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:quote_contract
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/orderbook/orderbook.contract/createPairAction#set:maker_fee_bp
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
  )
  (call $assembly/orderbook/orderbook.contract/createPairAction#set:taker_fee_bp
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/orderbook/orderbook.contract/updatePairAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/orderbook/orderbook.contract/clearPairAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (i32.load offset=4
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
 )
 (func $assembly/orderbook/orderbook.contract/setPairStatusAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/orderbook/orderbook.contract/LimitOrderAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:quote_contract
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/orderbook/orderbook.contract/marketOrderAction#set:max_slippage_bp (param $0 i32) (param $1 i32)
  (i32.store16 offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/orderbook.contract/marketOrderAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:quote_contract
   (local.get $0)
   (local.get $2)
  )
  (call $assembly/orderbook/orderbook.contract/marketOrderAction#set:max_slippage_bp
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u16>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/orderbook/orderbook.contract/stopLossOrderAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:quote_contract
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $assembly/orderbook/tables/pairs.table/PairsTable#set:max_order_size
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/orderbook/orderbook.contract/processLimitAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (local.set $2
   (i32.load
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $1)
      )
     )
     (i32.load offset=4
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $1)
   (i32.const 4)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/orderbook/orderbook.contract/processStopLossTakeProfitAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (local.set $2
   (i32.load
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $1)
      )
     )
     (i32.load offset=4
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $1)
   (i32.const 4)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/orderbook/orderbook.contract/withdrawAllAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $1)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $1)
  )
  (i32.load offset=4
   (local.get $2)
  )
 )
 (func $assembly/orderbook/orderbook.contract/withdrawAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/orderbook/orderbook.contract/cancelOrderAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/orderbook/orderbook.contract/onTransferAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $assembly/orderbook/orderbook.contract/apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $5)
   (local.get $0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $3)
   (local.get $1)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $4)
   (local.get $2)
  )
  (local.set $6
   (call $assembly/orderbook/orderbook.contract/orderbook#constructor
    (i32.const 0)
    (local.get $5)
    (local.get $3)
    (local.get $4)
   )
  )
  (drop
   (call $~lib/as-chain/env/read_action_data
    (i32.load offset=4
     (local.tee $5
      (call $~lib/array/Array<u8>#constructor
       (local.tee $3
        (call $~lib/as-chain/env/action_data_size)
       )
      )
     )
    )
    (local.get $3)
   )
  )
  (if
   (i64.eq
    (local.get $0)
    (local.get $1)
   )
   (block
    (if
     (i64.eq
      (local.get $2)
      (i64.const 8421045207927095296)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 8)
         (i32.const 74)
        )
       )
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $assembly/orderbook/orderbook.contract/initAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/orderbook/orderbook.contract/orderbook#init
       (local.get $6)
       (local.get $4)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 5031766163872661504)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 32)
         (i32.const 75)
        )
       )
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:rtId
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:rtSize
       (local.get $3)
       (i32.const 0)
      )
      (call $assembly/orderbook/tables/pairs.table/PairsTable#set:quote_contract
       (local.get $3)
       (i32.const 0)
      )
      (call $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size
       (local.get $3)
       (i32.const 0)
      )
      (call $assembly/orderbook/orderbook.contract/createPairAction#set:maker_fee_bp
       (local.get $3)
       (i32.const 0)
      )
      (call $assembly/orderbook/orderbook.contract/createPairAction#set:taker_fee_bp
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $assembly/orderbook/orderbook.contract/createPairAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $7
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $8
         (i32.load offset=8
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $10
         (i32.load offset=12
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $11
         (i32.load offset=16
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $12
         (i32.load offset=20
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $13
         (i32.load offset=24
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/orderbook/orderbook.contract/orderbook#createPair
       (local.get $6)
       (local.get $4)
       (local.get $7)
       (local.get $8)
       (local.get $10)
       (local.get $11)
       (local.get $12)
       (local.get $13)
       (i32.load16_u offset=28
        (local.get $3)
       )
       (i32.load16_u offset=30
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -3075276115347652608)
     )
     (block
      (call $~lib/as-chain/name/Name#set:N
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 20)
         (i32.const 76)
        )
       )
       (i64.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:rtId
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:rtSize
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $assembly/orderbook/orderbook.contract/updatePairAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (local.set $9
       (i64.load
        (local.get $3)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load offset=8
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $7
         (i32.load offset=12
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=16
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/orderbook/orderbook.contract/orderbook#updatePair
       (local.get $6)
       (local.get $9)
       (local.get $4)
       (local.get $7)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 4931251629325287424)
     )
     (block
      (drop
       (call $assembly/orderbook/orderbook.contract/clearPairAction#unpack
        (call $~lib/rt/stub/__new
         (i32.const 0)
         (i32.const 77)
        )
        (local.get $5)
       )
      )
      (call $assembly/orderbook/orderbook.contract/orderbook#clearPair
       (local.get $6)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4417032211186843648)
     )
     (block
      (call $~lib/as-chain/name/Name#set:N
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 12)
         (i32.const 78)
        )
       )
       (i64.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $3)
       (i32.const 2288)
      )
      (drop
       (call $assembly/orderbook/orderbook.contract/setPairStatusAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (call $assembly/orderbook/orderbook.contract/orderbook#setPairStatus
       (local.get $6)
       (i64.load
        (local.get $3)
       )
       (i32.load offset=8
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -8384316215655022592)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 28)
         (i32.const 79)
        )
       )
       (i32.const 0)
      )
      (call $~lib/as-chain/idxdb/IDXDB#set:scope
       (local.get $3)
       (i64.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:rtSize
       (local.get $3)
       (i32.const 2288)
      )
      (call $assembly/orderbook/tables/pairs.table/PairsTable#set:quote_contract
       (local.get $3)
       (i32.const 0)
      )
      (call $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $assembly/orderbook/orderbook.contract/LimitOrderAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (local.set $9
       (i64.load offset=8
        (local.get $3)
       )
      )
      (local.set $7
       (i32.load offset=16
        (local.get $3)
       )
      )
      (if
       (i32.eqz
        (local.tee $8
         (i32.load offset=20
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=24
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/orderbook/orderbook.contract/orderbook#LimitOrder
       (local.get $6)
       (local.get $4)
       (local.get $9)
       (local.get $7)
       (local.get $8)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -7949128879102579200)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 26)
         (i32.const 80)
        )
       )
       (i32.const 0)
      )
      (call $~lib/as-chain/idxdb/IDXDB#set:scope
       (local.get $3)
       (i64.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:rtSize
       (local.get $3)
       (i32.const 2288)
      )
      (call $assembly/orderbook/tables/pairs.table/PairsTable#set:quote_contract
       (local.get $3)
       (i32.const 0)
      )
      (call $assembly/orderbook/orderbook.contract/marketOrderAction#set:max_slippage_bp
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $assembly/orderbook/orderbook.contract/marketOrderAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (local.set $9
       (i64.load offset=8
        (local.get $3)
       )
      )
      (local.set $7
       (i32.load offset=16
        (local.get $3)
       )
      )
      (if
       (i32.eqz
        (local.tee $8
         (i32.load offset=20
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/orderbook/orderbook.contract/orderbook#marketOrder
       (local.get $6)
       (local.get $4)
       (local.get $9)
       (local.get $7)
       (local.get $8)
       (i32.load16_u offset=24
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4149687917981204480)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 32)
         (i32.const 81)
        )
       )
       (i32.const 0)
      )
      (call $~lib/as-chain/idxdb/IDXDB#set:scope
       (local.get $3)
       (i64.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:rtSize
       (local.get $3)
       (i32.const 2288)
      )
      (call $assembly/orderbook/tables/pairs.table/PairsTable#set:quote_contract
       (local.get $3)
       (i32.const 0)
      )
      (call $assembly/orderbook/tables/pairs.table/PairsTable#set:min_order_size
       (local.get $3)
       (i32.const 0)
      )
      (call $assembly/orderbook/tables/pairs.table/PairsTable#set:max_order_size
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $assembly/orderbook/orderbook.contract/stopLossOrderAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (local.set $9
       (i64.load offset=8
        (local.get $3)
       )
      )
      (local.set $8
       (i32.load offset=16
        (local.get $3)
       )
      )
      (if
       (i32.eqz
        (local.tee $7
         (i32.load offset=20
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $10
         (i32.load offset=24
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=28
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/orderbook/orderbook.contract/orderbook#stopLossOrder
       (local.get $6)
       (local.get $4)
       (local.get $9)
       (local.get $8)
       (local.get $7)
       (local.get $10)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -5915331450010034800)
     )
     (block
      (call $~lib/as-chain/name/Name#set:N
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 12)
         (i32.const 82)
        )
       )
       (i64.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $assembly/orderbook/orderbook.contract/processLimitAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (call $assembly/orderbook/orderbook.contract/orderbook#processLimit
       (local.get $6)
       (i64.load
        (local.get $3)
       )
       (i32.load offset=8
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -5915331450004214784)
     )
     (block
      (call $~lib/as-chain/name/Name#set:N
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 12)
         (i32.const 83)
        )
       )
       (i64.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $assembly/orderbook/orderbook.contract/processStopLossTakeProfitAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (call $assembly/orderbook/orderbook.contract/orderbook#processStopLossTakeProfit
       (local.get $6)
       (i64.load
        (local.get $3)
       )
       (i32.load offset=8
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -2039333636193099264)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 4)
         (i32.const 84)
        )
       )
       (i32.const 0)
      )
      (drop
       (call $assembly/orderbook/orderbook.contract/withdrawAllAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/orderbook/orderbook.contract/orderbook#withdrawAll
       (local.get $6)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -2039333636196532224)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 8)
         (i32.const 85)
        )
       )
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $assembly/orderbook/orderbook.contract/withdrawAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/orderbook/orderbook.contract/orderbook#withdraw
       (local.get $6)
       (local.get $4)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 4730614996831743488)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 16)
         (i32.const 86)
        )
       )
       (i32.const 0)
      )
      (call $~lib/as-chain/idxdb/IDXDB#set:scope
       (local.get $3)
       (i64.const 0)
      )
      (drop
       (call $assembly/orderbook/orderbook.contract/cancelOrderAction#unpack
        (local.get $3)
        (local.get $5)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $assembly/orderbook/orderbook.contract/orderbook#cancelOrder
       (local.get $6)
       (local.get $4)
       (i64.load offset=8
        (local.get $3)
       )
      )
     )
    )
   )
  )
  (if
   (i64.ne
    (local.get $0)
    (local.get $1)
   )
   (if
    (i64.eq
     (local.get $2)
     (i64.const -3617168760277827584)
    )
    (block
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.tee $3
       (call $~lib/rt/stub/__new
        (i32.const 16)
        (i32.const 87)
       )
      )
      (i32.const 0)
     )
     (call $~lib/rt/common/OBJECT#set:gcInfo
      (local.get $3)
      (i32.const 0)
     )
     (call $~lib/rt/common/OBJECT#set:gcInfo2
      (local.get $3)
      (i32.const 0)
     )
     (call $~lib/rt/common/OBJECT#set:rtId
      (local.get $3)
      (i32.const 2288)
     )
     (drop
      (call $assembly/orderbook/orderbook.contract/onTransferAction#unpack
       (local.get $3)
       (local.get $5)
      )
     )
     (if
      (i32.eqz
       (local.tee $5
        (i32.load
         (local.get $3)
        )
       )
      )
      (unreachable)
     )
     (if
      (i32.eqz
       (local.tee $4
        (i32.load offset=4
         (local.get $3)
        )
       )
      )
      (unreachable)
     )
     (if
      (i32.eqz
       (local.tee $7
        (i32.load offset=8
         (local.get $3)
        )
       )
      )
      (unreachable)
     )
     (call $assembly/orderbook/orderbook.contract/orderbook#onTransfer
      (local.get $6)
      (local.get $5)
      (local.get $4)
      (local.get $7)
      (i32.load offset=12
       (local.get $3)
      )
     )
    )
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackName (param $0 i32) (result i32)
  (local $1 i64)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $0)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (local.get $1)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/action/Action#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackName
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackName
    (local.get $1)
   )
  )
  (local.set $3
   (local.tee $7
    (call $~lib/as-chain/serializer/Decoder#unpackLength
     (local.get $1)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 72)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $2)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $3)
    (i32.const 268435455)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $6
    (call $~lib/rt/stub/__new
     (local.tee $5
      (i32.shl
       (select
        (local.get $3)
        (i32.const 8)
        (i32.gt_u
         (local.get $3)
         (i32.const 8)
        )
       )
       (i32.const 2)
      )
     )
     (i32.const 0)
    )
   )
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (local.get $5)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $2)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (local.get $7)
    )
    (block
     (local.set $2
      (call $~lib/as-chain/action/PermissionLevel#constructor
       (call $~lib/as-chain/serializer/Decoder#unpackName
        (local.get $1)
       )
       (call $~lib/as-chain/serializer/Decoder#unpackName
        (local.get $1)
       )
      )
     )
     (call $~lib/array/Array<assembly/orderbook/tables/orders.table/OrdersTable>#__set
      (i32.load offset=8
       (local.get $0)
      )
      (local.get $4)
      (local.get $2)
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (drop
   (i32.load offset=4
    (local.get $1)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.load offset=4
     (local.tee $3
      (call $~lib/array/Array<u8>#constructor
       (local.tee $2
        (call $~lib/as-chain/serializer/Decoder#unpackLength
         (local.get $1)
        )
       )
      )
     )
    )
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $1)
      )
     )
     (i32.load offset=4
      (local.get $1)
     )
    )
    (local.get $2)
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $3)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/asset/Symbol#isValid (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (block $__inlined_func$~lib/as-chain/asset/isValid (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/asset/isValid
     (i32.const 0)
     (i64.eqz
      (local.tee $3
       (call $~lib/as-chain/asset/Symbol#code
        (local.get $0)
       )
      )
     )
    )
   )
   (drop
    (br_if $__inlined_func$~lib/as-chain/asset/isValid
     (i32.const 0)
     (i64.ne
      (i64.and
       (local.get $3)
       (i64.const -72057594037927936)
      )
      (i64.const 0)
     )
    )
   )
   (loop $for-loop|0
    (if
     (i32.le_s
      (local.get $2)
      (i32.const 6)
     )
     (block $for-break0
      (local.set $1
       (local.get $2)
      )
      (drop
       (br_if $__inlined_func$~lib/as-chain/asset/isValid
        (i32.const 0)
        (i32.eqz
         (select
          (i32.le_u
           (local.tee $0
            (i32.wrap_i64
             (i64.and
              (local.get $3)
              (i64.const 255)
             )
            )
           )
           (i32.const 90)
          )
          (i32.const 0)
          (i32.ge_u
           (local.get $0)
           (i32.const 65)
          )
         )
        )
       )
      )
      (br_if $for-break0
       (i64.eqz
        (i64.and
         (local.tee $3
          (i64.shr_u
           (local.get $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
       )
      )
      (local.set $2
       (i32.add
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const 1)
    )
   )
   (loop $for-loop|1
    (if
     (i32.le_s
      (local.get $1)
      (i32.const 6)
     )
     (block
      (drop
       (br_if $__inlined_func$~lib/as-chain/asset/isValid
        (i32.const 0)
        (i64.ne
         (i64.and
          (local.tee $3
           (i64.shr_u
            (local.get $3)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
      )
      (local.set $1
       (i32.add
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|1)
     )
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/as-chain/serializer/Packer#unpack@virtual (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (block $folding-inner0
   (block $default
    (block $case29
     (block $case28
      (block $case27
       (block $case26
        (block $case25
         (block $case24
          (block $case23
           (block $case22
            (block $case21
             (block $case20
              (block $case19
               (block $case18
                (block $case17
                 (block $case16
                  (block $case15
                   (block $case13
                    (block $case12
                     (block $case11
                      (block $case10
                       (block $case9
                        (block $case8
                         (block $case7
                          (block $case6
                           (block $case4
                            (block $case3
                             (block $case2
                              (block $case1
                               (block $case0
                                (br_table $case19 $default $default $default $case22 $default $default $case20 $case21 $default $default $default $default $default $case23 $default $default $default $case24 $default $default $default $case26 $default $default $default $case27 $default $default $default $default $default $default $default $default $default $default $default $default $default $default $default $default $case28 $default $default $default $default $default $default $case16 $case15 $default $default $default $default $case25 $default $default $default $default $default $case29 $folding-inner0 $default $case17 $default $default $case18 $case0 $case1 $case2 $case3 $case4 $case6 $case7 $case8 $case9 $case10 $case11 $case12 $case13 $folding-inner0 $default
                                 (i32.sub
                                  (i32.load
                                   (i32.sub
                                    (local.get $0)
                                    (i32.const 8)
                                   )
                                  )
                                  (i32.const 5)
                                 )
                                )
                               )
                               (return
                                (call $assembly/orderbook/orderbook.contract/initAction#unpack
                                 (local.get $0)
                                 (local.get $1)
                                )
                               )
                              )
                              (return
                               (call $assembly/orderbook/orderbook.contract/createPairAction#unpack
                                (local.get $0)
                                (local.get $1)
                               )
                              )
                             )
                             (return
                              (call $assembly/orderbook/orderbook.contract/updatePairAction#unpack
                               (local.get $0)
                               (local.get $1)
                              )
                             )
                            )
                            (return
                             (call $assembly/orderbook/orderbook.contract/clearPairAction#unpack
                              (local.get $0)
                              (local.get $1)
                             )
                            )
                           )
                           (return
                            (call $assembly/orderbook/orderbook.contract/setPairStatusAction#unpack
                             (local.get $0)
                             (local.get $1)
                            )
                           )
                          )
                          (return
                           (call $assembly/orderbook/orderbook.contract/LimitOrderAction#unpack
                            (local.get $0)
                            (local.get $1)
                           )
                          )
                         )
                         (return
                          (call $assembly/orderbook/orderbook.contract/marketOrderAction#unpack
                           (local.get $0)
                           (local.get $1)
                          )
                         )
                        )
                        (return
                         (call $assembly/orderbook/orderbook.contract/stopLossOrderAction#unpack
                          (local.get $0)
                          (local.get $1)
                         )
                        )
                       )
                       (return
                        (call $assembly/orderbook/orderbook.contract/processLimitAction#unpack
                         (local.get $0)
                         (local.get $1)
                        )
                       )
                      )
                      (return
                       (call $assembly/orderbook/orderbook.contract/processStopLossTakeProfitAction#unpack
                        (local.get $0)
                        (local.get $1)
                       )
                      )
                     )
                     (return
                      (call $assembly/orderbook/orderbook.contract/withdrawAllAction#unpack
                       (local.get $0)
                       (local.get $1)
                      )
                     )
                    )
                    (return
                     (call $assembly/orderbook/orderbook.contract/withdrawAction#unpack
                      (local.get $0)
                      (local.get $1)
                     )
                    )
                   )
                   (return
                    (call $assembly/orderbook/orderbook.contract/cancelOrderAction#unpack
                     (local.get $0)
                     (local.get $1)
                    )
                   )
                  )
                  (call $~lib/as-chain/name/Name#set:N
                   (local.get $0)
                   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
                    (local.tee $0
                     (call $~lib/as-chain/serializer/Decoder#constructor
                      (local.get $1)
                     )
                    )
                   )
                  )
                  (return
                   (i32.load offset=4
                    (local.get $0)
                   )
                  )
                 )
                 (call $~lib/as-chain/serializer/Decoder#unpack
                  (local.tee $1
                   (call $~lib/as-chain/serializer/Decoder#constructor
                    (local.get $1)
                   )
                  )
                  (i32.load
                   (local.get $0)
                  )
                 )
                 (return
                  (i32.load offset=4
                   (local.get $1)
                  )
                 )
                )
                (call $~lib/rt/common/BLOCK#set:mmInfo
                 (local.get $0)
                 (call $~lib/as-chain/serializer/Decoder#unpackName
                  (local.tee $1
                   (call $~lib/as-chain/serializer/Decoder#constructor
                    (local.get $1)
                   )
                  )
                 )
                )
                (call $~lib/rt/common/OBJECT#set:gcInfo
                 (local.get $0)
                 (call $~lib/as-chain/serializer/Decoder#unpackName
                  (local.get $1)
                 )
                )
                (return
                 (i32.load offset=4
                  (local.get $1)
                 )
                )
               )
               (return
                (call $~lib/as-chain/action/Action#unpack
                 (local.get $0)
                 (local.get $1)
                )
               )
              )
              (call $~lib/as-chain/name/Name#set:N
               (local.get $0)
               (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
                (call $~lib/as-chain/serializer/Decoder#constructor
                 (local.get $1)
                )
               )
              )
              (return
               (i32.const 8)
              )
             )
             (call $~lib/as-chain/name/Name#set:N
              (local.get $0)
              (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
               (local.tee $1
                (call $~lib/as-chain/serializer/Decoder#constructor
                 (local.get $1)
                )
               )
              )
             )
             (call $~lib/as-chain/system/check
              (call $~lib/as-chain/asset/Symbol#isValid
               (local.get $0)
              )
              (i32.const 13552)
             )
             (return
              (i32.load offset=4
               (local.get $1)
              )
             )
            )
            (local.set $3
             (i64.load
              (i32.add
               (i32.load offset=4
                (i32.load
                 (local.tee $2
                  (call $~lib/as-chain/serializer/Decoder#constructor
                   (local.get $1)
                  )
                 )
                )
               )
               (i32.load offset=4
                (local.get $2)
               )
              )
             )
            )
            (call $~lib/as-chain/serializer/Decoder#incPos
             (local.get $2)
             (i32.const 8)
            )
            (call $~lib/as-chain/name/Name#set:N
             (local.get $0)
             (local.get $3)
            )
            (call $~lib/as-chain/serializer/Decoder#unpack
             (local.get $2)
             (i32.load offset=8
              (local.get $0)
             )
            )
            (call $~lib/as-chain/system/check
             (if (result i32)
              (if (result i32)
               (i64.ge_s
                (i64.load
                 (local.tee $1
                  (local.get $0)
                 )
                )
                (i64.const -4611686018427387903)
               )
               (i64.le_s
                (i64.load
                 (local.get $1)
                )
                (i64.const 4611686018427387903)
               )
               (i32.const 0)
              )
              (call $~lib/as-chain/asset/Symbol#isValid
               (i32.load offset=8
                (local.get $1)
               )
              )
              (i32.const 0)
             )
             (i32.const 13600)
            )
            (return
             (i32.load offset=4
              (local.get $2)
             )
            )
           )
           (return
            (call $assembly/orderbook/tables/pairs.table/PairsTable#unpack
             (local.get $0)
             (local.get $1)
            )
           )
          )
          (return
           (call $assembly/orderbook/tables/orders.table/OrdersTable#unpack
            (local.get $0)
            (local.get $1)
           )
          )
         )
         (return
          (call $assembly/orderbook/tables/trades.table/TradesTable#unpack
           (local.get $0)
           (local.get $1)
          )
         )
        )
        (return
         (call $assembly/orderbook/tables/balances.table/BalancesTable#unpack
          (local.get $0)
          (local.get $1)
         )
        )
       )
       (return
        (call $assembly/orderbook/tables/config.table/ConfigTable#unpack
         (local.get $0)
         (local.get $1)
        )
       )
      )
      (return
       (call $assembly/orderbook/tables/fees.table/FeesTable#unpack
        (local.get $0)
        (local.get $1)
       )
      )
     )
     (return
      (call $assembly/orderbook/tables/stat.table/TokenStatTable#unpack
       (local.get $0)
       (local.get $1)
      )
     )
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.get $0)
     (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
      (local.tee $1
       (call $~lib/as-chain/serializer/Decoder#constructor
        (local.get $1)
       )
      )
     )
    )
    (call $~lib/as-chain/idxdb/IDXDB#set:scope
     (local.get $0)
     (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
      (local.get $1)
     )
    )
    (return
     (i32.const 16)
    )
   )
   (unreachable)
  )
  (call $assembly/orderbook/orderbook.contract/onTransferAction#unpack
   (local.get $0)
   (local.get $1)
  )
 )
 (func $assembly/orderbook/orderbook.contract/createPairAction#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (i32.load
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.load offset=4
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.load offset=8
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.load offset=16
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.load offset=20
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.load offset=24
     (local.get $0)
    )
   )
   (unreachable)
  )
  (local.set $2
   (call $~lib/as-chain/serializer/Encoder#constructor
    (i32.const 84)
   )
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $2)
   (local.get $1)
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $2)
   (local.get $1)
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=8
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $2)
   (local.get $1)
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $2)
   (local.get $1)
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=16
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $2)
   (local.get $1)
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=20
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $2)
   (local.get $1)
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=24
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $2)
   (i32.load16_u offset=28
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
   (local.get $2)
   (i32.load16_u offset=30
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $2)
  )
 )
 (func $assembly/orderbook/orderbook.contract/stopLossOrderAction#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (i32.load
     (local.get $0)
    )
   )
   (unreachable)
  )
  (local.set $1
   (i32.add
    (call $~lib/as-chain/utils/Utils.calcPackedStringLength
     (i32.load offset=16
      (local.get $0)
     )
    )
    (i32.const 16)
   )
  )
  (if
   (i32.eqz
    (i32.load offset=20
     (local.get $0)
    )
   )
   (unreachable)
  )
  (local.set $1
   (i32.add
    (local.get $1)
    (i32.const 16)
   )
  )
  (if
   (i32.eqz
    (i32.load offset=24
     (local.get $0)
    )
   )
   (unreachable)
  )
  (local.set $1
   (i32.add
    (local.get $1)
    (i32.const 16)
   )
  )
  (if
   (i32.eqz
    (i32.load offset=28
     (local.get $0)
    )
   )
   (unreachable)
  )
  (local.set $1
   (call $~lib/as-chain/serializer/Encoder#constructor
    (i32.add
     (local.get $1)
     (i32.const 16)
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $2
     (i32.load
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=16
    (local.get $0)
   )
  )
  (if
   (i32.eqz
    (local.tee $2
     (i32.load offset=20
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (local.get $2)
  )
  (if
   (i32.eqz
    (local.tee $2
     (i32.load offset=24
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (local.get $2)
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load offset=28
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<i32> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 4)
  )
  (i32.store
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Packer#pack@virtual (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $folding-inner3
   (block $folding-inner2
    (block $folding-inner1
     (block $folding-inner0
      (block $default
       (block $case29
        (block $case28
         (block $case27
          (block $case26
           (block $case25
            (block $case24
             (block $case23
              (block $case22
               (block $case21
                (block $case20
                 (block $case19
                  (block $case18
                   (block $case17
                    (block $case16
                     (block $case15
                      (block $case14
                       (block $case13
                        (block $case12
                         (block $case11
                          (block $case10
                           (block $case9
                            (block $case8
                             (block $case7
                              (block $case6
                               (block $case5
                                (block $case4
                                 (block $case3
                                  (block $case2
                                   (block $case1
                                    (block $case0
                                     (br_table $case19 $default $default $default $case22 $default $default $case20 $case21 $default $default $default $default $default $case23 $default $default $default $case24 $default $default $default $case26 $default $default $default $case27 $default $default $default $default $default $default $default $default $default $default $default $default $default $default $default $default $case28 $default $default $default $default $default $default $case16 $case15 $default $default $default $default $case25 $default $default $default $default $default $case29 $case14 $default $case17 $default $default $case18 $case0 $case1 $case2 $case3 $case4 $case6 $case7 $case8 $case9 $case10 $case11 $case12 $case13 $case5 $default
                                      (i32.sub
                                       (i32.load
                                        (i32.sub
                                         (local.get $0)
                                         (i32.const 8)
                                        )
                                       )
                                       (i32.const 5)
                                      )
                                     )
                                    )
                                    (if
                                     (i32.eqz
                                      (i32.load
                                       (local.get $0)
                                      )
                                     )
                                     (unreachable)
                                    )
                                    (if
                                     (i32.eqz
                                      (i32.load offset=4
                                       (local.get $0)
                                      )
                                     )
                                     (unreachable)
                                    )
                                    (local.set $1
                                     (call $~lib/as-chain/serializer/Encoder#constructor
                                      (i32.const 16)
                                     )
                                    )
                                    (if
                                     (i32.eqz
                                      (local.tee $2
                                       (i32.load
                                        (local.get $0)
                                       )
                                      )
                                     )
                                     (unreachable)
                                    )
                                    (call $~lib/as-chain/serializer/Encoder#pack
                                     (local.get $1)
                                     (local.get $2)
                                    )
                                    (if
                                     (i32.eqz
                                      (local.tee $0
                                       (i32.load offset=4
                                        (local.get $0)
                                       )
                                      )
                                     )
                                     (unreachable)
                                    )
                                    (call $~lib/as-chain/serializer/Encoder#pack
                                     (local.get $1)
                                     (local.get $0)
                                    )
                                    (br $folding-inner2)
                                   )
                                   (return
                                    (call $assembly/orderbook/orderbook.contract/createPairAction#pack
                                     (local.get $0)
                                    )
                                   )
                                  )
                                  (if
                                   (i32.eqz
                                    (i32.load offset=8
                                     (local.get $0)
                                    )
                                   )
                                   (unreachable)
                                  )
                                  (if
                                   (i32.eqz
                                    (i32.load offset=12
                                     (local.get $0)
                                    )
                                   )
                                   (unreachable)
                                  )
                                  (if
                                   (i32.eqz
                                    (i32.load offset=16
                                     (local.get $0)
                                    )
                                   )
                                   (unreachable)
                                  )
                                  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                                   (local.tee $1
                                    (call $~lib/as-chain/serializer/Encoder#constructor
                                     (i32.const 56)
                                    )
                                   )
                                   (i64.load
                                    (local.get $0)
                                   )
                                  )
                                  (if
                                   (i32.eqz
                                    (local.tee $2
                                     (i32.load offset=8
                                      (local.get $0)
                                     )
                                    )
                                   )
                                   (unreachable)
                                  )
                                  (call $~lib/as-chain/serializer/Encoder#pack
                                   (local.get $1)
                                   (local.get $2)
                                  )
                                  (if
                                   (i32.eqz
                                    (local.tee $2
                                     (i32.load offset=12
                                      (local.get $0)
                                     )
                                    )
                                   )
                                   (unreachable)
                                  )
                                  (call $~lib/as-chain/serializer/Encoder#pack
                                   (local.get $1)
                                   (local.get $2)
                                  )
                                  (if
                                   (i32.eqz
                                    (local.tee $0
                                     (i32.load offset=16
                                      (local.get $0)
                                     )
                                    )
                                   )
                                   (unreachable)
                                  )
                                  (call $~lib/as-chain/serializer/Encoder#pack
                                   (local.get $1)
                                   (local.get $0)
                                  )
                                  (br $folding-inner3)
                                 )
                                 (return
                                  (call $~lib/as-chain/serializer/Encoder#getBytes
                                   (call $~lib/as-chain/serializer/Encoder#constructor
                                    (i32.const 0)
                                   )
                                  )
                                 )
                                )
                                (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                                 (local.tee $1
                                  (call $~lib/as-chain/serializer/Encoder#constructor
                                   (i32.add
                                    (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                                     (i32.load offset=8
                                      (local.get $0)
                                     )
                                    )
                                    (i32.const 8)
                                   )
                                  )
                                 )
                                 (i64.load
                                  (local.get $0)
                                 )
                                )
                                (call $~lib/as-chain/serializer/Encoder#packString
                                 (local.get $1)
                                 (i32.load offset=8
                                  (local.get $0)
                                 )
                                )
                                (br $folding-inner2)
                               )
                               (if
                                (i32.eqz
                                 (i32.load
                                  (local.get $0)
                                 )
                                )
                                (unreachable)
                               )
                               (if
                                (i32.eqz
                                 (i32.load offset=4
                                  (local.get $0)
                                 )
                                )
                                (unreachable)
                               )
                               (if
                                (i32.eqz
                                 (i32.load offset=8
                                  (local.get $0)
                                 )
                                )
                                (unreachable)
                               )
                               (local.set $1
                                (call $~lib/as-chain/serializer/Encoder#constructor
                                 (i32.add
                                  (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                                   (i32.load offset=12
                                    (local.get $0)
                                   )
                                  )
                                  (i32.const 32)
                                 )
                                )
                               )
                               (if
                                (i32.eqz
                                 (local.tee $2
                                  (i32.load
                                   (local.get $0)
                                  )
                                 )
                                )
                                (unreachable)
                               )
                               (call $~lib/as-chain/serializer/Encoder#pack
                                (local.get $1)
                                (local.get $2)
                               )
                               (if
                                (i32.eqz
                                 (local.tee $2
                                  (i32.load offset=4
                                   (local.get $0)
                                  )
                                 )
                                )
                                (unreachable)
                               )
                               (call $~lib/as-chain/serializer/Encoder#pack
                                (local.get $1)
                                (local.get $2)
                               )
                               (if
                                (i32.eqz
                                 (local.tee $2
                                  (i32.load offset=8
                                   (local.get $0)
                                  )
                                 )
                                )
                                (unreachable)
                               )
                               (call $~lib/as-chain/serializer/Encoder#pack
                                (local.get $1)
                                (local.get $2)
                               )
                               (call $~lib/as-chain/serializer/Encoder#packString
                                (local.get $1)
                                (i32.load offset=12
                                 (local.get $0)
                                )
                               )
                               (br $folding-inner3)
                              )
                              (if
                               (i32.eqz
                                (i32.load
                                 (local.get $0)
                                )
                               )
                               (unreachable)
                              )
                              (local.set $1
                               (i32.add
                                (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                                 (i32.load offset=16
                                  (local.get $0)
                                 )
                                )
                                (i32.const 16)
                               )
                              )
                              (if
                               (i32.eqz
                                (i32.load offset=20
                                 (local.get $0)
                                )
                               )
                               (unreachable)
                              )
                              (local.set $1
                               (i32.add
                                (local.get $1)
                                (i32.const 16)
                               )
                              )
                              (if
                               (i32.eqz
                                (i32.load offset=24
                                 (local.get $0)
                                )
                               )
                               (unreachable)
                              )
                              (local.set $1
                               (call $~lib/as-chain/serializer/Encoder#constructor
                                (i32.add
                                 (local.get $1)
                                 (i32.const 16)
                                )
                               )
                              )
                              (if
                               (i32.eqz
                                (local.tee $2
                                 (i32.load
                                  (local.get $0)
                                 )
                                )
                               )
                               (unreachable)
                              )
                              (call $~lib/as-chain/serializer/Encoder#pack
                               (local.get $1)
                               (local.get $2)
                              )
                              (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                               (local.get $1)
                               (i64.load offset=8
                                (local.get $0)
                               )
                              )
                              (call $~lib/as-chain/serializer/Encoder#packString
                               (local.get $1)
                               (i32.load offset=16
                                (local.get $0)
                               )
                              )
                              (if
                               (i32.eqz
                                (local.tee $2
                                 (i32.load offset=20
                                  (local.get $0)
                                 )
                                )
                               )
                               (unreachable)
                              )
                              (call $~lib/as-chain/serializer/Encoder#pack
                               (local.get $1)
                               (local.get $2)
                              )
                              (if
                               (i32.eqz
                                (local.tee $0
                                 (i32.load offset=24
                                  (local.get $0)
                                 )
                                )
                               )
                               (unreachable)
                              )
                              (call $~lib/as-chain/serializer/Encoder#pack
                               (local.get $1)
                               (local.get $0)
                              )
                              (br $folding-inner3)
                             )
                             (if
                              (i32.eqz
                               (i32.load
                                (local.get $0)
                               )
                              )
                              (unreachable)
                             )
                             (local.set $1
                              (i32.add
                               (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                                (i32.load offset=16
                                 (local.get $0)
                                )
                               )
                               (i32.const 16)
                              )
                             )
                             (if
                              (i32.eqz
                               (i32.load offset=20
                                (local.get $0)
                               )
                              )
                              (unreachable)
                             )
                             (local.set $1
                              (call $~lib/as-chain/serializer/Encoder#constructor
                               (i32.add
                                (local.get $1)
                                (i32.const 18)
                               )
                              )
                             )
                             (if
                              (i32.eqz
                               (local.tee $2
                                (i32.load
                                 (local.get $0)
                                )
                               )
                              )
                              (unreachable)
                             )
                             (call $~lib/as-chain/serializer/Encoder#pack
                              (local.get $1)
                              (local.get $2)
                             )
                             (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                              (local.get $1)
                              (i64.load offset=8
                               (local.get $0)
                              )
                             )
                             (call $~lib/as-chain/serializer/Encoder#packString
                              (local.get $1)
                              (i32.load offset=16
                               (local.get $0)
                              )
                             )
                             (if
                              (i32.eqz
                               (local.tee $2
                                (i32.load offset=20
                                 (local.get $0)
                                )
                               )
                              )
                              (unreachable)
                             )
                             (call $~lib/as-chain/serializer/Encoder#pack
                              (local.get $1)
                              (local.get $2)
                             )
                             (call $~lib/as-chain/serializer/Encoder#packNumber<u16>
                              (local.get $1)
                              (i32.load16_u offset=24
                               (local.get $0)
                              )
                             )
                             (br $folding-inner3)
                            )
                            (return
                             (call $assembly/orderbook/orderbook.contract/stopLossOrderAction#pack
                              (local.get $0)
                             )
                            )
                           )
                           (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                            (local.tee $1
                             (call $~lib/as-chain/serializer/Encoder#constructor
                              (i32.const 12)
                             )
                            )
                            (i64.load
                             (local.get $0)
                            )
                           )
                           (call $~lib/as-chain/serializer/Encoder#packNumber<i32>
                            (local.get $1)
                            (i32.load offset=8
                             (local.get $0)
                            )
                           )
                           (br $folding-inner2)
                          )
                          (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                           (local.tee $1
                            (call $~lib/as-chain/serializer/Encoder#constructor
                             (i32.const 12)
                            )
                           )
                           (i64.load
                            (local.get $0)
                           )
                          )
                          (call $~lib/as-chain/serializer/Encoder#packNumber<i32>
                           (local.get $1)
                           (i32.load offset=8
                            (local.get $0)
                           )
                          )
                          (br $folding-inner2)
                         )
                         (if
                          (i32.eqz
                           (i32.load
                            (local.get $0)
                           )
                          )
                          (unreachable)
                         )
                         (local.set $1
                          (call $~lib/as-chain/serializer/Encoder#constructor
                           (i32.const 8)
                          )
                         )
                         (if
                          (i32.eqz
                           (local.tee $0
                            (i32.load
                             (local.get $0)
                            )
                           )
                          )
                          (unreachable)
                         )
                         (call $~lib/as-chain/serializer/Encoder#pack
                          (local.get $1)
                          (local.get $0)
                         )
                         (br $folding-inner2)
                        )
                        (if
                         (i32.eqz
                          (i32.load
                           (local.get $0)
                          )
                         )
                         (unreachable)
                        )
                        (if
                         (i32.eqz
                          (i32.load offset=4
                           (local.get $0)
                          )
                         )
                         (unreachable)
                        )
                        (local.set $1
                         (call $~lib/as-chain/serializer/Encoder#constructor
                          (i32.const 24)
                         )
                        )
                        (if
                         (i32.eqz
                          (local.tee $2
                           (i32.load
                            (local.get $0)
                           )
                          )
                         )
                         (unreachable)
                        )
                        (call $~lib/as-chain/serializer/Encoder#pack
                         (local.get $1)
                         (local.get $2)
                        )
                        (if
                         (i32.eqz
                          (local.tee $0
                           (i32.load offset=4
                            (local.get $0)
                           )
                          )
                         )
                         (unreachable)
                        )
                        (call $~lib/as-chain/serializer/Encoder#pack
                         (local.get $1)
                         (local.get $0)
                        )
                        (br $folding-inner2)
                       )
                       (if
                        (i32.eqz
                         (i32.load
                          (local.get $0)
                         )
                        )
                        (unreachable)
                       )
                       (local.set $1
                        (call $~lib/as-chain/serializer/Encoder#constructor
                         (i32.const 16)
                        )
                       )
                       (if
                        (i32.eqz
                         (local.tee $2
                          (i32.load
                           (local.get $0)
                          )
                         )
                        )
                        (unreachable)
                       )
                       (call $~lib/as-chain/serializer/Encoder#pack
                        (local.get $1)
                        (local.get $2)
                       )
                       (br $folding-inner0)
                      )
                      (return
                       (call $assembly/orderbook/orderbook.inline/TokenTransfer#pack
                        (local.get $0)
                       )
                      )
                     )
                     (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                      (local.tee $1
                       (call $~lib/as-chain/serializer/Encoder#constructor
                        (i32.const 8)
                       )
                      )
                      (i64.load
                       (local.get $0)
                      )
                     )
                     (br $folding-inner2)
                    )
                    (call $~lib/as-chain/serializer/Encoder#pack
                     (local.tee $1
                      (call $~lib/as-chain/serializer/Encoder#constructor
                       (i32.const 8)
                      )
                     )
                     (i32.load
                      (local.get $0)
                     )
                    )
                    (br $folding-inner2)
                   )
                   (call $~lib/as-chain/serializer/Encoder#packName
                    (local.tee $1
                     (call $~lib/as-chain/serializer/Encoder#constructor
                      (i32.const 16)
                     )
                    )
                    (i32.load
                     (local.get $0)
                    )
                   )
                   (call $~lib/as-chain/serializer/Encoder#packName
                    (local.get $1)
                    (i32.load offset=4
                     (local.get $0)
                    )
                   )
                   (br $folding-inner2)
                  )
                  (return
                   (call $~lib/as-chain/action/Action#pack
                    (local.get $0)
                   )
                  )
                 )
                 (i64.store
                  (i32.load offset=4
                   (local.tee $1
                    (call $~lib/array/Array<u8>#constructor
                     (i32.const 8)
                    )
                   )
                  )
                  (i64.load
                   (local.get $0)
                  )
                 )
                 (return
                  (local.get $1)
                 )
                )
                (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                 (local.tee $1
                  (call $~lib/as-chain/serializer/Encoder#constructor
                   (i32.const 8)
                  )
                 )
                 (i64.load
                  (local.get $0)
                 )
                )
                (br $folding-inner2)
               )
               (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                (local.tee $1
                 (call $~lib/as-chain/serializer/Encoder#constructor
                  (i32.const 16)
                 )
                )
                (i64.load
                 (local.get $0)
                )
               )
               (br $folding-inner1)
              )
              (return
               (call $assembly/orderbook/tables/pairs.table/PairsTable#pack
                (local.get $0)
               )
              )
             )
             (return
              (call $assembly/orderbook/tables/orders.table/OrdersTable#pack
               (local.get $0)
              )
             )
            )
            (return
             (call $assembly/orderbook/tables/trades.table/TradesTable#pack
              (local.get $0)
             )
            )
           )
           (return
            (call $assembly/orderbook/tables/balances.table/BalancesTable#pack
             (local.get $0)
            )
           )
          )
          (return
           (call $assembly/orderbook/tables/config.table/ConfigTable#pack
            (local.get $0)
           )
          )
         )
         (return
          (call $assembly/orderbook/tables/fees.table/FeesTable#pack
           (local.get $0)
          )
         )
        )
        (drop
         (i32.load
          (local.get $0)
         )
        )
        (drop
         (i32.load offset=4
          (local.get $0)
         )
        )
        (drop
         (i32.load offset=8
          (local.get $0)
         )
        )
        (call $~lib/as-chain/serializer/Encoder#pack
         (local.tee $1
          (call $~lib/as-chain/serializer/Encoder#constructor
           (i32.const 40)
          )
         )
         (i32.load
          (local.get $0)
         )
        )
        (call $~lib/as-chain/serializer/Encoder#pack
         (local.get $1)
         (i32.load offset=4
          (local.get $0)
         )
        )
        (br $folding-inner1)
       )
       (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
        (local.tee $1
         (call $~lib/as-chain/serializer/Encoder#constructor
          (i32.const 16)
         )
        )
        (i64.load
         (local.get $0)
        )
       )
       (br $folding-inner0)
      )
      (unreachable)
     )
     (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
      (local.get $1)
      (i64.load offset=8
       (local.get $0)
      )
     )
     (br $folding-inner2)
    )
    (call $~lib/as-chain/serializer/Encoder#pack
     (local.get $1)
     (i32.load offset=8
      (local.get $0)
     )
    )
   )
   (return
    (call $~lib/as-chain/serializer/Encoder#getBytes
     (local.get $1)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/idxdb/SecondaryIterator#constructor (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 20)
     (i32.const 43)
    )
   )
   (local.get $0)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:scope
   (local.get $3)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $3)
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/idxdb/SecondaryReturnValue#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 42)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $default
   (block $case1
    (if
     (i32.ne
      (local.tee $2
       (i32.load
        (i32.sub
         (local.get $0)
         (i32.const 8)
        )
       )
      )
      (i32.const 36)
     )
     (block
      (br_if $case1
       (i32.eq
        (local.get $2)
        (i32.const 38)
       )
      )
      (br $default)
     )
    )
    (local.set $2
     (call $~lib/rt/stub/__alloc
      (i32.const 8)
     )
    )
    (local.set $0
     (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
      (call $~lib/as-chain/env/db_idx64_find_primary
       (i64.load
        (local.get $0)
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $2)
       (local.get $1)
      )
      (local.get $1)
      (i32.load offset=24
       (local.get $0)
      )
     )
    )
    (call $~lib/array/Array<u64>#__set
     (local.tee $3
      (call $~lib/array/Array<u64>#constructor
       (i32.const 1)
      )
     )
     (i32.const 0)
     (i64.load
      (local.get $2)
     )
    )
    (return
     (call $~lib/as-chain/idxdb/SecondaryReturnValue#constructor
      (local.get $0)
      (call $~lib/as-chain/idxdb/SecondaryValue#constructor
       (i32.const 0)
       (local.get $3)
      )
     )
    )
   )
   (local.set $2
    (call $~lib/rt/stub/__alloc
     (i32.const 16)
    )
   )
   (local.set $3
    (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
     (call $~lib/as-chain/env/db_idx128_find_primary
      (i64.load
       (local.get $0)
      )
      (i64.load offset=8
       (local.get $0)
      )
      (i64.load offset=16
       (local.get $0)
      )
      (local.get $2)
      (local.get $1)
     )
     (local.get $1)
     (i32.load offset=24
      (local.get $0)
     )
    )
   )
   (call $~lib/array/Array<u64>#__set
    (local.tee $0
     (call $~lib/array/Array<u64>#constructor
      (i32.const 2)
     )
    )
    (i32.const 0)
    (i64.load
     (local.get $2)
    )
   )
   (call $~lib/array/Array<u64>#__set
    (local.get $0)
    (i32.const 1)
    (i64.load offset=8
     (local.get $2)
    )
   )
   (return
    (call $~lib/as-chain/idxdb/SecondaryReturnValue#constructor
     (local.get $3)
     (call $~lib/as-chain/idxdb/SecondaryValue#constructor
      (i32.const 1)
      (local.get $0)
     )
    )
   )
  )
  (unreachable)
 )
 (func $~lib/array/Array<u64>#__get (param $0 i32) (result i64)
  (if
   (i32.eqz
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (i64.load
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/idxdb/IDXDB#updateEx@virtual (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64)
  (local $4 i64)
  (block $default
   (block $case1
    (if
     (i32.ne
      (local.tee $0
       (i32.load
        (i32.sub
         (local.get $0)
         (i32.const 8)
        )
       )
      )
      (i32.const 36)
     )
     (block
      (br_if $case1
       (i32.eq
        (local.get $0)
        (i32.const 38)
       )
      )
      (br $default)
     )
    )
    (call $~lib/as-chain/system/assert
     (i32.eqz
      (i32.load
       (local.get $2)
      )
     )
     (i32.const 13648)
    )
    (local.set $4
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=4
       (local.get $2)
      )
     )
    )
    (i64.store
     (local.tee $0
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.get $4)
    )
    (call $~lib/as-chain/env/db_idx64_update
     (i32.load
      (local.get $1)
     )
     (local.get $3)
     (local.get $0)
    )
    (return)
   )
   (call $~lib/as-chain/system/check
    (i32.eq
     (i32.load
      (local.get $2)
     )
     (i32.const 1)
    )
    (i32.const 13712)
   )
   (call $~lib/as-chain/system/check
    (i32.eq
     (i32.load offset=12
      (i32.load offset=4
       (local.get $2)
      )
     )
     (i32.const 2)
    )
    (i32.const 13712)
   )
   (call $~lib/as-chain/env/db_idx128_update
    (i32.load
     (local.get $1)
    )
    (local.get $3)
    (i32.load offset=4
     (i32.load offset=4
      (local.get $2)
     )
    )
   )
   (return)
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#storeEx@virtual (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64)
  (local $4 i32)
  (local $5 i64)
  (block $default
   (block $case1
    (if
     (i32.ne
      (local.tee $4
       (i32.load
        (i32.sub
         (local.get $0)
         (i32.const 8)
        )
       )
      )
      (i32.const 36)
     )
     (block
      (br_if $case1
       (i32.eq
        (local.get $4)
        (i32.const 38)
       )
      )
      (br $default)
     )
    )
    (call $~lib/as-chain/system/assert
     (i32.eqz
      (i32.load
       (local.get $2)
      )
     )
     (i32.const 13776)
    )
    (local.set $5
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=4
       (local.get $2)
      )
     )
    )
    (i64.store
     (local.tee $2
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.get $5)
    )
    (drop
     (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
      (call $~lib/as-chain/env/db_idx64_store
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $3)
       (local.get $1)
       (local.get $2)
      )
      (local.get $1)
      (i32.load offset=24
       (local.get $0)
      )
     )
    )
    (return)
   )
   (call $~lib/as-chain/system/check
    (i32.eq
     (i32.load
      (local.get $2)
     )
     (i32.const 1)
    )
    (i32.const 13840)
   )
   (call $~lib/as-chain/system/check
    (i32.eq
     (i32.load offset=12
      (i32.load offset=4
       (local.get $2)
      )
     )
     (i32.const 2)
    )
    (i32.const 13712)
   )
   (drop
    (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
     (call $~lib/as-chain/env/db_idx128_store
      (i64.load offset=8
       (local.get $0)
      )
      (i64.load offset=16
       (local.get $0)
      )
      (local.get $3)
      (local.get $1)
      (i32.load offset=4
       (i32.load offset=4
        (local.get $2)
       )
      )
     )
     (local.get $1)
     (i32.load offset=24
      (local.get $0)
     )
    )
   )
   (return)
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#remove@virtual (param $0 i32) (param $1 i32)
  (block $default
   (block $case1
    (if
     (i32.ne
      (local.tee $0
       (i32.load
        (i32.sub
         (local.get $0)
         (i32.const 8)
        )
       )
      )
      (i32.const 36)
     )
     (block
      (br_if $case1
       (i32.eq
        (local.get $0)
        (i32.const 38)
       )
      )
      (br $default)
     )
    )
    (call $~lib/as-chain/env/db_idx64_remove
     (i32.load
      (local.get $1)
     )
    )
    (return)
   )
   (call $~lib/as-chain/env/db_idx128_remove
    (i32.load
     (local.get $1)
    )
   )
   (return)
  )
  (unreachable)
 )
 (func $~start
  (local $0 i32)
  (global.set $~lib/rt/stub/offset
   (i32.const 13884)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 0)
  )
  (global.set $~lib/as-chain/name/EMPTY_NAME
   (local.get $0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 0)
  )
 )
)
