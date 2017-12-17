#include "..\oop.h"

CLASS("oo_HelperControl")
	PUBLIC UI_VARIABLE("display", "Display");
	
	PUBLIC VARIABLE("array", "Position");
	PUBLIC VARIABLE("scalar", "LineSpaceX");
	PUBLIC VARIABLE("scalar", "LineSpaceY");
	PUBLIC VARIABLE("scalar", "StartPos");
	
	PUBLIC VARIABLE("scalar", "Mode");
	
	PUBLIC FUNCTION("display","constructor") { 
		MEMBER("Display", _this);
		private _a = [0, 0, safezoneH*0.02];
		MEMBER("Position", _a);
		MEMBER("LineSpaceY", safezoneH * 0.02);
		MEMBER("LineSpaceX", safezoneW * 0.02);
		MEMBER("Mode", 0);
	};

	PUBLIC FUNCTION("array","createTextInput") {
		private _validArgs = params [
			["_label", "", [""]],
			["_widthLabel", -1, [0]],
			["_widthInput", -1, [0]],
			["_idInput", -1, [0]]
		];
		if !(_validArgs) exitWith {
			hint "No valid args in createTextInput";
		};

		private _labelControl = MEMBER("Display", nil) ctrlCreate["OOP_TextRight", -1];
		_labelControl ctrlSetText _label;
		_labelControl ctrlSetPosition [MEMBER("Position", nil) select 0, MEMBER("Position", nil) select 1, _widthLabel, MEMBER("Position", nil) select 2];
		_labelControl ctrlCommit 0;

		private _textInput = MEMBER("Display", nil) ctrlCreate["OOP_Edit", _idInput];
		_textInput ctrlSetPosition [(MEMBER("Position", nil) select 0) + _widthLabel, (MEMBER("Position", nil) select 1), _widthInput, MEMBER("Position", nil) select 2];
		_textInput ctrlCommit 0;
		
		MEMBER("getNewPos", _this);
	};

	PUBLIC FUNCTION("array","createTextCheckbox") {
		private _validArgs = params [
			["_label", "", [""]],
			["_widthLabel", -1, [0]],
			["_widthInput", -1, [0]],
			["_idInput", -1, [0]]
		];
		if !(_validArgs) exitWith {
			hint "Bad input args in createTextCheckbox";
		};
		private _labelControl = MEMBER("Display", nil) ctrlCreate["OOP_TextRight", -1];
		_labelControl ctrlSetText _label;
		_labelControl ctrlSetPosition [MEMBER("Position", nil) select 0, MEMBER("Position", nil) select 1, _widthLabel, MEMBER("Position", nil) select 2];
		_labelControl ctrlCommit 0;

		private _checkboxControl = MEMBER("Display", nil) ctrlCreate["OOP_Checkbox", _idInput];
		_checkboxControl ctrlSetPosition [(MEMBER("Position", nil) select 0) + _widthLabel, MEMBER("Position", nil) select 1, _widthInput, MEMBER("Position", nil) select 2];
		_checkboxControl ctrlCommit 0;

		MEMBER("getNewPos", _this);
	};


	PUBLIC FUNCTION("array","getNewPos") {
		private _validArgs = params [
			["_label", "", [""]],
			["_widthLabel", -1, [0]],
			["_widthInput", -1, [0]],
			["_idInput", -1, [0]]
		];
		if !(_validArgs) exitWith {
			hint "Bad input args in createTextCheckbox";
		};
		// Column
		if (MEMBER("Mode", nil) isEqualTo 0) exitWith {
			private _newPos = [
				MEMBER("Position", nil) select 0,
				(MEMBER("Position", nil) select 1) + (MEMBER("Position", nil) select 2) + MEMBER("LineSpaceY", nil),
				MEMBER("Position", nil) select 2
			];
			MEMBER("Position", _newPos);
		};
		//Row
		if (MEMBER("Mode", nil) isEqualTo 1) exitWith {
			private _newPos = [
				(MEMBER("Position", nil) select 0) + _widthLabel + MEMBER("LineSpaceX", nil),
				MEMBER("Position", nil) select 1,
				MEMBER("Position", nil) select 2
			];
			MEMBER("Position", _newPos);
		};
	};

	PUBLIC FUNCTION("","breakLine") {
		private _newPos = [
			MEMBER("StartPos", nil),
			(MEMBER("Position", nil) select 1) + (MEMBER("Position", nil) select 2) + MEMBER("LineSpaceY", nil),
			MEMBER("Position", nil) select 2
		];
		MEMBER("Position", _newPos);
	};
	
	PUBLIC FUNCTION("scalar","setLineSpaceX") {	MEMBER("LineSpaceX", _this); };
	PUBLIC FUNCTION("scalar","setLineSpaceY") {	MEMBER("LineSpaceY", _this); };
	PUBLIC FUNCTION("scalar","setLineHeight") {	MEMBER("Position", nil) set [2, _this]; };
	PUBLIC FUNCTION("scalar","setMode") { MEMBER("Mode", _this); };
	PUBLIC FUNCTION("array","setPos") {	MEMBER("Position", _this); MEMBER("StartPos", MEMBER("Position", nil) select 0); };

	PUBLIC FUNCTION("","getLineHeight") { MEMBER("Position", nil) select 2; };
	PUBLIC FUNCTION("","getLineSpaceX") { MEMBER("LineSpaceX", nil); };
	PUBLIC FUNCTION("","getLineSpaceY") { MEMBER("LineSpaceY", nil); };
	PUBLIC FUNCTION("","getPos") { MEMBER("Position", nil);	};

ENDCLASS;