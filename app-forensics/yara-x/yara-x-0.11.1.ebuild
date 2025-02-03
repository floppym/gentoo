# Copyright 2024-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.4

EAPI=8

DISTUTILS_EXT=1
DISTUTILS_USE_PEP517=maturin
DISTUTILS_OPTIONAL=1
PYTHON_COMPAT=( python3_{10..13} )

CRATES="
	adler2@2.0.0
	aes@0.8.4
	ahash@0.8.11
	aho-corasick@1.1.3
	alloc-no-stdlib@2.0.4
	alloc-stdlib@0.2.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	annotate-snippets@0.11.4
	anstream@0.6.18
	anstyle-parse@0.2.6
	anstyle-query@1.1.2
	anstyle-wincon@3.0.6
	anstyle@1.0.10
	anyhow@1.0.93
	arbitrary@1.4.1
	array-bytes@6.2.3
	ascii_tree@0.1.1
	asn1-rs-derive@0.5.1
	asn1-rs-impl@0.2.0
	asn1-rs@0.6.2
	atomic@0.6.0
	autocfg@1.4.0
	base16ct@0.2.0
	base64@0.13.1
	base64@0.22.1
	base64ct@1.6.0
	beef@0.5.2
	bincode@1.3.3
	bitflags@1.3.2
	bitflags@2.6.0
	bitmask@0.5.0
	bitvec@1.0.1
	block-buffer@0.10.4
	block-buffer@0.9.0
	brotli-decompressor@2.5.1
	brotli@3.5.0
	bstr@1.11.0
	bumpalo@3.16.0
	bytemuck@1.20.0
	byteorder@1.5.0
	bytes@1.8.0
	bzip2-sys@0.1.11+1.0.8
	bzip2@0.4.4
	castaway@0.2.3
	cbindgen@0.27.0
	cc@1.2.1
	cfg-if@1.0.0
	chardetng@0.1.17
	chrono@0.4.38
	cipher@0.4.4
	clap@4.5.21
	clap_builder@4.5.21
	clap_complete@4.5.38
	clap_derive@4.5.18
	clap_lex@0.7.3
	cobs@0.2.3
	colorchoice@1.0.3
	colored_json@5.0.0
	compact_str@0.7.1
	console@0.15.8
	const-oid@0.9.6
	const-random-macro@0.1.16
	const-random@0.1.18
	constant_time_eq@0.3.1
	core-foundation-sys@0.8.7
	countme@3.0.1
	cpufeatures@0.2.16
	cranelift-bforest@0.113.1
	cranelift-bitset@0.113.1
	cranelift-codegen-meta@0.113.1
	cranelift-codegen-shared@0.113.1
	cranelift-codegen@0.113.1
	cranelift-control@0.113.1
	cranelift-entity@0.113.1
	cranelift-frontend@0.113.1
	cranelift-isle@0.113.1
	cranelift-native@0.113.1
	crc-catalog@2.4.0
	crc32fast@1.4.2
	crc@3.2.1
	crossbeam-channel@0.5.13
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-queue@0.3.11
	crossbeam-utils@0.8.20
	crossbeam@0.8.4
	crossterm@0.23.2
	crossterm@0.28.1
	crossterm_winapi@0.9.1
	crunchy@0.2.2
	crypto-bigint@0.5.5
	crypto-common@0.1.6
	csscolorparser@0.6.2
	darling@0.20.10
	darling_core@0.20.10
	darling_macro@0.20.10
	data-encoding@2.6.0
	deflate64@0.1.9
	deltae@0.3.2
	der-parser@9.0.0
	der@0.7.9
	deranged@0.3.11
	derive_arbitrary@1.4.1
	diff@0.1.13
	digest@0.10.7
	digest@0.9.0
	dirs-sys@0.3.7
	dirs@4.0.0
	displaydoc@0.2.5
	dsa@0.6.3
	ecdsa@0.16.9
	either@1.13.0
	elliptic-curve@0.13.8
	embedded-io@0.4.0
	embedded-io@0.6.1
	enable-ansi-support@0.2.1
	encode_unicode@0.3.6
	encoding_rs@0.8.35
	enum_dispatch@0.3.13
	env_filter@0.1.2
	env_logger@0.11.5
	equivalent@1.0.1
	errno@0.3.9
	fallible-iterator@0.2.0
	fallible-iterator@0.3.0
	fastrand@2.2.0
	ff@0.13.0
	figment@0.10.19
	filedescriptor@0.8.2
	finl_unicode@1.3.0
	fixedbitset@0.4.2
	flate2@1.0.35
	fmmap@0.3.3
	fnv@1.0.7
	foldhash@0.1.3
	fraction@0.14.0
	fs4@0.6.6
	funty@2.0.0
	generic-array@0.14.7
	getrandom@0.2.15
	gimli@0.26.2
	gimli@0.31.1
	glob@0.3.1
	globset@0.4.15
	globwalk@0.9.1
	goldenfile@1.7.3
	group@0.13.0
	hashbrown@0.12.3
	hashbrown@0.14.5
	hashbrown@0.15.1
	heck@0.4.1
	heck@0.5.0
	hermit-abi@0.3.9
	hex@0.4.3
	hkdf@0.12.4
	hmac@0.12.1
	home@0.5.9
	humantime@2.1.0
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.61
	id-arena@2.2.1
	ident_case@1.0.1
	ignore@0.4.23
	ihex@3.0.0
	include_dir@0.7.4
	include_dir_macros@0.7.4
	indexmap@1.9.3
	indexmap@2.6.0
	indoc@2.0.5
	inout@0.1.3
	intaglio@1.9.1
	is_terminal_polyfill@1.70.1
	itertools@0.10.5
	itertools@0.12.1
	itertools@0.13.0
	itoa@1.0.13
	jobserver@0.1.32
	js-sys@0.3.72
	lab@0.11.0
	lazy_static@1.5.0
	leb128@0.2.5
	libc@0.2.164
	libm@0.2.11
	libredox@0.1.3
	lingua-english-language-model@1.1.0
	lingua-french-language-model@1.1.0
	lingua-german-language-model@1.1.0
	lingua-spanish-language-model@1.1.0
	lingua@1.6.2
	linkme-impl@0.3.31
	linkme@0.3.31
	linux-raw-sys@0.4.14
	lock_api@0.4.12
	lockfree-object-pool@0.1.6
	log@0.4.22
	logos-codegen@0.14.2
	logos-derive@0.14.2
	logos@0.14.2
	lzma-rs@0.3.0
	mach2@0.4.2
	magic-sys@0.3.0
	magic@0.16.2
	maplit@1.0.2
	md-5@0.10.6
	md2@0.10.2
	memchr@2.7.4
	memfd@0.6.4
	memmapix@0.7.6
	memmem@0.1.1
	memoffset@0.6.5
	memoffset@0.9.1
	memx@0.1.32
	minimal-lexical@0.2.1
	miniz_oxide@0.8.0
	mio@0.8.11
	mio@1.0.2
	nix@0.24.3
	nom@5.1.3
	nom@7.1.3
	num-bigint-dig@0.8.4
	num-bigint@0.4.6
	num-complex@0.4.6
	num-conv@0.1.0
	num-derive@0.3.3
	num-derive@0.4.2
	num-integer@0.1.46
	num-iter@0.1.45
	num-rational@0.4.2
	num-traits@0.2.19
	num@0.4.3
	object@0.36.5
	oid-registry@0.7.1
	once_cell@1.20.2
	opaque-debug@0.3.1
	ordered-float@3.9.2
	ordered-float@4.5.0
	p256@0.13.2
	p384@0.13.0
	parking_lot@0.12.3
	parking_lot_core@0.9.10
	parse-display-derive@0.8.2
	parse-display@0.8.2
	paste@1.0.15
	pbkdf2@0.12.2
	pem-rfc7468@0.7.0
	pest@2.7.14
	pest_derive@2.7.14
	pest_generator@2.7.14
	pest_meta@2.7.14
	phf@0.10.1
	phf@0.11.2
	phf_codegen@0.11.2
	phf_generator@0.11.2
	phf_macros@0.11.2
	phf_shared@0.10.0
	phf_shared@0.11.2
	pkcs1@0.7.5
	pkcs8@0.10.2
	pkg-config@0.3.31
	portable-atomic@1.9.0
	postcard@1.0.10
	powerfmt@0.2.0
	ppv-lite86@0.2.20
	pretty_assertions@1.4.1
	primeorder@0.13.6
	proc-macro2@1.0.92
	protobuf-codegen@3.7.1
	protobuf-json-mapping@3.7.1
	protobuf-parse@3.7.1
	protobuf-support@3.7.1
	protobuf@3.7.1
	psm@0.1.24
	pulley-interpreter@26.0.1
	pyo3-build-config@0.22.6
	pyo3-ffi@0.22.6
	pyo3-file@0.9.0
	pyo3-macros-backend@0.22.6
	pyo3-macros@0.22.6
	pyo3@0.22.6
	quanta@0.12.3
	quote@1.0.37
	radium@0.7.0
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	raw-cpuid@11.2.0
	rayon-core@1.12.1
	rayon@1.10.0
	redox_syscall@0.5.7
	redox_users@0.4.6
	regalloc2@0.10.2
	regex-automata@0.4.9
	regex-syntax@0.7.5
	regex-syntax@0.8.5
	regex@1.11.1
	rfc6979@0.4.0
	ring@0.17.8
	rowan@0.16.0
	roxmltree@0.20.0
	rsa@0.9.6
	rustc-hash@1.1.0
	rustc-hash@2.0.0
	rusticata-macros@4.1.0
	rustix@0.38.41
	rustversion@1.0.18
	ryu@1.0.18
	same-file@1.0.6
	scopeguard@1.2.0
	sec1@0.7.3
	semver-parser@0.10.3
	semver@0.11.0
	semver@1.0.23
	serde-wasm-bindgen@0.6.5
	serde@1.0.215
	serde_derive@1.0.215
	serde_json@1.0.133
	serde_spanned@0.6.8
	sha1@0.10.6
	sha2@0.10.8
	sha2@0.9.9
	shlex@1.3.0
	signal-hook-mio@0.2.4
	signal-hook-registry@1.4.2
	signal-hook@0.1.17
	signal-hook@0.3.17
	signature@2.2.0
	simd-adler32@0.3.7
	similar-asserts@1.6.0
	similar@2.6.0
	siphasher@0.3.11
	slice-group-by@0.3.1
	smallvec@1.13.2
	spin@0.9.8
	spki@0.7.3
	sptr@0.3.2
	stable_deref_trait@1.2.0
	static_assertions@1.1.0
	strsim@0.10.0
	strsim@0.11.1
	structmeta-derive@0.2.0
	structmeta@0.2.0
	strum@0.25.0
	strum_macros@0.25.3
	strum_macros@0.26.4
	subtle@2.6.1
	superconsole@0.2.0
	syn@1.0.109
	syn@2.0.89
	synstructure@0.13.1
	tap@1.0.1
	target-lexicon@0.12.16
	tempfile@3.14.0
	termcolor@1.4.1
	terminfo@0.7.5
	termios@0.3.3
	termwiz@0.18.0
	text-size@1.1.1
	thiserror-impl@1.0.69
	thiserror-impl@2.0.3
	thiserror@1.0.69
	thiserror@2.0.3
	time-core@0.1.2
	time-macros@0.2.18
	time@0.3.36
	tiny-keccak@2.0.2
	tlsh-fixed@0.1.1
	toml@0.8.19
	toml_datetime@0.6.8
	toml_edit@0.22.22
	typenum@1.17.0
	ucd-trie@0.1.7
	uncased@0.9.10
	unicode-ident@1.0.14
	unicode-segmentation@1.12.0
	unicode-width@0.1.14
	unicode-xid@0.2.6
	unindent@0.2.3
	untrusted@0.9.0
	utf8parse@0.2.2
	uuid@1.11.0
	vcpkg@0.2.15
	version_check@0.9.5
	vtparse@0.6.2
	walkdir@2.5.0
	walrus-macro@0.22.0
	walrus@0.23.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.95
	wasm-bindgen-macro-support@0.2.95
	wasm-bindgen-macro@0.2.95
	wasm-bindgen-shared@0.2.95
	wasm-bindgen@0.2.95
	wasm-encoder@0.214.0
	wasm-encoder@0.218.0
	wasmparser@0.214.0
	wasmparser@0.218.0
	wasmprinter@0.218.0
	wasmtime-asm-macros@26.0.1
	wasmtime-component-macro@26.0.1
	wasmtime-component-util@26.0.1
	wasmtime-cranelift@26.0.1
	wasmtime-environ@26.0.1
	wasmtime-jit-icache-coherence@26.0.1
	wasmtime-slab@26.0.1
	wasmtime-versioned-export-macros@26.0.1
	wasmtime-wit-bindgen@26.0.1
	wasmtime@26.0.1
	web-sys@0.3.72
	wezterm-bidi@0.2.3
	wezterm-color-types@0.2.0
	wezterm-dynamic-derive@0.1.0
	wezterm-dynamic@0.1.0
	wezterm-dynamic@0.2.0
	which@4.4.2
	wild@2.2.1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.9
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-sys@0.42.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-sys@0.59.0
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	winnow@0.6.20
	wit-parser@0.218.0
	wyz@0.5.1
	x509-parser@0.16.0
	yansi@1.0.1
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
	zeroize@1.8.1
	zeroize_derive@1.4.2
	zip@2.2.1
	zopfli@0.8.1
	zstd-safe@7.2.1
	zstd-sys@2.0.13+zstd.1.5.6
	zstd@0.13.2
