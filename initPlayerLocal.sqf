#include "oop.h";

call compile preprocessFileLineNumbers "Editor\oo_GuiEditor.sqf";
call compile preprocessFileLineNumbers "Editor\oo_GRIDLayer.sqf";
call compile preprocessFileLineNumbers "Editor\oo_Layer.sqf";
call compile preprocessFileLineNumbers "Editor\oo_Control.sqf";
call compile preprocessFileLineNumbers "Editor\oo_makeFile.sqf";
call compile preprocessFileLineNumbers "Editor\oo_makeOOPFile.sqf";
call compile preprocessFileLineNumbers "Editor\oo_HelperGui.sqf";
call compile preprocessFileLineNumbers "Editor\oo_HelperStyle.sqf";
call compile preprocessFileLineNumbers "Editor\oo_HelperControl.sqf";
call compile preprocessFileLineNumbers "Editor\oo_GuiEditorDialog.sqf";
call compile preprocessFileLineNumbers "Editor\oo_GuiEditorEvent.sqf";

waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

OOP_GuiEditor_ListControl = [
	"OOP_SubLayer",
	"OOP_Button",
	"OOP_Listbox",
	"OOP_Text",
	"OOP_TextRight",
	"life_RscPicture"
];
"new" call oo_GuiEditor;