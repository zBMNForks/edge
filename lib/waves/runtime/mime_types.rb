module Waves

  # Waves::MimeTypes defines an interface for adding MIME types used in mapping requests
  # to content types. Originally taken from Mongrel.

  module MimeTypes

    def self.[](path)
      mapping[path]
    end

    # TODO: This does not seem to be working.
    def self.<<( mapping )
      mapping.merge!( mapping )
    end

    def self.mapping
      @mapping ||= Waves::MIME_TYPES
    end

  end


  module Mime
    # Undefined MIME type.
    #
    # Primarily used to indicate the absence of a file
    # extension.
    #
    # @see  Request#accept
    #
    Undefined = "application/vnd.com.rubywaves.undefined"
  end

  MIME_TYPES = {
    ".skd"=>"application/x-koan",
    ".el"=>"text/x-script.elisp",
    ".iges"=>"application/iges",
    ".iefs"=>"image/ief",
    ".omcr"=>"application/x-omcregerator",
    ".spc"=>"text/x-speech",
    ".mng"=>"video/x-mng",
    ".deb"=>"application/octet-stream",
    ".mzz"=>"application/x-vnd.audioexplosion.mzz",
    ".csh"=>"text/x-script.csh",
    ".pfx"=>"application/x-pkcs12",
    ".lhx"=>"application/octet-stream",
    ".xls"=>"application/excel",
    ".wsc"=>"text/scriplet",
    ".tsp"=>"audio/tsplayer",
    ".ccad"=>"application/clariscad",
    ".mpga"=>"audio/mpeg",
    ".pps"=>"application/mspowerpoint",
    ".htt"=>"text/webviewhtml",
    ".texinfo"=>"application/x-texinfo",
    ".p10"=>"application/x-pkcs10",
    ".xlt"=>"application/excel",
    ".ppt"=>"application/mspowerpoint",
    ".es"=>"application/x-esrehber",
    ".fdf"=>"application/vnd.fdf",
    ".def"=>"text/plain",
    ".p12"=>"application/x-pkcs12",
    ".pdb"=>"application/x-pilot",
    ".fpx"=>"image/vnd.net-fpx",
    ".xlv"=>"application/excel",
    ".tk"=>"application/x-tcl",
    ".msi"=>"application/octet-stream",
    ".xlw"=>"application/excel",
    ".xgz"=>"xgl/drawing",
    ".wsrc"=>"application/x-wais-source",
    ".vrt"=>"x-world/x-vrt",
    ".htx"=>"text/html",
    ".js"=>"text/javascript",
    ".fif"=>"image/fif",
    ".pic"=>"image/pict",
    ".doc"=>"application/msword",
    ".setpay"=>"application/set-payment-initiation",
    ".skm"=>"application/x-koan",
    ".tsv"=>"text/tab-separated-values",
    ".pdf"=>"application/pdf",
    ".txt"=>"text/plain",
    ".ppz"=>"application/mspowerpoint",
    ".spl"=>"application/futuresplash",
    ".msm"=>"application/octet-stream",
    ".rexx"=>"text/x-script.rexx",
    ".skp"=>"application/x-koan",
    ".rtx"=>"text/richtext",
    ".jpeg"=>"image/jpeg",
    ".tr"=>"application/x-troff",
    ".css"=>"text/css",
    ".lam"=>"audio/x-liveaudio",
    ".msp"=>"application/octet-stream",
    ".sv4cpio"=>"application/x-sv4cpio",
    ".cc"=>"text/plain",
    ".tbk"=>"application/x-tbook",
    ".class"=>"application/octet-stream",
    ".png"=>"image/png",
    ".acgi"=>"text/html",
    ".psd"=>"application/octet-stream",
    ".skt"=>"application/x-koan",
    ".spr"=>"application/x-sprite",
    ".idc"=>"text/plain",
    ".bas"=>"text/plain",
    ".gtar"=>"application/x-gtar",
    ".bcpio"=>"application/x-bcpio",
    ".xof"=>"x-world/x-vrml",
    ".der"=>"application/x-x509-ca-cert",
    ".mbd"=>"application/mbedlet",
    ".rmi"=>"audio/mid",
    ".turbot"=>"image/florian",
    ".mc"=>"application/x-magic-cap-package-1.0",
    ".ra"=>"audio/x-realaudio",
    ".xpix"=>"application/x-vnd.ls-xpix",
    ".wiz"=>"application/msword",
    ".cxx"=>"text/plain",
    ".me"=>"application/x-troff-me",
    ".lzh"=>"application/x-lzh",
    ".hh"=>"text/plain",
    ".arc"=>"application/octet-stream",
    ".rmm"=>"audio/x-pn-realaudio",
    ".pnm"=>"image/x-portable-anymap",
    ".zsh"=>"text/x-script.zsh",
    ".sid"=>"audio/x-psid",
    ".pfunk"=>"audio/make.my.funk",
    ".zip"=>"application/zip",
    ".wbmp"=>"image/vnd.wap.wbmp",
    ".rmp"=>"audio/x-pn-realaudio-plugin",
    ".iii"=>"application/x-iphone",
    ".snd"=>"audio/x-adpcm",
    ".rf"=>"image/vnd.rn-realflash",
    ".mvb"=>"application/x-msmediaview",
    ".qtc"=>"video/x-qtc",
    ".rast"=>"image/cmu-raster",
    ".arj"=>"application/octet-stream",
    ".ear"=>"application/java-archive",
    ".mm"=>"application/x-meme",
    ".funk"=>"audio/make",
    ".smil"=>"application/smil",
    ".f90"=>"text/x-fortran",
    ".vda"=>"application/vda",
    ".tgz"=>"application/x-compressed",
    ".clp"=>"application/x-msclip",
    ".word"=>"application/msword",
    ".rm"=>"audio/x-pn-realaudio",
    ".sdp"=>"application/x-sdp",
    ".uri"=>"text/uri-list",
    ".latex"=>"application/x-latex",
    ".mpeg"=>"video/mpeg",
    ".ssi"=>"text/x-server-parsed-html",
    ".qti"=>"image/x-quicktime",
    ".m3u"=>"audio/x-mpegurl",
    ".dhh"=>"application/david-heinemeier-hansson",
    ".sdr"=>"application/sounder",
    ".rp"=>"image/vnd.rn-realpix",
    ".ms"=>"application/x-troff-ms",
    ".dmg"=>"application/octet-stream",
    ".deepv"=>"application/x-deepv",
    ".iso"=>"application/octet-stream",
    ".eps"=>"application/postscript",
    ".jfif-tbnl"=>"image/jpeg",
    ".ssm"=>"application/streamingmedia",
    ".lzx"=>"application/x-lzx",
    ".isp"=>"application/x-internet-signup",
    ".wp"=>"application/wordperfect",
    ".ins"=>"application/x-internett-signup",
    ".art"=>"image/x-jg",
    ".mv"=>"video/x-sgi-movie",
    ".fli"=>"video/x-fli",
    ".sit"=>"application/x-stuffit",
    ".rt"=>"text/vnd.rn-realtext",
    ".movie"=>"video/x-sgi-movie",
    ".hpg"=>"application/vnd.hp-hpgl",
    ".htmls"=>"text/html",
    ".sprite"=>"application/x-sprite",
    ".ram"=>"audio/x-pn-realaudio",
    ".pbm"=>"image/x-portable-bitmap",
    ".ncm"=>"application/vnd.nokia.configuration-message",
    ".bin"=>"application/octet-stream",
    ".pm4"=>"application/x-pagemaker",
    ".bsh"=>"application/x-bsh",
    ".lsf"=>"video/x-la-asf",
    ".oda"=>"application/oda",
    ".rv"=>"video/vnd.rn-realvideo",
    ".pm5"=>"application/x-pagemaker",
    ".atom"=>"application/atom+xml",
    ".my"=>"audio/make",
    ".vsd"=>"application/x-visio",
    ".dwg"=>"image/x-dwg",
    ".dcr"=>"application/x-director",
    ".isu"=>"video/x-isvideo",
    ".xyz"=>"chemical/x-pdb",
    ".texi"=>"application/x-texinfo",
    ".part"=>"application/pro_eng",
    ".pgm"=>"image/x-portable-greymap",
    ".g3"=>"image/g3fax",
    ".ai"=>"application/postscript",
    ".flo"=>"image/florian",
    ".a"=>"application/octet-stream",
    ".xwd"=>"image/x-xwindowdump",
    ".vdo"=>"video/vdo",
    ".rar"=>"application/x-rar-compressed",
    ".sst"=>"application/vnd.ms-pkicertstore",
    ".wmlsc"=>"application/vnd.wap.wmlscriptc",
    ".web"=>"application/vnd.xara",
    ".uris"=>"text/uri-list",
    ".ras"=>"image/x-cmu-raster",
    ".c"=>"text/plain",
    ".cod"=>"image/cis-cod",
    ".qd3"=>"x-world/x-3dmf",
    ".flr"=>"x-world/x-vrml",
    ".xml"=>"text/xml",
    ".hpgl"=>"application/vnd.hp-hpgl",
    ".dms"=>"application/octet-stream",
    ".afl"=>"video/animaflex",
    ".rpm"=>"audio/x-pn-realaudio-plugin",
    ".mjf"=>"audio/x-vnd.audioexplosion.mjuicemediafile",
    ".f"=>"text/x-fortran",
    ".java"=>"text/x-java-source",
    ".mod"=>"audio/mod",
    ".jardiff"=>"application/x-java-archive-diff",
    ".g"=>"text/plain",
    ".wk1"=>"application/x-123",
    ".h"=>"text/plain",
    ".lsp"=>"text/x-script.lisp",
    ".sbk"=>"application/x-tbook",
    ".run"=>"application/x-makeself",
    ".mp2"=>"audio/mpeg",
    ".flv"=>"video/x-flv",
    ".wmlc"=>"application/vnd.wap.wmlc",
    ".s3m"=>"audio/s3m",
    ".mp3"=>"audio/mpeg",
    ".pot,"=>"application/vnd.ms-powerpoint",
    ".exe"=>"application/octet-stream",
    ".list"=>"text/plain",
    ".tex"=>"application/x-tex",
    ".flx"=>"text/vnd.fmi.flexstor",
    ".text"=>"text/plain",
    ".x-png"=>"image/png",
    ".viv"=>"video/vnd.vivo",
    ".niff"=>"image/x-niff",
    ".drw"=>"application/drafting",
    ".lst"=>"text/plain",
    ".kar"=>"music/x-karaoke",
    ".cer"=>"application/x-x509-ca-cert",
    ".m"=>"text/x-m",
    ".com"=>"text/plain",
    ".pl"=>"text/x-script.perl",
    ".uue"=>"text/x-uuencode",
    ".qcp"=>"audio/vnd.qcelp",
    ".au"=>"audio/x-au",
    ".plx"=>"application/x-pixclscript",
    ".nws"=>"message/rfc822",
    ".sgm"=>"text/x-sgml",
    ".hdf"=>"application/x-hdf",
    ".pm"=>"text/x-script.perl-module",
    ".wp5"=>"application/wordperfect",
    ".saveme"=>"application/octet-stream",
    ".svf"=>"image/x-dwg",
    ".wp6"=>"application/wordperfect",
    ".vst"=>"application/x-visio",
    ".svg"=>"image/svg+xml",
    ".o"=>"application/octet-stream",
    ".igs"=>"application/iges",
    ".pvu"=>"paleovu/x-pv",
    ".mhtml"=>"message/rfc822",
    ".p"=>"text/x-pascal",
    ".m1v"=>"video/mpeg",
    ".lsx"=>"video/x-la-asf",
    ".xaf"=>"x-world/x-vrml",
    ".f77"=>"text/x-fortran",
    ".xmz"=>"xgl/movie",
    ".vsw"=>"application/x-visio",
    ".book"=>"application/book",
    ".aps"=>"application/mime",
    ".cpio"=>"application/x-cpio",
    ".s"=>"text/x-asm",
    ".ps"=>"application/postscript",
    ".wtk"=>"application/x-wintalk",
    ".mjpg"=>"video/x-motion-jpeg",
    ".t"=>"application/x-troff",
    ".dump"=>"application/octet-stream",
    ".jcm"=>"application/x-java-commerce",
    ".env"=>"application/x-envoy",
    ".cha"=>"application/x-chat",
    ".w6w"=>"application/msword",
    ".sdml"=>"text/plain",
    ".tcl"=>"text/x-script.tcl",
    ".rng"=>"application/vnd.nokia.ringing-tone",
    ".ivr"=>"i-world/i-vrml",
    ".vqe"=>"audio/x-twinvq-plugin",
    ".uu"=>"text/x-uuencode",
    ".pem"=>"application/x-x509-ca-cert",
    ".nap"=>"image/naplps",
    ".qd3d"=>"x-world/x-3dmf",
    ".shar"=>"application/x-shar",
    ".vqf"=>"audio/x-twinvq",
    ".mov"=>"video/quicktime",
    ".pyc"=>"applicaiton/x-bytecode.python",
    ".py"=>"text/x-script.phyton",
    ".z"=>"application/x-compressed",
    ".wmls"=>"text/vnd.wap.wmlscript",
    ".sea"=>"application/x-sea",
    ".mcd"=>"application/x-mathcad",
    ".unis"=>"text/uri-list",
    ".svr"=>"x-world/x-svr",
    ".elc"=>"application/x-elc",
    ".ief"=>"image/ief",
    ".aif"=>"audio/aiff",
    ".xhtml"=>"application/xhtml+xml",
    ".gzip"=>"application/x-gzip",
    ".nc"=>"application/x-netcdf",
    ".mcf"=>"text/mcf",
    ".step"=>"application/step",
    ".xpi"=>"application/x-xpinstall",
    ".imap"=>"application/x-httpd-imap",
    ".mime"=>"www/mime",
    ".ivy"=>"application/x-livescreen",
    ".dl"=>"video/dl",
    ".for"=>"text/x-fortran",
    ".crd"=>"application/x-mscardfile",
    ".vql"=>"audio/x-twinvq-plugin",
    ".mme"=>"application/base64",
    ".jnlp"=>"application/x-java-jnlp-file",
    ".xpm"=>"image/xpm",
    ".trm"=>"application/x-msterminal",
    ".ani"=>"application/x-navi-animation",
    ".mrc"=>"application/marc",
    ".asf"=>"video/x-ms-asf",
    ".cco"=>"application/x-cocoa",
    ".zoo"=>"application/octet-stream",
    ".vrml"=>"x-world/x-vrml",
    ".dp"=>"application/commonground",
    ".html"=>"text/html",
    ".qtif"=>"image/x-quicktime",
    ".sh"=>"text/x-script.sh",
    ".wmf"=>"windows/metafile",
    ".pot"=>"application/vnd.ms-powerpoint",
    ".aip"=>"text/x-audiosoft-intra",
    ".wcm"=>"application/vnd.ms-works",
    ".ksh"=>"text/x-script.ksh",
    ".mcp"=>"application/netmc",
    ".ip"=>"application/x-ip2",
    ".sgml"=>"text/x-sgml",
    ".pov"=>"model/x-pov",
    ".rss"=>"text/xml",
    ".mml"=>"text/mathml",
    ".crl"=>"application/pkix-crl",
    ".uni"=>"text/uri-list",
    ".uil"=>"text/x-uil",
    ".rgb"=>"image/x-rgb",
    ".hlb"=>"text/x-script",
    ".asm"=>"text/x-asm",
    ".sl"=>"application/x-seelogo",
    ".rnx"=>"application/vnd.rn-realplayer",
    ".dif"=>"video/x-dv",
    ".dv"=>"video/x-dv",
    ".chat"=>"application/x-chat",
    ".inf"=>"application/inf",
    ".it"=>"audio/it",
    ".pma"=>"application/x-perfmon",
    ".xl"=>"application/excel",
    ".wri"=>"application/mswrite",
    ".wml"=>"text/vnd.wap.wml",
    ".sol"=>"application/solids",
    ".asp"=>"text/asp",
    ".xm"=>"audio/xm",
    ".jfif"=>"image/pjpeg",
    ".nif"=>"image/x-niff",
    ".fmf"=>"video/x-atomic3d-feature",
    ".iv"=>"application/x-inventor",
    ".pmc"=>"application/x-perfmon",
    ".mht"=>"message/rfc822",
    ".roff"=>"application/x-troff",
    ".stl"=>"application/x-navistyle",
    ".talk"=>"text/x-speech",
    ".asr"=>"video/x-ms-asf",
    ".set"=>"application/set",
    ".wrl"=>"application/x-world",
    ".jam"=>"audio/x-jam",
    ".abc"=>"text/vnd.abc",
    ".stm"=>"text/html",
    ".jpe"=>"image/jpeg",
    ".sv4crc"=>"application/x-sv4crc",
    ".voc"=>"audio/x-voc",
    ".prc"=>"application/x-pilot",
    ".m2a"=>"audio/mpeg",
    ".nsc"=>"application/x-conference",
    ".help"=>"application/x-helpfile",
    ".hgl"=>"application/vnd.hp-hpgl",
    ".crt"=>"application/x-x509-ca-cert",
    ".xif"=>"image/vnd.xiff",
    ".pcl"=>"application/x-pcl",
    ".log"=>"text/plain",
    ".jpg"=>"image/jpeg",
    ".ustar"=>"multipart/x-ustar",
    ".cmx"=>"image/x-cmx",
    ".pre"=>"application/x-freelance",
    ".axs"=>"application/olescript",
    ".bz2"=>"application/x-bzip2",
    ".mpv2"=>"video/mpeg",
    ".moov"=>"video/quicktime",
    ".prf"=>"application/pics-rules",
    ".dxf"=>"image/x-dwg",
    ".stp"=>"application/step",
    ".conf"=>"text/plain",
    ".asx"=>"video/x-ms-asf",
    ".la"=>"audio/x-nspaudio",
    ".jar"=>"application/java-archive",
    ".wmv"=>"video/x-ms-wmv",
    ".unv"=>"application/i-deas",
    ".boo"=>"application/book",
    ".ima"=>"application/x-ima",
    ".dir"=>"application/x-director",
    ".frl"=>"application/freeloader",
    ".wb1"=>"application/x-qpro",
    ".hlp"=>"application/hlp",
    ".tar"=>"application/x-tar",
    ".scd"=>"application/x-msschedule",
    ".pml"=>"application/x-perfmon",
    ".evy"=>"application/x-envoy",
    ".gif"=>"image/gif",
    ".jav"=>"text/x-java-source",
    ".pct"=>"image/x-pict",
    ".mpa"=>"audio/mpeg",
    ".xdr"=>"video/x-amt-demorun",
    ".bm"=>"image/bmp",
    ".mpc"=>"application/x-project",
    ".qif"=>"image/x-quicktime",
    ".gl"=>"video/x-gl",
    ".img"=>"application/octet-stream",
    ".gsd"=>"audio/x-gsm",
    ".xsl"=>"application/xslt+xml",
    ".pcx"=>"image/x-pcx",
    ".pmr"=>"application/x-perfmon",
    ".jps"=>"image/x-jps",
    ".mpe"=>"video/mpeg",
    ".src"=>"application/x-wais-source",
    ".man"=>"application/x-troff-man",
    ".wpd"=>"application/wordperfect",
    ".vew"=>"application/groupwise",
    ".dxr"=>"application/x-director",
    ".mpg"=>"video/mpeg",
    ".ico"=>"image/x-icon",
    ".wq1"=>"application/x-lotus",
    ".scm"=>"video/x-scm",
    ".map"=>"application/x-navimap",
    ".nix"=>"application/x-mix-transfer",
    ".vos"=>"video/vosaic",
    ".boz"=>"application/x-bzip2",
    ".jut"=>"image/jutvision",
    ".cat"=>"application/octet-stream",
    ".lha"=>"application/x-lha",
    ".p7a"=>"application/x-pkcs7-signature",
    ".avi"=>"video/avi",
    ".prt"=>"application/pro_eng",
    ".pmw"=>"application/x-perfmon",
    ".smi"=>"application/smil",
    ".p7b"=>"application/x-pkcs7-certificates",
    ".mar"=>"text/plain",
    ".xsr"=>"video/x-amt-showrun",
    ".tiff"=>"image/tiff",
    ".hqx"=>"application/binhex",
    ".p7c"=>"application/x-pkcs7-mime",
    ".lma"=>"audio/x-nspaudio",
    ".swf"=>"application/x-shockwave-flash",
    ".war"=>"application/java-archive",
    ".vcd"=>"application/x-cdlink",
    ".cpp"=>"text/x-c",
    ".gsm"=>"audio/x-gsm",
    ".vox"=>"audio/voxware",
    ".m2v"=>"video/mpeg",
    ".ltx"=>"application/x-latex",
    ".xla"=>"application/excel",
    ".vcf"=>"text/x-vcard",
    ".sct"=>"text/scriptlet",
    ".ppa"=>"application/vnd.ms-powerpoint",
    ".aifc"=>"audio/aiff",
    ".hta"=>"application/hta",
    ".bz"=>"application/x-bzip",
    ".omcd"=>"application/x-omcdatamaker",
    ".mpp"=>"application/vnd.ms-project",
    ".pict"=>"image/pict",
    ".gsp"=>"application/x-gsp",
    ".xlb"=>"application/excel",
    ".wav"=>"audio/x-wav",
    ".eot"=>"application/octet-stream",
    ".cpt"=>"application/x-cpt",
    ".naplps"=>"image/naplps",
    ".htc"=>"text/x-component",
    ".xlc"=>"application/excel",
    ".vmd"=>"application/vocaltec-media-desc",
    ".tif"=>"image/tiff",
    ".pkg"=>"application/x-newton-compatible-pkg",
    ".jng"=>"image/x-jng",
    ".qt"=>"video/quicktime",
    ".tcsh"=>"text/x-script.tcsh",
    ".aiff"=>"audio/aiff",
    ".xld"=>"application/excel",
    ".pub"=>"application/x-mspublisher",
    ".pwz"=>"application/vnd.ms-powerpoint",
    ".gss"=>"application/x-gss",
    ".avs"=>"video/avs-video",
    ".gz"=>"application/x-compressed",
    ".wks"=>"application/vnd.ms-works",
    ".uls"=>"text/iuls",
    ".dll"=>"application/octet-stream",
    ".vmf"=>"application/vocaltec-media-file",
    ".mdb"=>"application/x-msaccess",
    ".nvd"=>"application/x-navidoc",
    ".mpt"=>"application/x-project",
    ".p7m"=>"application/x-pkcs7-mime",
    ".xbm"=>"image/xbm",
    ".cdf"=>"application/cdf",
    ".wps"=>"application/vnd.ms-works",
    ".rtf"=>"text/richtext",
    ".mpv"=>"application/x-project",
    ".m13"=>"application/x-msmediaview",
    ".dvi"=>"application/x-dvi",
    ".shtml"=>"text/x-server-parsed-html",
    ".vivo"=>"video/vnd.vivo",
    ".setreg"=>"application/set-registration-initiation",
    ".etx"=>"text/x-setext",
    ".bmp"=>"image/bmp",
    ".m14"=>"application/x-msmediaview",
    ".wdb"=>"application/vnd.ms-works",
    ".mpx"=>"application/x-project",
    ".midi"=>"audio/x-midi",
    ".pas"=>"text/pascal",
    ".xlk"=>"application/excel",
    ".w60"=>"application/wordperfect6.0",
    ".tsi"=>"audio/tsp-audio",
    ".mid"=>"audio/x-midi",
    ".p7r"=>"application/x-pkcs7-certreqresp",
    ".xll"=>"application/excel",
    ".w61"=>"application/wordperfect6.1",
    ".ppm"=>"image/x-portable-pixmap",
    ".p7s"=>"application/x-pkcs7-signature",
    ".htm"=>"text/html",
    ".pko"=>"application/ynd.ms-pkipko",
    ".xlm"=>"application/excel",
    ".vcs"=>"text/x-vcalendar",
    ".omc"=>"application/x-omc",
    ".mif"=>"application/x-mif"
  }

  # Unspecified MIME type
  #
  # Generally used 

end

