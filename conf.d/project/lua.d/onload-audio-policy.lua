--[[
  Copyright (C) 2016 "IoT.bzh"
  Author Fulup Ar Foll <fulup@iot.bzh>
 
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
 
    http://www.apache.org/licenses/LICENSE-2.0
 
  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
  
 
  Provide sample policy function for AGL Advance Audio Agent
--]]

function Audio_Init_CB (status, result, context)
    print ("***** result=", Dump_Table(result))
    print ("***** context=", Dump_Table(context))

    -- AFB:notice ("--LUA:Audio_Init_Hal result=%s context=%s", result, context)
   
end

-- Function call at binding load time
function Audio_Init_Hal(args, query)
    AFB:notice ("--LUA:Audio_Init_Hal args=%s query=%s", args, query);
    
    -- query asynchronously loaded HAL
    AFB:service ('alsacore', 'hallist', {}, "Audio_Init_CB", {arg1=1234, arg2="toto"})
 
end

function Audio_Set_Navigation(args, query)

    AFB:notice ("--LUA:Audio_Set_Use_Case args=%s query=%s", args, query, {myint=1234, mystring="abcd"});
    -- Print_Table("args", args)

    

    -- return OK
    return 0
end


