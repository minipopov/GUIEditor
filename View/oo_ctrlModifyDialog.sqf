#include "..\oop.h"

#define INDEX_POSITION 0
#define INDEX_TEXT 1
#define INDEX_NAME 2
#define INDEX_TP 3
#define INDEX_CONTROL_CLASS 4
#define INDEX_VISIBLE 5
#define INDEX_EVH 6

#define INDEX_TEXT_COLOR 7
#define INDEX_BGCOLOR 8
#define INDEX_FGCOLOR 9
#define INDEX_TP_COLOR_BOX 10
#define INDEX_TP_COLOR_SHADE 11
#define INDEX_TP_COLOR_TEXT 12

CLASS("oo_ctrlModifyDialog")

	PUBLIC STATIC_UI_VARIABLE("control", "btnClose");
	PUBLIC STATIC_UI_VARIABLE("control", "btnGen");
	PUBLIC STATIC_UI_VARIABLE("control", "btnKB");
	PUBLIC STATIC_UI_VARIABLE("control", "btnLB");
	PUBLIC STATIC_UI_VARIABLE("control", "btnMouse");
	PUBLIC STATIC_UI_VARIABLE("control", "btnOther");
	PUBLIC STATIC_UI_VARIABLE("control", "btnStyle");
	PUBLIC STATIC_UI_VARIABLE("control", "btnTool");
	PUBLIC STATIC_UI_VARIABLE("control", "btnTree");
	PUBLIC STATIC_UI_VARIABLE("control", "btnValider");
	PUBLIC STATIC_UI_VARIABLE("control", "cbInit");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnButtonClick");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnButtonDblClick");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnButtonDown");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnButtonUp");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnCanDestroy");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnChar");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnCheckBoxesSelChanged");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnChecked");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnCheckedChanged");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnDestroy");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnDraw");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnHTMLLink");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnIMEChar");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnIMEComposition");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnJoystickButton");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnKeyDown");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnKeyUp");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnKillFocus");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnLBDblClick");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnLBDrag");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnLBDragging");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnLBDrop");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnLBListSelChanged");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnLBSelChanged");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnLoad");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnMenuSelected");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnMouseButtonClick");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnMouseButtonDblClick");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnMouseButtonDown");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnMouseButtonUp");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnMouseEnter");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnMouseExit");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnMouseHolding");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnMouseMoving");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnMouseZChanged");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnObjectMoved");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnSetFocus");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnSliderPosChanged");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnTimer");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnToolBoxSelChanged");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnTreeCollapsed");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnTreeDblClick");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnTreeExpanded");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnTreeLButtonDown");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnTreeMouseExit");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnTreeMouseHold");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnTreeMouseMove");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnTreeSelChanged");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnUnload");
	PUBLIC STATIC_UI_VARIABLE("control", "cbOnVideoStopped");
	PUBLIC STATIC_UI_VARIABLE("control", "editBGColor");
	PUBLIC STATIC_UI_VARIABLE("control", "editFGColor");
	PUBLIC STATIC_UI_VARIABLE("control", "editID");
	PUBLIC STATIC_UI_VARIABLE("control", "editName");
	PUBLIC STATIC_UI_VARIABLE("control", "editText");
	PUBLIC STATIC_UI_VARIABLE("control", "editTextColor");
	PUBLIC STATIC_UI_VARIABLE("control", "editTooltip");
	PUBLIC STATIC_UI_VARIABLE("control", "editTooltipColorBoX");
	PUBLIC STATIC_UI_VARIABLE("control", "editTooltipColorShade");
	PUBLIC STATIC_UI_VARIABLE("control", "editTooltipColorText");
	PUBLIC STATIC_UI_VARIABLE("control", "layerGen");
	PUBLIC STATIC_UI_VARIABLE("control", "layerKB");
	PUBLIC STATIC_UI_VARIABLE("control", "layerLB");
	PUBLIC STATIC_UI_VARIABLE("control", "layerMouse");
	PUBLIC STATIC_UI_VARIABLE("control", "layerOther");
	PUBLIC STATIC_UI_VARIABLE("control", "layerStyle");
	PUBLIC STATIC_UI_VARIABLE("control", "layerToolCB");
	PUBLIC STATIC_UI_VARIABLE("control", "layerTree");
	PUBLIC STATIC_UI_VARIABLE("control", "MainLayer");
	PUBLIC STATIC_UI_VARIABLE("control", "title");
	PUBLIC STATIC_UI_VARIABLE("display", "Display");

	/*
	* MyAdd
	*/
	PUBLIC STATIC_UI_VARIABLE("code", "MySlider");

	PUBLIC FUNCTION("", "constructor"){
		disableSerialization;
		if!(createDialog "ctrlModifyDialog") exitWith { hint "Failed to open ctrlModifyDialog"; };
		private _display = findDisplay 9001;
		MEMBER("Display", _display);
		MEMBER("MainLayer", _display displayCtrl 0);

		MEMBER("btnClose", _display displayCtrl 13);
		MEMBER("btnGen", _display displayCtrl 5);
		MEMBER("btnKB", _display displayCtrl 7);
		MEMBER("btnLB", _display displayCtrl 8);
		MEMBER("btnMouse", _display displayCtrl 6);
		MEMBER("btnOther", _display displayCtrl 11);
		MEMBER("btnStyle", _display displayCtrl 4);
		MEMBER("btnTool", _display displayCtrl 10);
		MEMBER("btnTree", _display displayCtrl 9);
		MEMBER("btnValider", _display displayCtrl 12);
		MEMBER("cbInit", _display displayCtrl 23);
		MEMBER("cbOnButtonClick", _display displayCtrl 55);
		MEMBER("cbOnButtonDblClick", _display displayCtrl 47);
		MEMBER("cbOnButtonDown", _display displayCtrl 53);
		MEMBER("cbOnButtonUp", _display displayCtrl 54);
		MEMBER("cbOnCanDestroy", _display displayCtrl 30);
		MEMBER("cbOnChar", _display displayCtrl 66);
		MEMBER("cbOnCheckBoxesSelChanged", _display displayCtrl 109);
		MEMBER("cbOnChecked", _display displayCtrl 107);
		MEMBER("cbOnCheckedChanged", _display displayCtrl 108);
		MEMBER("cbOnDestroy", _display displayCtrl 24);
		MEMBER("cbOnDraw", _display displayCtrl 122);
		MEMBER("cbOnHTMLLink", _display displayCtrl 115);
		MEMBER("cbOnIMEChar", _display displayCtrl 67);
		MEMBER("cbOnIMEComposition", _display displayCtrl 68);
		MEMBER("cbOnJoystickButton", _display displayCtrl 70);
		MEMBER("cbOnKeyDown", _display displayCtrl 64);
		MEMBER("cbOnKeyUp", _display displayCtrl 65);
		MEMBER("cbOnKillFocus", _display displayCtrl 28);
		MEMBER("cbOnLBDblClick", _display displayCtrl 79);
		MEMBER("cbOnLBDrag", _display displayCtrl 80);
		MEMBER("cbOnLBDragging", _display displayCtrl 81);
		MEMBER("cbOnLBDrop", _display displayCtrl 83);
		MEMBER("cbOnLBListSelChanged", _display displayCtrl 78);
		MEMBER("cbOnLBSelChanged", _display displayCtrl 77);
		MEMBER("cbOnLoad", _display displayCtrl 25);
		MEMBER("cbOnMenuSelected", _display displayCtrl 118);
		MEMBER("cbOnMouseButtonClick", _display displayCtrl 42);
		MEMBER("cbOnMouseButtonDblClick", _display displayCtrl 43);
		MEMBER("cbOnMouseButtonDown", _display displayCtrl 40);
		MEMBER("cbOnMouseButtonUp", _display displayCtrl 41);
		MEMBER("cbOnMouseEnter", _display displayCtrl 56);
		MEMBER("cbOnMouseExit", _display displayCtrl 57);
		MEMBER("cbOnMouseHolding", _display displayCtrl 45);
		MEMBER("cbOnMouseMoving", _display displayCtrl 44);
		MEMBER("cbOnMouseZChanged", _display displayCtrl 46);
		MEMBER("cbOnObjectMoved", _display displayCtrl 117);
		MEMBER("cbOnSetFocus", _display displayCtrl 27);
		MEMBER("cbOnSliderPosChanged", _display displayCtrl 116);
		MEMBER("cbOnTimer", _display displayCtrl 29);
		MEMBER("cbOnToolBoxSelChanged", _display displayCtrl 106);
		MEMBER("cbOnTreeCollapsed", _display displayCtrl 94);
		MEMBER("cbOnTreeDblClick", _display displayCtrl 92);
		MEMBER("cbOnTreeExpanded", _display displayCtrl 93);
		MEMBER("cbOnTreeLButtonDown", _display displayCtrl 91);
		MEMBER("cbOnTreeMouseExit", _display displayCtrl 99);
		MEMBER("cbOnTreeMouseHold", _display displayCtrl 98);
		MEMBER("cbOnTreeMouseMove", _display displayCtrl 96);
		MEMBER("cbOnTreeSelChanged", _display displayCtrl 90);
		MEMBER("cbOnUnload", _display displayCtrl 26);
		MEMBER("cbOnVideoStopped", _display displayCtrl 121);
		MEMBER("editBGColor", _display displayCtrl 131);
		MEMBER("editFGColor", _display displayCtrl 135);
		MEMBER("editID", _display displayCtrl 125);
		MEMBER("editName", _display displayCtrl 127);
		MEMBER("editText", _display displayCtrl 129);
		MEMBER("editTextColor", _display displayCtrl 133);
		MEMBER("editTooltip", _display displayCtrl 137);
		MEMBER("editTooltipColorBoX", _display displayCtrl 138);
		MEMBER("editTooltipColorShade", _display displayCtrl 139);
		MEMBER("editTooltipColorText", _display displayCtrl 140);
		MEMBER("layerGen", _display displayCtrl 14);
		MEMBER("layerKB", _display displayCtrl 58);
		MEMBER("layerLB", _display displayCtrl 71);
		MEMBER("layerMouse", _display displayCtrl 31);
		MEMBER("layerOther", _display displayCtrl 110);
		MEMBER("layerStyle", _display displayCtrl 123);
		MEMBER("layerToolCB", _display displayCtrl 101);
		MEMBER("layerTree", _display displayCtrl 84);
		MEMBER("title", _display displayCtrl 3);
		MEMBER("layerGen", nil) ctrlShow false;
		MEMBER("layerKB", nil) ctrlShow false;
		MEMBER("layerLB", nil) ctrlShow false;
		MEMBER("layerMouse", nil) ctrlShow false;
		MEMBER("layerOther", nil) ctrlShow false;
		MEMBER("layerToolCB", nil) ctrlShow false;
		MEMBER("layerTree", nil) ctrlShow false;
		MEMBER("Init", nil);
	};

	PUBLIC FUNCTION("","Init") {
		private _selCtrl = "getSelCtrl" call GuiObject;
		private _data = "getData" call _selCtrl;
		MEMBER("editID", nil) ctrlSetText format["%1", ("getID" call _selCtrl)];
		MEMBER("editID", nil) ctrlEnable false;
		MEMBER("editName", nil) ctrlSetText (_data select INDEX_NAME);
		MEMBER("editText", nil) ctrlSetText (_data select INDEX_TEXT);
		MEMBER("editBGColor", nil) ctrlSetText format["%1", (_data select INDEX_BGCOLOR)];
		MEMBER("editTextColor", nil) ctrlSetText format["%1", (_data select INDEX_TEXT_COLOR)];
		MEMBER("editFGColor", nil) ctrlSetText format["%1", (_data select INDEX_FGCOLOR)];
		MEMBER("editTooltip", nil) ctrlSetText (_data select INDEX_TP);
		MEMBER("editTooltipColorBoX", nil) ctrlSetText format["%1", (_data select INDEX_TP_COLOR_BOX)];
		MEMBER("editTooltipColorShade", nil) ctrlSetText format["%1", (_data select INDEX_TP_COLOR_SHADE)];
		MEMBER("editTooltipColorText", nil) ctrlSetText format["%1", (_data select INDEX_TP_COLOR_TEXT)];

		MEMBER("cbInit", nil) cbSetChecked ("Init" in (_data select INDEX_EVH));
		MEMBER("cbOnDestroy", nil) cbSetChecked ("onDestroy" in (_data select INDEX_EVH));
		MEMBER("cbOnLoad", nil) cbSetChecked ("onLoad" in (_data select INDEX_EVH));
		MEMBER("cbOnUnload", nil) cbSetChecked ("onUnload" in (_data select INDEX_EVH));
		MEMBER("cbOnSetFocus", nil) cbSetChecked ("onSetFocus" in (_data select INDEX_EVH));
		MEMBER("cbOnKillFocus", nil) cbSetChecked ("onKillFocus" in (_data select INDEX_EVH));
		MEMBER("cbOnTimer", nil) cbSetChecked ("onTimer" in (_data select INDEX_EVH));
		MEMBER("cbOnCanDestroy", nil) cbSetChecked ("onCanDestroy" in (_data select INDEX_EVH));
		MEMBER("cbOnMouseButtonDown", nil) cbSetChecked ("onMouseButtonDown" in (_data select INDEX_EVH));
		MEMBER("cbOnMouseButtonUp", nil) cbSetChecked ("onMouseButtonUp" in (_data select INDEX_EVH));
		MEMBER("cbOnMouseButtonClick", nil) cbSetChecked ("onMouseButtonClick" in (_data select INDEX_EVH));
		MEMBER("cbOnMouseButtonDblClick", nil) cbSetChecked ("onMouseButtonDblClick" in (_data select INDEX_EVH));
		MEMBER("cbOnMouseMoving", nil) cbSetChecked ("onMouseMoving" in (_data select INDEX_EVH));
		MEMBER("cbOnMouseHolding", nil) cbSetChecked ("onMouseHolding" in (_data select INDEX_EVH));
		MEMBER("cbOnMouseZChanged", nil) cbSetChecked ("onMouseZChanged" in (_data select INDEX_EVH));
		MEMBER("cbOnButtonDblClick", nil) cbSetChecked ("onButtonDblClick" in (_data select INDEX_EVH));
		MEMBER("cbOnButtonDown", nil) cbSetChecked ("onButtonDown" in (_data select INDEX_EVH));
		MEMBER("cbOnButtonUp", nil) cbSetChecked ("onButtonUp" in (_data select INDEX_EVH));
		MEMBER("cbOnButtonClick", nil) cbSetChecked ("onButtonClick" in (_data select INDEX_EVH));
		MEMBER("cbOnMouseEnter", nil) cbSetChecked ("onMouseEnter" in (_data select INDEX_EVH));
		MEMBER("cbOnMouseExit", nil) cbSetChecked ("onMouseExit" in (_data select INDEX_EVH));
		MEMBER("cbOnKeyDown", nil) cbSetChecked ("onKeyDown" in (_data select INDEX_EVH));
		MEMBER("cbOnKeyUp", nil) cbSetChecked ("onKeyUp" in (_data select INDEX_EVH));
		MEMBER("cbOnChar", nil) cbSetChecked ("onChar" in (_data select INDEX_EVH));
		MEMBER("cbOnIMEChar", nil) cbSetChecked ("onIMEChar" in (_data select INDEX_EVH));
		MEMBER("cbOnIMEComposition", nil) cbSetChecked ("onIMEComposition" in (_data select INDEX_EVH));
		MEMBER("cbOnJoystickButton", nil) cbSetChecked ("onJoystickButton" in (_data select INDEX_EVH));
		MEMBER("cbOnLBSelChanged", nil) cbSetChecked ("onLBSelChanged" in (_data select INDEX_EVH));
		MEMBER("cbOnLBListSelChanged", nil) cbSetChecked ("onLBListSelChanged" in (_data select INDEX_EVH));
		MEMBER("cbOnLBDblClick", nil) cbSetChecked ("onLBDblClick" in (_data select INDEX_EVH));
		MEMBER("cbOnLBDrag", nil) cbSetChecked ("onLBDrag" in (_data select INDEX_EVH));
		MEMBER("cbOnLBDragging", nil) cbSetChecked ("onLBDragging" in (_data select INDEX_EVH));
		MEMBER("cbOnLBDrop", nil) cbSetChecked ("onLBDrop" in (_data select INDEX_EVH));
		MEMBER("cbOnTreeSelChanged", nil) cbSetChecked ("onTreeSelChanged" in (_data select INDEX_EVH));
		MEMBER("cbOnTreeLButtonDown", nil) cbSetChecked ("onTreeLButtonDown" in (_data select INDEX_EVH));
		MEMBER("cbOnTreeDblClick", nil) cbSetChecked ("onTreeDblClick" in (_data select INDEX_EVH));
		MEMBER("cbOnTreeExpanded", nil) cbSetChecked ("onTreeExpanded" in (_data select INDEX_EVH));
		MEMBER("cbOnTreeCollapsed", nil) cbSetChecked ("onTreeCollapsed" in (_data select INDEX_EVH));
		MEMBER("cbOnTreeMouseMove", nil) cbSetChecked ("onTreeMouseMove" in (_data select INDEX_EVH));
		MEMBER("cbOnTreeMouseHold", nil) cbSetChecked ("onTreeMouseHold" in (_data select INDEX_EVH));
		MEMBER("cbOnTreeMouseExit", nil) cbSetChecked ("onTreeMouseExit" in (_data select INDEX_EVH));

		MEMBER("MySlider", {});
	};

	PUBLIC FUNCTION("", "btnAction_btnClose") {
		closeDialog 0;
	};

	PUBLIC FUNCTION("", "btnAction_btnGen") {
		MEMBER("layerStyle", nil) ctrlShow false;
		MEMBER("layerGen", nil) ctrlShow true;
		MEMBER("layerMouse", nil) ctrlShow false;
		MEMBER("layerKB", nil) ctrlShow false;
		MEMBER("layerLB", nil) ctrlShow false;
		MEMBER("layerTree", nil) ctrlShow false;
		MEMBER("layerToolCB", nil) ctrlShow false;
		MEMBER("layerOther", nil) ctrlShow false;
		if!(MEMBER("MySlider", nil) isEqualTo {}) then {
			["ctrlShow", false] call MEMBER("MySlider", nil);
		};
	};

	PUBLIC FUNCTION("", "btnAction_btnKB") {
		MEMBER("layerStyle", nil) ctrlShow false;
		MEMBER("layerGen", nil) ctrlShow false;
		MEMBER("layerMouse", nil) ctrlShow false;
		MEMBER("layerKB", nil) ctrlShow true;
		MEMBER("layerLB", nil) ctrlShow false;
		MEMBER("layerTree", nil) ctrlShow false;
		MEMBER("layerToolCB", nil) ctrlShow false;
		MEMBER("layerOther", nil) ctrlShow false;
		if!(MEMBER("MySlider", nil) isEqualTo {}) then {
			["ctrlShow", false] call MEMBER("MySlider", nil);
		};
	};

	PUBLIC FUNCTION("", "btnAction_btnLB") {
		MEMBER("layerStyle", nil) ctrlShow false;
		MEMBER("layerGen", nil) ctrlShow false;
		MEMBER("layerMouse", nil) ctrlShow false;
		MEMBER("layerKB", nil) ctrlShow false;
		MEMBER("layerLB", nil) ctrlShow true;
		MEMBER("layerTree", nil) ctrlShow false;
		MEMBER("layerToolCB", nil) ctrlShow false;
		MEMBER("layerOther", nil) ctrlShow false;
		if!(MEMBER("MySlider", nil) isEqualTo {}) then {
			["ctrlShow", false] call MEMBER("MySlider", nil);
		};
	};

	PUBLIC FUNCTION("", "btnAction_btnMouse") {
		MEMBER("layerStyle", nil) ctrlShow false;
		MEMBER("layerGen", nil) ctrlShow false;
		MEMBER("layerMouse", nil) ctrlShow true;
		MEMBER("layerKB", nil) ctrlShow false;
		MEMBER("layerLB", nil) ctrlShow false;
		MEMBER("layerTree", nil) ctrlShow false;
		MEMBER("layerToolCB", nil) ctrlShow false;
		MEMBER("layerOther", nil) ctrlShow false;
		if!(MEMBER("MySlider", nil) isEqualTo {}) then {
			["ctrlShow", false] call MEMBER("MySlider", nil);
		};
	};

	PUBLIC FUNCTION("", "btnAction_btnOther") {
		MEMBER("layerStyle", nil) ctrlShow false;
		MEMBER("layerGen", nil) ctrlShow false;
		MEMBER("layerMouse", nil) ctrlShow false;
		MEMBER("layerKB", nil) ctrlShow false;
		MEMBER("layerLB", nil) ctrlShow false;
		MEMBER("layerTree", nil) ctrlShow false;
		MEMBER("layerToolCB", nil) ctrlShow false;
		MEMBER("layerOther", nil) ctrlShow true;
		if!(MEMBER("MySlider", nil) isEqualTo {}) then {
			["ctrlShow", false] call MEMBER("MySlider", nil);
		};
	};

	PUBLIC FUNCTION("", "btnAction_btnStyle") {
		MEMBER("layerStyle", nil) ctrlShow true;
		MEMBER("layerGen", nil) ctrlShow false;
		MEMBER("layerMouse", nil) ctrlShow false;
		MEMBER("layerKB", nil) ctrlShow false;
		MEMBER("layerLB", nil) ctrlShow false;
		MEMBER("layerTree", nil) ctrlShow false;
		MEMBER("layerToolCB", nil) ctrlShow false;
		MEMBER("layerOther", nil) ctrlShow false;
		if!(MEMBER("MySlider", nil) isEqualTo {}) then {
			["ctrlShow", false] call MEMBER("MySlider", nil);
		};
	};

	PUBLIC FUNCTION("", "btnAction_btnTool") {
		MEMBER("layerStyle", nil) ctrlShow false;
		MEMBER("layerGen", nil) ctrlShow false;
		MEMBER("layerMouse", nil) ctrlShow false;
		MEMBER("layerKB", nil) ctrlShow false;
		MEMBER("layerLB", nil) ctrlShow false;
		MEMBER("layerTree", nil) ctrlShow false;
		MEMBER("layerToolCB", nil) ctrlShow true;
		MEMBER("layerOther", nil) ctrlShow false;
		if!(MEMBER("MySlider", nil) isEqualTo {}) then {
			["ctrlShow", false] call MEMBER("MySlider", nil);
		};
	};

	PUBLIC FUNCTION("", "btnAction_btnTree") {
		MEMBER("layerStyle", nil) ctrlShow false;
		MEMBER("layerGen", nil) ctrlShow false;
		MEMBER("layerMouse", nil) ctrlShow false;
		MEMBER("layerKB", nil) ctrlShow false;
		MEMBER("layerLB", nil) ctrlShow false;
		MEMBER("layerTree", nil) ctrlShow true;
		MEMBER("layerToolCB", nil) ctrlShow false;
		MEMBER("layerOther", nil) ctrlShow false;
		if!(MEMBER("MySlider", nil) isEqualTo {}) then {
			["ctrlShow", false] call MEMBER("MySlider", nil);
		};
	};

	PUBLIC FUNCTION("", "btnAction_btnValider") {
		private _selCtrl = "getSelCtrl" call GuiObject;
		["setText", ["getString", MEMBER("editText", nil)] call HelperGui] call _selCtrl;
		["setBackgroundColor", ["getColor", MEMBER("editBGColor", nil)] call HelperGui] call _selCtrl;
		["setTextColor", ["getColor", MEMBER("editTextColor", nil)] call HelperGui] call _selCtrl;
		["setForegroundColor", ["getColor", MEMBER("editFGColor", nil)] call HelperGui] call _selCtrl;
		private _tp = ["getString", MEMBER("editTooltip", nil)] call HelperGui;
		_tp = ["trim", _tp] call HelperGui;
		["setTooltip", _tp] call _selCtrl;
		["setTooltipColorBox", ["getColor", MEMBER("editTooltipColorBoX", nil)] call HelperGui] call _selCtrl;
		["setTooltipColorShade", ["getColor", MEMBER("editTooltipColorShade", nil)] call HelperGui] call _selCtrl;
		["setTooltipColorText", ["getColor", MEMBER("editTooltipColorText", nil)] call HelperGui] call _selCtrl;
		private _name = ["getString", MEMBER("editName", nil)] call HelperGui;
		if (["containSpace", _name] call HelperGui) exitWith {
			hint "Name can't content space";
		};
		if (["haveSpecialChar", _name] call HelperGui) exitWith {
			hint "Name only accept alpha-numeric char";
		};
		_name = ["trim", _name]call HelperGui;
		["setName", _name] call _selCtrl;
		closeDialog 0;
	};

	/*
	*	onSetFocus:
	*		Input focus is on control. It now begins to accept keyboard input.
	*		Returns control.
	*/
	PUBLIC FUNCTION("array", "onSetFocus_editBGColor") {
		private _control = _this select 0;
		private _pos = ctrlPosition _control;
		if (MEMBER("MySlider", nil) isEqualTo {}) then {
			private _colorPicker = ["new", [MEMBER("Display", nil), MEMBER("MainLayer", nil)]] call oo_ColorPicker;
			MEMBER("MySlider", _colorPicker);
		};
		["ctrlShow", true] call MEMBER("MySlider", nil);
		"removeAllCallBack" call MEMBER("MySlider", nil);
		private _relativePos = ["relativeCtrlPosToParent", [_control, MEMBER("MainLayer", nil)]] call HelperGui;
		["setBackground", [0.1,0.1,0.1,0.9]]call MEMBER("MySlider", nil);
		private _posColorPicker = "getPos" call MEMBER("MySlider", nil);
		["setPos", [(_relativePos select 0) + (_pos select 2) + (4 * pixelGrid * pixelW), (_relativePos select 1) - ((_posColorPicker select 3)/2) + (_pos select 3)/2]] call MEMBER("MySlider", nil);
		private _callable = "['static', ['setEditBGColor', _this]] call oo_ctrlModifyDialog;";
		["addCallBack", _callable]call MEMBER("MySlider", nil);
	};

	PUBLIC FUNCTION("array","setEditBGColor") {
		MEMBER("editBGColor", nil) ctrlSetText str _this;
	};


	/*
	*	onSetFocus:
	*		Input focus is on control. It now begins to accept keyboard input.
	*		Returns control.
	*/
	PUBLIC FUNCTION("array", "onSetFocus_editTextColor") {
		private _control = _this select 0;
		private _pos = ctrlPosition _control;
		if (MEMBER("MySlider", nil) isEqualTo {}) then {
			private _colorPicker = ["new", [MEMBER("Display", nil), MEMBER("MainLayer", nil)]] call oo_ColorPicker;
			MEMBER("MySlider", _colorPicker);
		};
		["ctrlShow", true] call MEMBER("MySlider", nil);
		"removeAllCallBack" call MEMBER("MySlider", nil);
		private _relativePos = ["relativeCtrlPosToParent", [_control, MEMBER("MainLayer", nil)]] call HelperGui;
		["setBackground", [0.1,0.1,0.1,0.9]]call MEMBER("MySlider", nil);
		private _posColorPicker = "getPos" call MEMBER("MySlider", nil);
		["setPos", [(_relativePos select 0) + (_pos select 2) + (4 * pixelGrid * pixelW), (_relativePos select 1) - ((_posColorPicker select 3)/2) + (_pos select 3)/2]] call MEMBER("MySlider", nil);
		private _callable = "['static', ['setEditTextColor', _this]] call oo_ctrlModifyDialog;";
		["addCallBack", _callable]call MEMBER("MySlider", nil);
	};

	PUBLIC FUNCTION("array","setEditTextColor") {
		MEMBER("editTextColor", nil) ctrlSetText str _this;
	};

	/*
	*	onSetFocus:
	*		Input focus is on control. It now begins to accept keyboard input.
	*		Returns control.
	*/
	PUBLIC FUNCTION("array", "onSetFocus_editFGColor") {
		private _control = _this select 0;
		private _pos = ctrlPosition _control;
		if (MEMBER("MySlider", nil) isEqualTo {}) then {
			private _colorPicker = ["new", [MEMBER("Display", nil), MEMBER("MainLayer", nil)]] call oo_ColorPicker;
			MEMBER("MySlider", _colorPicker);
		};
		["ctrlShow", true] call MEMBER("MySlider", nil);
		"removeAllCallBack" call MEMBER("MySlider", nil);
		private _relativePos = ["relativeCtrlPosToParent", [_control, MEMBER("MainLayer", nil)]] call HelperGui;
		["setBackground", [0.1,0.1,0.1,0.9]]call MEMBER("MySlider", nil);
		private _posColorPicker = "getPos" call MEMBER("MySlider", nil);
		["setPos", [(_relativePos select 0) + (_pos select 2) + (4 * pixelGrid * pixelW), (_relativePos select 1) - ((_posColorPicker select 3)/2) + (_pos select 3)/2]] call MEMBER("MySlider", nil);
		private _callable = "['static', ['setEditFGColor', _this]] call oo_ctrlModifyDialog;";
		["addCallBack", _callable]call MEMBER("MySlider", nil);
	};

	PUBLIC FUNCTION("array","setEditFGColor") {
		MEMBER("editFGColor", nil) ctrlSetText str _this;

	};


	/*
	*	onSetFocus:
	*		Input focus is on control. It now begins to accept keyboard input.
	*		Returns control.
	*/
	PUBLIC FUNCTION("array", "onSetFocus_editTooltipColorBoX") {
		private _control = _this select 0;
		private _pos = ctrlPosition _control;
		if (MEMBER("MySlider", nil) isEqualTo {}) then {
			private _colorPicker = ["new", [MEMBER("Display", nil), MEMBER("MainLayer", nil)]] call oo_ColorPicker;
			MEMBER("MySlider", _colorPicker);
		};
		["ctrlShow", true] call MEMBER("MySlider", nil);
		"removeAllCallBack" call MEMBER("MySlider", nil);
		private _relativePos = ["relativeCtrlPosToParent", [_control, MEMBER("MainLayer", nil)]] call HelperGui;
		["setBackground", [0.1,0.1,0.1,0.9]]call MEMBER("MySlider", nil);
		private _posColorPicker = "getPos" call MEMBER("MySlider", nil);
		["setPos", [(_relativePos select 0) + (_pos select 2) + (4 * pixelGrid * pixelW), (_relativePos select 1) - ((_posColorPicker select 3)/2) + (_pos select 3)/2]] call MEMBER("MySlider", nil);
		private _callable = "['static', ['setEditTooltipColorBoX', _this]] call oo_ctrlModifyDialog;";
		["addCallBack", _callable]call MEMBER("MySlider", nil);
	};
	PUBLIC FUNCTION("array","setEditTooltipColorBoX") {
		MEMBER("editTooltipColorBoX", nil) ctrlSetText str _this;
	};


	/*
	*	onSetFocus:
	*		Input focus is on control. It now begins to accept keyboard input.
	*		Returns control.
	*/
	PUBLIC FUNCTION("array", "onSetFocus_editTooltipColorShade") {
		private _control = _this select 0;
		private _pos = ctrlPosition _control;
		if (MEMBER("MySlider", nil) isEqualTo {}) then {
			private _colorPicker = ["new", [MEMBER("Display", nil), MEMBER("MainLayer", nil)]] call oo_ColorPicker;
			MEMBER("MySlider", _colorPicker);
		};
		["ctrlShow", true] call MEMBER("MySlider", nil);
		"removeAllCallBack" call MEMBER("MySlider", nil);
		private _relativePos = ["relativeCtrlPosToParent", [_control, MEMBER("MainLayer", nil)]] call HelperGui;
		["setBackground", [0.1,0.1,0.1,0.9]]call MEMBER("MySlider", nil);
		private _posColorPicker = "getPos" call MEMBER("MySlider", nil);
		["setPos", [(_relativePos select 0) + (_pos select 2) + (4 * pixelGrid * pixelW), (_relativePos select 1) - ((_posColorPicker select 3)/2) + (_pos select 3)/2]] call MEMBER("MySlider", nil);
		private _callable = "['static', ['setEditTooltipColorShade', _this]] call oo_ctrlModifyDialog;";
		["addCallBack", _callable]call MEMBER("MySlider", nil);

	};

	PUBLIC FUNCTION("array","setEditTooltipColorShade") {
		MEMBER("editTooltipColorShade", nil) ctrlSetText str _this;
	};


	/*
	*	onSetFocus:
	*		Input focus is on control. It now begins to accept keyboard input.
	*		Returns control.
	*/
	PUBLIC FUNCTION("array", "onSetFocus_editTooltipColorText") {
		private _control = _this select 0;
		private _pos = ctrlPosition _control;
		if (MEMBER("MySlider", nil) isEqualTo {}) then {
			private _colorPicker = ["new", [MEMBER("Display", nil), MEMBER("MainLayer", nil)]] call oo_ColorPicker;
			MEMBER("MySlider", _colorPicker);
		};
		["ctrlShow", true] call MEMBER("MySlider", nil);
		"removeAllCallBack" call MEMBER("MySlider", nil);
		private _relativePos = ["relativeCtrlPosToParent", [_control, MEMBER("MainLayer", nil)]] call HelperGui;
		["setBackground", [0.1,0.1,0.1,0.9]]call MEMBER("MySlider", nil);
		private _posColorPicker = "getPos" call MEMBER("MySlider", nil);
		["setPos", [(_relativePos select 0) + (_pos select 2) + (4 * pixelGrid * pixelW), (_relativePos select 1) - ((_posColorPicker select 3)/2) + (_pos select 3)/2]] call MEMBER("MySlider", nil);
		private _callable = "['static', ['setEditTooltipColorText', _this]] call oo_ctrlModifyDialog;";
		["addCallBack", _callable]call MEMBER("MySlider", nil);
	};

	PUBLIC FUNCTION("array","setEditTooltipColorText") {
		MEMBER("editTooltipColorText", nil) ctrlSetText str _this;
	};

	/*
	*	onSetFocus:
	*		Input focus is on control. It now begins to accept keyboard input.
	*		Returns control.
	*/
	PUBLIC FUNCTION("array", "onSetFocus_editName") {
		private _control = _this select 0;
		if!(MEMBER("MySlider", nil) isEqualTo {}) then {
			["ctrlShow", false] call MEMBER("MySlider", nil);
		};
	};

	PUBLIC FUNCTION("array", "onSetFocus_editText") {
		private _control = _this select 0;
		if!(MEMBER("MySlider", nil) isEqualTo {}) then {
			["ctrlShow", false] call MEMBER("MySlider", nil);
		};
	};

	PUBLIC FUNCTION("array", "onSetFocus_editTooltip") {
		private _control = _this select 0;
		if!(MEMBER("MySlider", nil) isEqualTo {}) then {
			["ctrlShow", false] call MEMBER("MySlider", nil);
		};
	};


	/*
	*	onCheckedChanged:
	*		Checked state of CheckBox changed.
	*		Returns control and the checked state (0 or 1, not boolean).
	*/
	PUBLIC FUNCTION("array", "onCheckedChanged_cbInit") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["Init", _scalar]] call GuiObject;
	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnButtonClick") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onButtonClick", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnButtonDblClick") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onButtonDblClick", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnButtonDown") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onButtonDown", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnButtonUp") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onButtonUp", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnCanDestroy") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onCanDestroy", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnChar") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onChar", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnCheckBoxesSelChanged") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onCheckBoxesSelChanged", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnChecked") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onChecked", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnCheckedChanged") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onCheckedChanged", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnDestroy") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onDestroy", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnDraw") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onDraw", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnHTMLLink") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onHTMLLink", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnIMEChar") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onIMEChar", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnIMEComposition") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onIMEComposition", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnJoystickButton") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onJoystickButton", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnKeyDown") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onKeyDown", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnKeyUp") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onKeyUp", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnKillFocus") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onKillFocus", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnLBDblClick") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onLBDblClick", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnLBDrag") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onLBDrag", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnLBDragging") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onLBDragging", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnLBDrop") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onLBDrop", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnLBListSelChanged") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onLBListSelChanged", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnLBSelChanged") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onLBSelChanged", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnLoad") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onLoad", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnMenuSelected") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onMenuSelected", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnMouseButtonClick") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onMouseButtonClick", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnMouseButtonDblClick") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onMouseButtonDblClick", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnMouseButtonDown") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onMouseButtonDown", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnMouseButtonUp") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onMouseButtonUp", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnMouseEnter") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onMouseEnter", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnMouseExit") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onMouseExit", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnMouseHolding") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onMouseHolding", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnMouseMoving") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onMouseMoving", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnMouseZChanged") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onMouseZChanged", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnObjectMoved") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onObjectMoved", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnSetFocus") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onSetFocus", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnSliderPosChanged") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onSliderPosChanged", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnTimer") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onTimer", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnToolBoxSelChanged") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onToolBoxSelChanged", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnTreeCollapsed") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onTreeCollapsed", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnTreeDblClick") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onTreeDblClick", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnTreeExpanded") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onTreeExpanded", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnTreeLButtonDown") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onTreeLButtonDown", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnTreeMouseExit") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onTreeMouseExit", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnTreeMouseHold") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onTreeMouseHold", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnTreeMouseMove") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onTreeMouseMove", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnTreeSelChanged") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onTreeSelChanged", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnUnload") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onUnload", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("array", "onCheckedChanged_cbOnVideoStopped") {
		private _control = _this select 0;
		private _scalar = _this select 1;
		["setEventState", ["onVideoStopped", _scalar]] call GuiObject;

	};

	PUBLIC FUNCTION("", "getbtnClose") FUNC_GETVAR("btnClose");
	PUBLIC FUNCTION("", "getbtnGen") FUNC_GETVAR("btnGen");
	PUBLIC FUNCTION("", "getbtnKB") FUNC_GETVAR("btnKB");
	PUBLIC FUNCTION("", "getbtnLB") FUNC_GETVAR("btnLB");
	PUBLIC FUNCTION("", "getbtnMouse") FUNC_GETVAR("btnMouse");
	PUBLIC FUNCTION("", "getbtnOther") FUNC_GETVAR("btnOther");
	PUBLIC FUNCTION("", "getbtnStyle") FUNC_GETVAR("btnStyle");
	PUBLIC FUNCTION("", "getbtnTool") FUNC_GETVAR("btnTool");
	PUBLIC FUNCTION("", "getbtnTree") FUNC_GETVAR("btnTree");
	PUBLIC FUNCTION("", "getbtnValider") FUNC_GETVAR("btnValider");
	PUBLIC FUNCTION("", "getcbInit") FUNC_GETVAR("cbInit");
	PUBLIC FUNCTION("", "getcbOnButtonClick") FUNC_GETVAR("cbOnButtonClick");
	PUBLIC FUNCTION("", "getcbOnButtonDblClick") FUNC_GETVAR("cbOnButtonDblClick");
	PUBLIC FUNCTION("", "getcbOnButtonDown") FUNC_GETVAR("cbOnButtonDown");
	PUBLIC FUNCTION("", "getcbOnButtonUp") FUNC_GETVAR("cbOnButtonUp");
	PUBLIC FUNCTION("", "getcbOnCanDestroy") FUNC_GETVAR("cbOnCanDestroy");
	PUBLIC FUNCTION("", "getcbOnChar") FUNC_GETVAR("cbOnChar");
	PUBLIC FUNCTION("", "getcbOnCheckBoxesSelChanged") FUNC_GETVAR("cbOnCheckBoxesSelChanged");
	PUBLIC FUNCTION("", "getcbOnChecked") FUNC_GETVAR("cbOnChecked");
	PUBLIC FUNCTION("", "getcbOnCheckedChanged") FUNC_GETVAR("cbOnCheckedChanged");
	PUBLIC FUNCTION("", "getcbOnDestroy") FUNC_GETVAR("cbOnDestroy");
	PUBLIC FUNCTION("", "getcbOnDraw") FUNC_GETVAR("cbOnDraw");
	PUBLIC FUNCTION("", "getcbOnHTMLLink") FUNC_GETVAR("cbOnHTMLLink");
	PUBLIC FUNCTION("", "getcbOnIMEChar") FUNC_GETVAR("cbOnIMEChar");
	PUBLIC FUNCTION("", "getcbOnIMEComposition") FUNC_GETVAR("cbOnIMEComposition");
	PUBLIC FUNCTION("", "getcbOnJoystickButton") FUNC_GETVAR("cbOnJoystickButton");
	PUBLIC FUNCTION("", "getcbOnKeyDown") FUNC_GETVAR("cbOnKeyDown");
	PUBLIC FUNCTION("", "getcbOnKeyUp") FUNC_GETVAR("cbOnKeyUp");
	PUBLIC FUNCTION("", "getcbOnKillFocus") FUNC_GETVAR("cbOnKillFocus");
	PUBLIC FUNCTION("", "getcbOnLBDblClick") FUNC_GETVAR("cbOnLBDblClick");
	PUBLIC FUNCTION("", "getcbOnLBDrag") FUNC_GETVAR("cbOnLBDrag");
	PUBLIC FUNCTION("", "getcbOnLBDragging") FUNC_GETVAR("cbOnLBDragging");
	PUBLIC FUNCTION("", "getcbOnLBDrop") FUNC_GETVAR("cbOnLBDrop");
	PUBLIC FUNCTION("", "getcbOnLBListSelChanged") FUNC_GETVAR("cbOnLBListSelChanged");
	PUBLIC FUNCTION("", "getcbOnLBSelChanged") FUNC_GETVAR("cbOnLBSelChanged");
	PUBLIC FUNCTION("", "getcbOnLoad") FUNC_GETVAR("cbOnLoad");
	PUBLIC FUNCTION("", "getcbOnMenuSelected") FUNC_GETVAR("cbOnMenuSelected");
	PUBLIC FUNCTION("", "getcbOnMouseButtonClick") FUNC_GETVAR("cbOnMouseButtonClick");
	PUBLIC FUNCTION("", "getcbOnMouseButtonDblClick") FUNC_GETVAR("cbOnMouseButtonDblClick");
	PUBLIC FUNCTION("", "getcbOnMouseButtonDown") FUNC_GETVAR("cbOnMouseButtonDown");
	PUBLIC FUNCTION("", "getcbOnMouseButtonUp") FUNC_GETVAR("cbOnMouseButtonUp");
	PUBLIC FUNCTION("", "getcbOnMouseEnter") FUNC_GETVAR("cbOnMouseEnter");
	PUBLIC FUNCTION("", "getcbOnMouseExit") FUNC_GETVAR("cbOnMouseExit");
	PUBLIC FUNCTION("", "getcbOnMouseHolding") FUNC_GETVAR("cbOnMouseHolding");
	PUBLIC FUNCTION("", "getcbOnMouseMoving") FUNC_GETVAR("cbOnMouseMoving");
	PUBLIC FUNCTION("", "getcbOnMouseZChanged") FUNC_GETVAR("cbOnMouseZChanged");
	PUBLIC FUNCTION("", "getcbOnObjectMoved") FUNC_GETVAR("cbOnObjectMoved");
	PUBLIC FUNCTION("", "getcbOnSetFocus") FUNC_GETVAR("cbOnSetFocus");
	PUBLIC FUNCTION("", "getcbOnSliderPosChanged") FUNC_GETVAR("cbOnSliderPosChanged");
	PUBLIC FUNCTION("", "getcbOnTimer") FUNC_GETVAR("cbOnTimer");
	PUBLIC FUNCTION("", "getcbOnToolBoxSelChanged") FUNC_GETVAR("cbOnToolBoxSelChanged");
	PUBLIC FUNCTION("", "getcbOnTreeCollapsed") FUNC_GETVAR("cbOnTreeCollapsed");
	PUBLIC FUNCTION("", "getcbOnTreeDblClick") FUNC_GETVAR("cbOnTreeDblClick");
	PUBLIC FUNCTION("", "getcbOnTreeExpanded") FUNC_GETVAR("cbOnTreeExpanded");
	PUBLIC FUNCTION("", "getcbOnTreeLButtonDown") FUNC_GETVAR("cbOnTreeLButtonDown");
	PUBLIC FUNCTION("", "getcbOnTreeMouseExit") FUNC_GETVAR("cbOnTreeMouseExit");
	PUBLIC FUNCTION("", "getcbOnTreeMouseHold") FUNC_GETVAR("cbOnTreeMouseHold");
	PUBLIC FUNCTION("", "getcbOnTreeMouseMove") FUNC_GETVAR("cbOnTreeMouseMove");
	PUBLIC FUNCTION("", "getcbOnTreeSelChanged") FUNC_GETVAR("cbOnTreeSelChanged");
	PUBLIC FUNCTION("", "getcbOnUnload") FUNC_GETVAR("cbOnUnload");
	PUBLIC FUNCTION("", "getcbOnVideoStopped") FUNC_GETVAR("cbOnVideoStopped");
	PUBLIC FUNCTION("", "getDisplay") FUNC_GETVAR("Display");
	PUBLIC FUNCTION("", "geteditBGColor") FUNC_GETVAR("editBGColor");
	PUBLIC FUNCTION("", "geteditFGColor") FUNC_GETVAR("editFGColor");
	PUBLIC FUNCTION("", "geteditID") FUNC_GETVAR("editID");
	PUBLIC FUNCTION("", "geteditName") FUNC_GETVAR("editName");
	PUBLIC FUNCTION("", "geteditText") FUNC_GETVAR("editText");
	PUBLIC FUNCTION("", "geteditTextColor") FUNC_GETVAR("editTextColor");
	PUBLIC FUNCTION("", "geteditTooltip") FUNC_GETVAR("editTooltip");
	PUBLIC FUNCTION("", "geteditTooltipColorBoX") FUNC_GETVAR("editTooltipColorBoX");
	PUBLIC FUNCTION("", "geteditTooltipColorShade") FUNC_GETVAR("editTooltipColorShade");
	PUBLIC FUNCTION("", "geteditTooltipColorText") FUNC_GETVAR("editTooltipColorText");
	PUBLIC FUNCTION("", "getlayerGen") FUNC_GETVAR("layerGen");
	PUBLIC FUNCTION("", "getlayerKB") FUNC_GETVAR("layerKB");
	PUBLIC FUNCTION("", "getlayerLB") FUNC_GETVAR("layerLB");
	PUBLIC FUNCTION("", "getlayerMouse") FUNC_GETVAR("layerMouse");
	PUBLIC FUNCTION("", "getlayerOther") FUNC_GETVAR("layerOther");
	PUBLIC FUNCTION("", "getlayerStyle") FUNC_GETVAR("layerStyle");
	PUBLIC FUNCTION("", "getlayerToolCB") FUNC_GETVAR("layerToolCB");
	PUBLIC FUNCTION("", "getlayerTree") FUNC_GETVAR("layerTree");
	PUBLIC FUNCTION("", "getMainLayer") FUNC_GETVAR("MainLayer");
	PUBLIC FUNCTION("", "gettitle") FUNC_GETVAR("title");
	PUBLIC FUNCTION("control", "setbtnClose"){ MEMBER("btnClose", _this); };
	PUBLIC FUNCTION("control", "setbtnGen"){ MEMBER("btnGen", _this); };
	PUBLIC FUNCTION("control", "setbtnKB"){ MEMBER("btnKB", _this); };
	PUBLIC FUNCTION("control", "setbtnLB"){ MEMBER("btnLB", _this); };
	PUBLIC FUNCTION("control", "setbtnMouse"){ MEMBER("btnMouse", _this); };
	PUBLIC FUNCTION("control", "setbtnOther"){ MEMBER("btnOther", _this); };
	PUBLIC FUNCTION("control", "setbtnStyle"){ MEMBER("btnStyle", _this); };
	PUBLIC FUNCTION("control", "setbtnTool"){ MEMBER("btnTool", _this); };
	PUBLIC FUNCTION("control", "setbtnTree"){ MEMBER("btnTree", _this); };
	PUBLIC FUNCTION("control", "setbtnValider"){ MEMBER("btnValider", _this); };
	PUBLIC FUNCTION("control", "setcbInit"){ MEMBER("cbInit", _this); };
	PUBLIC FUNCTION("control", "setcbOnButtonClick"){ MEMBER("cbOnButtonClick", _this); };
	PUBLIC FUNCTION("control", "setcbOnButtonDblClick"){ MEMBER("cbOnButtonDblClick", _this); };
	PUBLIC FUNCTION("control", "setcbOnButtonDown"){ MEMBER("cbOnButtonDown", _this); };
	PUBLIC FUNCTION("control", "setcbOnButtonUp"){ MEMBER("cbOnButtonUp", _this); };
	PUBLIC FUNCTION("control", "setcbOnCanDestroy"){ MEMBER("cbOnCanDestroy", _this); };
	PUBLIC FUNCTION("control", "setcbOnChar"){ MEMBER("cbOnChar", _this); };
	PUBLIC FUNCTION("control", "setcbOnCheckBoxesSelChanged"){ MEMBER("cbOnCheckBoxesSelChanged", _this); };
	PUBLIC FUNCTION("control", "setcbOnChecked"){ MEMBER("cbOnChecked", _this); };
	PUBLIC FUNCTION("control", "setcbOnCheckedChanged"){ MEMBER("cbOnCheckedChanged", _this); };
	PUBLIC FUNCTION("control", "setcbOnDestroy"){ MEMBER("cbOnDestroy", _this); };
	PUBLIC FUNCTION("control", "setcbOnDraw"){ MEMBER("cbOnDraw", _this); };
	PUBLIC FUNCTION("control", "setcbOnHTMLLink"){ MEMBER("cbOnHTMLLink", _this); };
	PUBLIC FUNCTION("control", "setcbOnIMEChar"){ MEMBER("cbOnIMEChar", _this); };
	PUBLIC FUNCTION("control", "setcbOnIMEComposition"){ MEMBER("cbOnIMEComposition", _this); };
	PUBLIC FUNCTION("control", "setcbOnJoystickButton"){ MEMBER("cbOnJoystickButton", _this); };
	PUBLIC FUNCTION("control", "setcbOnKeyDown"){ MEMBER("cbOnKeyDown", _this); };
	PUBLIC FUNCTION("control", "setcbOnKeyUp"){ MEMBER("cbOnKeyUp", _this); };
	PUBLIC FUNCTION("control", "setcbOnKillFocus"){ MEMBER("cbOnKillFocus", _this); };
	PUBLIC FUNCTION("control", "setcbOnLBDblClick"){ MEMBER("cbOnLBDblClick", _this); };
	PUBLIC FUNCTION("control", "setcbOnLBDrag"){ MEMBER("cbOnLBDrag", _this); };
	PUBLIC FUNCTION("control", "setcbOnLBDragging"){ MEMBER("cbOnLBDragging", _this); };
	PUBLIC FUNCTION("control", "setcbOnLBDrop"){ MEMBER("cbOnLBDrop", _this); };
	PUBLIC FUNCTION("control", "setcbOnLBListSelChanged"){ MEMBER("cbOnLBListSelChanged", _this); };
	PUBLIC FUNCTION("control", "setcbOnLBSelChanged"){ MEMBER("cbOnLBSelChanged", _this); };
	PUBLIC FUNCTION("control", "setcbOnLoad"){ MEMBER("cbOnLoad", _this); };
	PUBLIC FUNCTION("control", "setcbOnMenuSelected"){ MEMBER("cbOnMenuSelected", _this); };
	PUBLIC FUNCTION("control", "setcbOnMouseButtonClick"){ MEMBER("cbOnMouseButtonClick", _this); };
	PUBLIC FUNCTION("control", "setcbOnMouseButtonDblClick"){ MEMBER("cbOnMouseButtonDblClick", _this); };
	PUBLIC FUNCTION("control", "setcbOnMouseButtonDown"){ MEMBER("cbOnMouseButtonDown", _this); };
	PUBLIC FUNCTION("control", "setcbOnMouseButtonUp"){ MEMBER("cbOnMouseButtonUp", _this); };
	PUBLIC FUNCTION("control", "setcbOnMouseEnter"){ MEMBER("cbOnMouseEnter", _this); };
	PUBLIC FUNCTION("control", "setcbOnMouseExit"){ MEMBER("cbOnMouseExit", _this); };
	PUBLIC FUNCTION("control", "setcbOnMouseHolding"){ MEMBER("cbOnMouseHolding", _this); };
	PUBLIC FUNCTION("control", "setcbOnMouseMoving"){ MEMBER("cbOnMouseMoving", _this); };
	PUBLIC FUNCTION("control", "setcbOnMouseZChanged"){ MEMBER("cbOnMouseZChanged", _this); };
	PUBLIC FUNCTION("control", "setcbOnObjectMoved"){ MEMBER("cbOnObjectMoved", _this); };
	PUBLIC FUNCTION("control", "setcbOnSetFocus"){ MEMBER("cbOnSetFocus", _this); };
	PUBLIC FUNCTION("control", "setcbOnSliderPosChanged"){ MEMBER("cbOnSliderPosChanged", _this); };
	PUBLIC FUNCTION("control", "setcbOnTimer"){ MEMBER("cbOnTimer", _this); };
	PUBLIC FUNCTION("control", "setcbOnToolBoxSelChanged"){ MEMBER("cbOnToolBoxSelChanged", _this); };
	PUBLIC FUNCTION("control", "setcbOnTreeCollapsed"){ MEMBER("cbOnTreeCollapsed", _this); };
	PUBLIC FUNCTION("control", "setcbOnTreeDblClick"){ MEMBER("cbOnTreeDblClick", _this); };
	PUBLIC FUNCTION("control", "setcbOnTreeExpanded"){ MEMBER("cbOnTreeExpanded", _this); };
	PUBLIC FUNCTION("control", "setcbOnTreeLButtonDown"){ MEMBER("cbOnTreeLButtonDown", _this); };
	PUBLIC FUNCTION("control", "setcbOnTreeMouseExit"){ MEMBER("cbOnTreeMouseExit", _this); };
	PUBLIC FUNCTION("control", "setcbOnTreeMouseHold"){ MEMBER("cbOnTreeMouseHold", _this); };
	PUBLIC FUNCTION("control", "setcbOnTreeMouseMove"){ MEMBER("cbOnTreeMouseMove", _this); };
	PUBLIC FUNCTION("control", "setcbOnTreeSelChanged"){ MEMBER("cbOnTreeSelChanged", _this); };
	PUBLIC FUNCTION("control", "setcbOnUnload"){ MEMBER("cbOnUnload", _this); };
	PUBLIC FUNCTION("control", "setcbOnVideoStopped"){ MEMBER("cbOnVideoStopped", _this); };
	PUBLIC FUNCTION("control", "seteditBGColor"){ MEMBER("editBGColor", _this); };
	PUBLIC FUNCTION("control", "seteditFGColor"){ MEMBER("editFGColor", _this); };
	PUBLIC FUNCTION("control", "seteditID"){ MEMBER("editID", _this); };
	PUBLIC FUNCTION("control", "seteditName"){ MEMBER("editName", _this); };
	PUBLIC FUNCTION("control", "seteditText"){ MEMBER("editText", _this); };
	PUBLIC FUNCTION("control", "seteditTextColor"){ MEMBER("editTextColor", _this); };
	PUBLIC FUNCTION("control", "seteditTooltip"){ MEMBER("editTooltip", _this); };
	PUBLIC FUNCTION("control", "seteditTooltipColorBoX"){ MEMBER("editTooltipColorBoX", _this); };
	PUBLIC FUNCTION("control", "seteditTooltipColorShade"){ MEMBER("editTooltipColorShade", _this); };
	PUBLIC FUNCTION("control", "seteditTooltipColorText"){ MEMBER("editTooltipColorText", _this); };
	PUBLIC FUNCTION("control", "setlayerGen"){ MEMBER("layerGen", _this); };
	PUBLIC FUNCTION("control", "setlayerKB"){ MEMBER("layerKB", _this); };
	PUBLIC FUNCTION("control", "setlayerLB"){ MEMBER("layerLB", _this); };
	PUBLIC FUNCTION("control", "setlayerMouse"){ MEMBER("layerMouse", _this); };
	PUBLIC FUNCTION("control", "setlayerOther"){ MEMBER("layerOther", _this); };
	PUBLIC FUNCTION("control", "setlayerStyle"){ MEMBER("layerStyle", _this); };
	PUBLIC FUNCTION("control", "setlayerToolCB"){ MEMBER("layerToolCB", _this); };
	PUBLIC FUNCTION("control", "setlayerTree"){ MEMBER("layerTree", _this); };
	PUBLIC FUNCTION("control", "setMainLayer"){ MEMBER("MainLayer", _this); };
	PUBLIC FUNCTION("control", "settitle"){ MEMBER("title", _this); };
	PUBLIC FUNCTION("display", "setDisplay"){ MEMBER("Display", _this); };

	PUBLIC FUNCTION("", "deconstructor"){
		closeDialog 0;
		DELETE_UI_VARIABLE("Display");
		DELETE_UI_VARIABLE("title");
		DELETE_UI_VARIABLE("btnStyle");
		DELETE_UI_VARIABLE("btnGen");
		DELETE_UI_VARIABLE("btnMouse");
		DELETE_UI_VARIABLE("btnKB");
		DELETE_UI_VARIABLE("btnLB");
		DELETE_UI_VARIABLE("btnTree");
		DELETE_UI_VARIABLE("btnTool");
		DELETE_UI_VARIABLE("btnOther");
		DELETE_UI_VARIABLE("btnValider");
		DELETE_UI_VARIABLE("btnClose");
		DELETE_UI_VARIABLE("layerGen");
		DELETE_UI_VARIABLE("cbInit");
		DELETE_UI_VARIABLE("cbOnDestroy");
		DELETE_UI_VARIABLE("cbOnLoad");
		DELETE_UI_VARIABLE("cbOnUnload");
		DELETE_UI_VARIABLE("cbOnSetFocus");
		DELETE_UI_VARIABLE("cbOnKillFocus");
		DELETE_UI_VARIABLE("cbOnTimer");
		DELETE_UI_VARIABLE("cbOnCanDestroy");
		DELETE_UI_VARIABLE("layerMouse");
		DELETE_UI_VARIABLE("cbOnMouseButtonDown");
		DELETE_UI_VARIABLE("cbOnMouseButtonUp");
		DELETE_UI_VARIABLE("cbOnMouseButtonClick");
		DELETE_UI_VARIABLE("cbOnMouseButtonDblClick");
		DELETE_UI_VARIABLE("cbOnMouseMoving");
		DELETE_UI_VARIABLE("cbOnMouseHolding");
		DELETE_UI_VARIABLE("cbOnMouseZChanged");
		DELETE_UI_VARIABLE("cbOnButtonDblClick");
		DELETE_UI_VARIABLE("cbOnButtonDown");
		DELETE_UI_VARIABLE("cbOnButtonUp");
		DELETE_UI_VARIABLE("cbOnButtonClick");
		DELETE_UI_VARIABLE("cbOnMouseEnter");
		DELETE_UI_VARIABLE("cbOnMouseExit");
		DELETE_UI_VARIABLE("layerKB");
		DELETE_UI_VARIABLE("cbOnKeyDown");
		DELETE_UI_VARIABLE("cbOnKeyUp");
		DELETE_UI_VARIABLE("cbOnChar");
		DELETE_UI_VARIABLE("cbOnIMEChar");
		DELETE_UI_VARIABLE("cbOnIMEComposition");
		DELETE_UI_VARIABLE("cbOnJoystickButton");
		DELETE_UI_VARIABLE("layerLB");
		DELETE_UI_VARIABLE("cbOnLBSelChanged");
		DELETE_UI_VARIABLE("cbOnLBListSelChanged");
		DELETE_UI_VARIABLE("cbOnLBDblClick");
		DELETE_UI_VARIABLE("cbOnLBDrag");
		DELETE_UI_VARIABLE("cbOnLBDragging");
		DELETE_UI_VARIABLE("cbOnLBDrop");
		DELETE_UI_VARIABLE("layerTree");
		DELETE_UI_VARIABLE("cbOnTreeSelChanged");
		DELETE_UI_VARIABLE("cbOnTreeLButtonDown");
		DELETE_UI_VARIABLE("cbOnTreeDblClick");
		DELETE_UI_VARIABLE("cbOnTreeExpanded");
		DELETE_UI_VARIABLE("cbOnTreeCollapsed");
		DELETE_UI_VARIABLE("cbOnTreeMouseMove");
		DELETE_UI_VARIABLE("cbOnTreeMouseHold");
		DELETE_UI_VARIABLE("cbOnTreeMouseExit");
		DELETE_UI_VARIABLE("layerToolCB");
		DELETE_UI_VARIABLE("cbOnToolBoxSelChanged");
		DELETE_UI_VARIABLE("cbOnChecked");
		DELETE_UI_VARIABLE("cbOnCheckedChanged");
		DELETE_UI_VARIABLE("cbOnCheckBoxesSelChanged");
		DELETE_UI_VARIABLE("layerOther");
		DELETE_UI_VARIABLE("cbOnHTMLLink");
		DELETE_UI_VARIABLE("cbOnSliderPosChanged");
		DELETE_UI_VARIABLE("cbOnObjectMoved");
		DELETE_UI_VARIABLE("cbOnMenuSelected");
		DELETE_UI_VARIABLE("cbOnVideoStopped");
		DELETE_UI_VARIABLE("cbOnDraw");
		DELETE_UI_VARIABLE("layerStyle");
		DELETE_UI_VARIABLE("editID");
		DELETE_UI_VARIABLE("editName");
		DELETE_UI_VARIABLE("editText");
		DELETE_UI_VARIABLE("editBGColor");
		DELETE_UI_VARIABLE("editTextColor");
		DELETE_UI_VARIABLE("editFGColor");
		DELETE_UI_VARIABLE("editTooltip");
		DELETE_UI_VARIABLE("editTooltipColorBoX");
		DELETE_UI_VARIABLE("editTooltipColorShade");
		DELETE_UI_VARIABLE("editTooltipColorText");
	};
ENDCLASS;