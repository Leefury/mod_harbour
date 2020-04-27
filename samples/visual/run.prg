// Used from samples/sandbox.prg

function Main()

   local hPostPairs := AP_PostPairs()
   local cCode
   
   if hb_HHasKey( hPostPairs, "source" )
      cCode = hb_UrlDecode( hPostPairs[ "source" ] )
   else
      ? "This example is used from samples/sandbox.prg"
   endif   
   
   AP_HeadersOutSet( "Access-Control-Allow-Origin", "*" )
   
   if ! Empty( cCode )
      Execute( cCode, .T. )  // Always update cache
   endif
   
return nil
