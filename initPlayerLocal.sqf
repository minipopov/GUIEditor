//call compile preprocessFileLineNumbers "oo_Player.sqf";
call compile preprocessFileLineNumbers "Editor\oo_GuiEditor.sqf";
call compile preprocessFileLineNumbers "Editor\oo_GRIDLayer.sqf";
call compile preprocessFileLineNumbers "Editor\oo_Layer.sqf";
call compile preprocessFileLineNumbers "Editor\oo_Control.sqf";
call compile preprocessFileLineNumbers "Editor\oo_makeFile.sqf";

call compile preprocessFileLineNumbers "Editor\oo_HelperGui.sqf";
call compile preprocessFileLineNumbers "Editor\oo_HelperControl.sqf";
call compile preprocessFileLineNumbers "Editor\oo_HelperGuiEditorDialog.sqf";
call compile preprocessFileLineNumbers "Editor\oo_HelperGuiEditorEvent.sqf";

waitUntil {!(isNull (findDisplay 46))};

OOP_GuiEditor_ListControl = [
	"OOP_SubLayer",
	"OOP_Button",
	"OOP_Listbox",
	"OOP_Text",
	"OOP_TextRight"
];

"new" call oo_GuiEditor;