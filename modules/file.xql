xquery version "3.0";

declare option exist:serialize "media-type=application/ptm";
import module namespace config = "http://papyri.uni-koeln.de:8080/exist/apps/magica-levantina/config" at "xmldb:exist:///db/apps/magica-levantina/modules/config.xqm";

let $url := request:get-parameter("url" ,())
return response:stream-binary(system:as-user($config:admin-id, $config:admin-pass, file:read-binary(xs:anyURI($url))), "applicatoin/ptm", ())
