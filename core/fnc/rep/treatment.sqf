
/* ----------------------------------------------------------------------------
Function: btc_fnc_rep_treatment

Description:
    Change reputation when a caller is healing a civilian.

Parameters:
    _caller - Healer. [Object]
    _target - Civilian heal. [Object]
    _selectionName - Not use. [String]
    _className - Type of healing. [String]

Returns:

Examples:
    (begin example)
        _result = [] call btc_fnc_rep_treatment;
    (end)

Author:
    Giallustio

---------------------------------------------------------------------------- */

params [
    ["_caller", objNull, [objNull]],
    ["_target", objNull, [objNull]],
    ["_selectionName", "", [""]],
    ["_className", "", [""]]
];

if (isPlayer _target) exitWith {};
if ((alive _target) && (side _target isEqualTo civilian) && !(_className isEqualTo "Diagnose")) then {
    _this remoteExecCall ["btc_fnc_rep_hh", 2];
};
