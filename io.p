[ "v-"  `2000 ] 'print' define
[ "-"   #10 :c print ] 'cr' define
[ "v-"  print cr ] 'println' define

"File Operations"
[ "string:name string:mode - number:file-id"  `3000 ] 'open-file' define
[ "number:file-id -"  `3001 ] 'close-file' define
[ "number:file-id - character"  `3002 :c ] 'read-file' define
[ "character number:file-id -"  `3003 ] 'write-file' define
[ "number:file-id - number:position"  `3004 ] 'file-position' define
[ "number:offset number:file-id -"  `3005 ] 'file-seek' define
[ "number:file-id - number:length"  `3006 ] 'file-size' define
[ "string:name -"  `3007 ] 'delete-file' define

[ '*FID'  '*S' ] {
  [ "string:name - string:contents" \
    'r' open-file to *FID \
    request to *S *S pop drop \
    *FID file-size [ *FID read-file *S push ] times \
    *FID close-file \
    *S :s \
  ] 'slurp-file' define
}

[ "string:name - flag"  `3008 ] 'file-exists?' define

"Command Line Arguments"
[ "- number"  `4000 ] 'arg-count' define
[ "number - string"  `4001 ] 'get-arg' define

"Form Processing"
[ "s-s"  `5000 ] 'value-for-key' define

"Environment Variables"
[ "s-s"  `5001 ] 'get-environment-value' define


"CGI"
[ "s-"  'Content-type: ' print println cr ] 'content-type' define
[ "-s"  'PATH_INFO' get-environment-value ] 'PATH_INFO' define
[ "-f"  PATH_INFO '(no)' eq? ] '-path?' define
[ "s-f" PATH_INFO eq? ] 'path?' define


"General Structure"
[ [ '<html>' ] dip invoke '</html>' ] 'html' define
[ [ '<head>' ] dip invoke '</head>' ] 'head' define
[ [ '<body>' ] dip invoke '</body>' ] 'body' define
[ [ '<html>' ] dip invoke '</html>' ] 'html' define
[ [ '<head>' ] dip invoke '</head>' ] 'head' define
[ [ '<body>' ] dip invoke '</body>' ] 'body' define
[ [ '<span>' ] dip invoke '</span>' ] 'span' define
[ [ '<span class="{v}">' interpolate ] dip invoke '</span>' ] 'span:class' define
[ [ '<span id="{v}">' interpolate ] dip invoke '</span>' ] 'span:id' define
[ [ '<div>' ] dip invoke '</div>' ] 'div' define
[ [ '<div class="{v}">' interpolate ] dip invoke '</div>' ] 'div:class' define
[ [ '<div id="{v}">' interpolate ] dip invoke '</div>' ] 'div:id' define

"CSS"
[ [ '<style>' ] dip invoke '</style>' ] 'css' define
[ [ '<link rel="stylesheet" href="' ] dip invoke '"/>' ] 'stylesheet' define

"Metadata"
[ [ '<title>' ] dip invoke '</title>' ] 'title' define

"JavaScript"
[ [ '<script>' ] dip invoke '</script>' ] 'script' define

"Links"
[ '<a href="{v}">{v}</a>' ] 'link' define

"Content Formatting"
[ [ '<h1>' ] dip invoke '</h1>' ] 'h1' define
[ [ '<h2>' ] dip invoke '</h2>' ] 'h2' define
[ [ '<h3>' ] dip invoke '</h3>' ] 'h3' define
[ [ '<h4>' ] dip invoke '</h4>' ] 'h4' define
[ [ '<em>' ] dip invoke '</em>' ] 'em' define
[ [ '<strong>' ] dip invoke '</strong>' ] 'strong' define
[ [ '<p>' ] dip invoke '</p>' ] 'p' define
[ [ '<p class="{v}">' interpolate ] dip invoke '</p>' ] 'p:class' define
[ [ '<p id="{v}">' interpolate ] dip invoke '</p>' ] 'p:id' define
[ [ '<pre>' ] dip invoke '</pre>' ] 'pre' define
[ [ '<pre class="{v}">' interpolate ] dip invoke '</pre>' ] 'pre:class' define
[ [ '<pre id="{v}">' interpolate ] dip invoke '</pre>' ] 'pre:id' define
[ [ '<code>' ] dip invoke '</code>' ] 'code' define
[ [ '<code class="{v}">' interpolate ] dip invoke '</code>' ] 'code:class' define
[ [ '<code id="{v}">' interpolate ] dip invoke '</code>' ] 'code:id' define
[ '<hr>' ] 'hr' define