"

inherit cargo distutils-r1

DESCRIPTION="A malware identification and classification tool"
HOMEPAGE="https://virustotal.github.io/yara-x/"
SRC_URI="
	https://github.com/VirusTotal/yara-x/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="BSD"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD Boost-1.0 CC0-1.0
	EPL-2.0 ISC MIT MPL-2.0 Unicode-3.0 Unicode-DFS-2016 WTFPL-2 ZLIB
"

SLOT="0"
# Note: cranelift dependency only supports amd64, arm64, s390, and riscv64 as of 2025
KEYWORDS="~amd64"
IUSE="python"
REQUIRED_USE="
	python? ( ${PYTHON_REQUIRED_USE} )
"

RDEPEND="
	python? ( ${PYTHON_DEPS} )
"
BDEPEND="
	python? (
		${PYTHON_DEPS}
		${DISTUTILS_DEPS}
	)
"

wrap_python() {
	local phase=$1
	shift

	if use python; then
		pushd py >/dev/null || die
		distutils-r1_${phase} "$@"
		popd >/dev/null || die
	fi
}

# https://bugs.gentoo.org/933231, https://bugs.gentoo.org/933232
QA_FLAGS_IGNORED="usr/bin/yr"

pkg_setup() {
	# https://bugs.gentoo.org/933233
	QA_SONAME="usr/$(get_libdir)/libyara_x.*\\.so usr/lib.*/py.*/site-packages/yara_x/yara_x.*\\.so"

	rust_pkg_setup
}

src_prepare() {
	default
	wrap_python ${FUNCNAME}
}

src_compile() {
	cargo_src_compile --workspace
	wrap_python ${FUNCNAME}
}

python_test() {
	epytest
}

src_test() {
	cargo_src_test
	wrap_python ${FUNCNAME}
}

src_install() {
	dobin "$(cargo_target_dir)"/yr
	dolib.so "$(cargo_target_dir)"/*.so

	wrap_python ${FUNCNAME}
}
