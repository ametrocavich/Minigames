local CurTime = CurTime;
local pairs = pairs;
local RunConsoleCommand = RunConsoleCommand;
local tostring = tostring;
local IsValid = IsValid;
local hook = hook;
local math = math;
local table = table;
local string = string;

-- Lets make it easier to include files, yes?
function IncludeDirectory(directory, bFromBase)
	if (bFromBase) then
		directory = "Minigames/gamemode"..directory;
	end;
	
	if (string.sub(directory, -1) != "/") then
		directory = directory.."/";
	end;
	
	for k, v in pairs(_file.Find(directory.."*.lua", "LUA", "namedesc")) do
		IncludePrefixed(directory..v);
	end;
end;

-- A function to include a prefixed _file.
function IncludePrefixed(fileName)
	local isShared = (string.find(fileName, "sh_") or string.find(fileName, "shared.lua"));
	local isClient = (string.find(fileName, "cl_") or string.find(fileName, "cl_init.lua"));
	local isServer = (string.find(fileName, "sv_"));
	
	if (isServer and !SERVER) then
		return;
	end;
	
	if (isShared and SERVER) then
		AddCSLuaFile(fileName);
	elseif (isClient and SERVER) then
		AddCSLuaFile(fileName);
		return;
	end;
	
	include(fileName);
end;


--Downloads

-- A function to add files to the content download.
function AddDirectory(directory, bRecursive)
	if (string.sub(directory, -1) == "/") then
		directory = directory.."*.*";
	end;
	
	local files, folders = _file.Find(directory, "GAME", "namedesc");
	local rawDirectory = string.match(directory, "(.*)/").."/";
	
	for k, v in pairs(files) do
		AddFile(rawDirectory..v);
	end;
	
	if (bRecursive) then
		for k, v in pairs(folders) do
			if (v != ".." and v != ".") then
				AddDirectory(rawDirectory..v, true);
			end;
		end;
	end;
end;

-- A function to add a file to the content download.
function AddFile(fileName)
	if (_file.Exists(fileName, "GAME")) then
		resource.AddFile(fileName);
	else
		print(Format("File does not exist: %s.", fileName));
	end;
end;

