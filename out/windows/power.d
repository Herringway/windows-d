// Written in the D programming language.

module windows.power;

public import windows.core;
public import windows.windowsprogramming : HKEY;

extern(Windows) @nogc nothrow:


// Functions

///Sets the AC value index of the specified power setting.
///Params:
///    RootPowerKey = This parameter is reserved for future use and must be set to <b>NULL</b>.
///    SchemeGuid = The identifier of the power scheme.
///    SubGroupOfPowerSettingsGuid = The subgroup of power settings. This parameter can be one of the following values defined in WinNT.h. Use
///                                  <b>NO_SUBGROUP_GUID</b> to refer to the default power scheme. <table> <tr> <th>Value</th> <th>Meaning</th> </tr>
///                                  <tr> <td width="40%"><a id="NO_SUBGROUP_GUID"></a><a id="no_subgroup_guid"></a><dl>
///                                  <dt><b>NO_SUBGROUP_GUID</b></dt> <dt>fea3413e-7e05-4911-9a71-700331f1c294</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup are part of the default power scheme. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_DISK_SUBGROUP"></a><a id="guid_disk_subgroup"></a><dl> <dt><b>GUID_DISK_SUBGROUP</b></dt>
///                                  <dt>0012ee47-9041-4b5d-9b77-535fba8b1442</dt> </dl> </td> <td width="60%"> Settings in this subgroup control
///                                  power management configuration of the system's hard disk drives. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_SYSTEM_BUTTON_SUBGROUP"></a><a id="guid_system_button_subgroup"></a><dl>
///                                  <dt><b>GUID_SYSTEM_BUTTON_SUBGROUP</b></dt> <dt>4f971e89-eebd-4455-a8de-9e59040e7347</dt> </dl> </td> <td
///                                  width="60%"> Settings in this subgroup control configuration of the system power buttons. </td> </tr> <tr> <td
///                                  width="40%"><a id="GUID_PROCESSOR_SETTINGS_SUBGROUP"></a><a id="guid_processor_settings_subgroup"></a><dl>
///                                  <dt><b>GUID_PROCESSOR_SETTINGS_SUBGROUP</b></dt> <dt>54533251-82be-4824-96c1-47b60b740d00</dt> </dl> </td> <td
///                                  width="60%"> Settings in this subgroup control configuration of processor power management features. </td> </tr>
///                                  <tr> <td width="40%"><a id="GUID_VIDEO_SUBGROUP"></a><a id="guid_video_subgroup"></a><dl>
///                                  <dt><b>GUID_VIDEO_SUBGROUP</b></dt> <dt>7516b95f-f776-4464-8c53-06167f40cc99</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup control configuration of the video power management features. </td> </tr> <tr> <td
///                                  width="40%"><a id="GUID_BATTERY_SUBGROUP"></a><a id="guid_battery_subgroup"></a><dl>
///                                  <dt><b>GUID_BATTERY_SUBGROUP</b></dt> <dt>e73a048d-bf27-4f12-9731-8b2076e8891f</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup control battery alarm trip points and actions. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_SLEEP_SUBGROUP"></a><a id="guid_sleep_subgroup"></a><dl> <dt><b>GUID_SLEEP_SUBGROUP</b></dt>
///                                  <dt>238C9FA8-0AAD-41ED-83F4-97BE242C8F20</dt> </dl> </td> <td width="60%"> Settings in this subgroup control
///                                  system sleep settings. </td> </tr> <tr> <td width="40%"><a id="GUID_PCIEXPRESS_SETTINGS_SUBGROUP"></a><a
///                                  id="guid_pciexpress_settings_subgroup"></a><dl> <dt><b>GUID_PCIEXPRESS_SETTINGS_SUBGROUP</b></dt>
///                                  <dt>501a4d13-42af-4429-9fd1-a8218c268e20</dt> </dl> </td> <td width="60%"> Settings in this subgroup control PCI
///                                  Express settings. </td> </tr> </table>
///    PowerSettingGuid = The identifier of the power setting.
///    AcValueIndex = The AC value index.
///Returns:
///    Returns <b>ERROR_SUCCESS</b> (zero) if the call was successful, and a nonzero value if the call failed.
///    
@DllImport("api-ms-win-power-setting-l1-1-0")
uint PowerWriteACValueIndex(HKEY RootPowerKey, const(GUID)* SchemeGuid, const(GUID)* SubGroupOfPowerSettingsGuid, 
                            const(GUID)* PowerSettingGuid, uint AcValueIndex);

///Sets the DC index of the specified power setting.
///Params:
///    RootPowerKey = This parameter is reserved for future use and must be set to <b>NULL</b>.
///    SchemeGuid = The identifier of the power scheme.
///    SubGroupOfPowerSettingsGuid = The subgroup of power settings. This parameter can be one of the following values defined in WinNT.h. Use
///                                  <b>NO_SUBGROUP_GUID</b> to refer to the default power scheme. <table> <tr> <th>Value</th> <th>Meaning</th> </tr>
///                                  <tr> <td width="40%"><a id="NO_SUBGROUP_GUID"></a><a id="no_subgroup_guid"></a><dl>
///                                  <dt><b>NO_SUBGROUP_GUID</b></dt> <dt>fea3413e-7e05-4911-9a71-700331f1c294</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup are part of the default power scheme. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_DISK_SUBGROUP"></a><a id="guid_disk_subgroup"></a><dl> <dt><b>GUID_DISK_SUBGROUP</b></dt>
///                                  <dt>0012ee47-9041-4b5d-9b77-535fba8b1442</dt> </dl> </td> <td width="60%"> Settings in this subgroup control
///                                  power management configuration of the system's hard disk drives. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_SYSTEM_BUTTON_SUBGROUP"></a><a id="guid_system_button_subgroup"></a><dl>
///                                  <dt><b>GUID_SYSTEM_BUTTON_SUBGROUP</b></dt> <dt>4f971e89-eebd-4455-a8de-9e59040e7347</dt> </dl> </td> <td
///                                  width="60%"> Settings in this subgroup control configuration of the system power buttons. </td> </tr> <tr> <td
///                                  width="40%"><a id="GUID_PROCESSOR_SETTINGS_SUBGROUP"></a><a id="guid_processor_settings_subgroup"></a><dl>
///                                  <dt><b>GUID_PROCESSOR_SETTINGS_SUBGROUP</b></dt> <dt>54533251-82be-4824-96c1-47b60b740d00</dt> </dl> </td> <td
///                                  width="60%"> Settings in this subgroup control configuration of processor power management features. </td> </tr>
///                                  <tr> <td width="40%"><a id="GUID_VIDEO_SUBGROUP"></a><a id="guid_video_subgroup"></a><dl>
///                                  <dt><b>GUID_VIDEO_SUBGROUP</b></dt> <dt>7516b95f-f776-4464-8c53-06167f40cc99</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup control configuration of the video power management features. </td> </tr> <tr> <td
///                                  width="40%"><a id="GUID_BATTERY_SUBGROUP"></a><a id="guid_battery_subgroup"></a><dl>
///                                  <dt><b>GUID_BATTERY_SUBGROUP</b></dt> <dt>e73a048d-bf27-4f12-9731-8b2076e8891f</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup control battery alarm trip points and actions. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_SLEEP_SUBGROUP"></a><a id="guid_sleep_subgroup"></a><dl> <dt><b>GUID_SLEEP_SUBGROUP</b></dt>
///                                  <dt>238C9FA8-0AAD-41ED-83F4-97BE242C8F20</dt> </dl> </td> <td width="60%"> Settings in this subgroup control
///                                  system sleep settings. </td> </tr> <tr> <td width="40%"><a id="GUID_PCIEXPRESS_SETTINGS_SUBGROUP"></a><a
///                                  id="guid_pciexpress_settings_subgroup"></a><dl> <dt><b>GUID_PCIEXPRESS_SETTINGS_SUBGROUP</b></dt>
///                                  <dt>501a4d13-42af-4429-9fd1-a8218c268e20</dt> </dl> </td> <td width="60%"> Settings in this subgroup control PCI
///                                  Express settings. </td> </tr> </table>
///    PowerSettingGuid = The identifier of the power setting.
///    DcValueIndex = The DC value index.
///Returns:
///    Returns <b>ERROR_SUCCESS</b> (zero) if the call was successful, and a nonzero value if the call failed.
///    
@DllImport("api-ms-win-power-setting-l1-1-0")
uint PowerWriteDCValueIndex(HKEY RootPowerKey, const(GUID)* SchemeGuid, const(GUID)* SubGroupOfPowerSettingsGuid, 
                            const(GUID)* PowerSettingGuid, uint DcValueIndex);

///Retrieves the AC index of the specified power setting.
///Params:
///    RootPowerKey = This parameter is reserved for future use and must be set to <b>NULL</b>.
///    SchemeGuid = The identifier of the power scheme.
///    SubGroupOfPowerSettingsGuid = The subgroup of power settings. This parameter can be one of the following values defined in WinNT.h. Use
///                                  <b>NO_SUBGROUP_GUID</b> to refer to the default power scheme. <table> <tr> <th>Value</th> <th>Meaning</th> </tr>
///                                  <tr> <td width="40%"><a id="NO_SUBGROUP_GUID"></a><a id="no_subgroup_guid"></a><dl>
///                                  <dt><b>NO_SUBGROUP_GUID</b></dt> <dt>fea3413e-7e05-4911-9a71-700331f1c294</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup are part of the default power scheme. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_DISK_SUBGROUP"></a><a id="guid_disk_subgroup"></a><dl> <dt><b>GUID_DISK_SUBGROUP</b></dt>
///                                  <dt>0012ee47-9041-4b5d-9b77-535fba8b1442</dt> </dl> </td> <td width="60%"> Settings in this subgroup control
///                                  power management configuration of the system's hard disk drives. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_SYSTEM_BUTTON_SUBGROUP"></a><a id="guid_system_button_subgroup"></a><dl>
///                                  <dt><b>GUID_SYSTEM_BUTTON_SUBGROUP</b></dt> <dt>4f971e89-eebd-4455-a8de-9e59040e7347</dt> </dl> </td> <td
///                                  width="60%"> Settings in this subgroup control configuration of the system power buttons. </td> </tr> <tr> <td
///                                  width="40%"><a id="GUID_PROCESSOR_SETTINGS_SUBGROUP"></a><a id="guid_processor_settings_subgroup"></a><dl>
///                                  <dt><b>GUID_PROCESSOR_SETTINGS_SUBGROUP</b></dt> <dt>54533251-82be-4824-96c1-47b60b740d00</dt> </dl> </td> <td
///                                  width="60%"> Settings in this subgroup control configuration of processor power management features. </td> </tr>
///                                  <tr> <td width="40%"><a id="GUID_VIDEO_SUBGROUP"></a><a id="guid_video_subgroup"></a><dl>
///                                  <dt><b>GUID_VIDEO_SUBGROUP</b></dt> <dt>7516b95f-f776-4464-8c53-06167f40cc99</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup control configuration of the video power management features. </td> </tr> <tr> <td
///                                  width="40%"><a id="GUID_BATTERY_SUBGROUP"></a><a id="guid_battery_subgroup"></a><dl>
///                                  <dt><b>GUID_BATTERY_SUBGROUP</b></dt> <dt>e73a048d-bf27-4f12-9731-8b2076e8891f</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup control battery alarm trip points and actions. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_SLEEP_SUBGROUP"></a><a id="guid_sleep_subgroup"></a><dl> <dt><b>GUID_SLEEP_SUBGROUP</b></dt>
///                                  <dt>238C9FA8-0AAD-41ED-83F4-97BE242C8F20</dt> </dl> </td> <td width="60%"> Settings in this subgroup control
///                                  system sleep settings. </td> </tr> <tr> <td width="40%"><a id="GUID_PCIEXPRESS_SETTINGS_SUBGROUP"></a><a
///                                  id="guid_pciexpress_settings_subgroup"></a><dl> <dt><b>GUID_PCIEXPRESS_SETTINGS_SUBGROUP</b></dt>
///                                  <dt>501a4d13-42af-4429-9fd1-a8218c268e20</dt> </dl> </td> <td width="60%"> Settings in this subgroup control PCI
///                                  Express settings. </td> </tr> </table>
///    PowerSettingGuid = The identifier of the power setting.
///    AcValueIndex = A pointer to a variable that receives the AC value index.
///Returns:
///    Returns <b>ERROR_SUCCESS</b> (zero) if the call was successful, and a nonzero value if the call failed.
///    
@DllImport("POWRPROF")
uint PowerReadACValueIndex(HKEY RootPowerKey, const(GUID)* SchemeGuid, const(GUID)* SubGroupOfPowerSettingsGuid, 
                           const(GUID)* PowerSettingGuid, uint* AcValueIndex);

///Retrieves the DC value index of the specified power setting.
///Params:
///    RootPowerKey = This parameter is reserved for future use and must be set to <b>NULL</b>.
///    SchemeGuid = The identifier of the power scheme.
///    SubGroupOfPowerSettingsGuid = The identifier of the subgroup of power settings. Use <b>NO_SUBGROUP_GUID</b> to refer to the default power
///                                  scheme. These values are the subgroup values included with Windows. <table> <tr> <th>Value</th> <th>Meaning</th>
///                                  </tr> <tr> <td width="40%"><a id="NO_SUBGROUP_GUID"></a><a id="no_subgroup_guid"></a><dl>
///                                  <dt><b>NO_SUBGROUP_GUID</b></dt> <dt>fea3413e-7e05-4911-9a71-700331f1c294</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup are part of the default power scheme. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_DISK_SUBGROUP"></a><a id="guid_disk_subgroup"></a><dl> <dt><b>GUID_DISK_SUBGROUP</b></dt>
///                                  <dt>0012ee47-9041-4b5d-9b77-535fba8b1442</dt> </dl> </td> <td width="60%"> Settings in this subgroup control
///                                  power management configuration of the system's hard disk drives. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_SYSTEM_BUTTON_SUBGROUP"></a><a id="guid_system_button_subgroup"></a><dl>
///                                  <dt><b>GUID_SYSTEM_BUTTON_SUBGROUP</b></dt> <dt>4f971e89-eebd-4455-a8de-9e59040e7347</dt> </dl> </td> <td
///                                  width="60%"> Settings in this subgroup control configuration of the system power buttons. </td> </tr> <tr> <td
///                                  width="40%"><a id="GUID_PROCESSOR_SETTINGS_SUBGROUP"></a><a id="guid_processor_settings_subgroup"></a><dl>
///                                  <dt><b>GUID_PROCESSOR_SETTINGS_SUBGROUP</b></dt> <dt>54533251-82be-4824-96c1-47b60b740d00</dt> </dl> </td> <td
///                                  width="60%"> Settings in this subgroup control configuration of processor power management features. </td> </tr>
///                                  <tr> <td width="40%"><a id="GUID_VIDEO_SUBGROUP"></a><a id="guid_video_subgroup"></a><dl>
///                                  <dt><b>GUID_VIDEO_SUBGROUP</b></dt> <dt>7516b95f-f776-4464-8c53-06167f40cc99</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup control configuration of the video power management features. </td> </tr> <tr> <td
///                                  width="40%"><a id="GUID_BATTERY_SUBGROUP"></a><a id="guid_battery_subgroup"></a><dl>
///                                  <dt><b>GUID_BATTERY_SUBGROUP</b></dt> <dt>e73a048d-bf27-4f12-9731-8b2076e8891f</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup control battery alarm trip points and actions. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_SLEEP_SUBGROUP"></a><a id="guid_sleep_subgroup"></a><dl> <dt><b>GUID_SLEEP_SUBGROUP</b></dt>
///                                  <dt>238C9FA8-0AAD-41ED-83F4-97BE242C8F20</dt> </dl> </td> <td width="60%"> Settings in this subgroup control
///                                  system sleep settings. </td> </tr> <tr> <td width="40%"><a id="GUID_PCIEXPRESS_SETTINGS_SUBGROUP"></a><a
///                                  id="guid_pciexpress_settings_subgroup"></a><dl> <dt><b>GUID_PCIEXPRESS_SETTINGS_SUBGROUP</b></dt>
///                                  <dt>501a4d13-42af-4429-9fd1-a8218c268e20</dt> </dl> </td> <td width="60%"> Settings in this subgroup control PCI
///                                  Express settings. </td> </tr> </table>
///    PowerSettingGuid = The identifier of the power setting.
///    DcValueIndex = A pointer to a variable that receives the DC value index.
///Returns:
///    Returns <b>ERROR_SUCCESS</b> (zero) if the call was successful, and a nonzero value if the call failed.
///    
@DllImport("POWRPROF")
uint PowerReadDCValueIndex(HKEY RootPowerKey, const(GUID)* SchemeGuid, const(GUID)* SubGroupOfPowerSettingsGuid, 
                           const(GUID)* PowerSettingGuid, uint* DcValueIndex);

///Retrieves the default AC index of the specified power setting.
///Params:
///    RootPowerKey = This parameter is reserved for future use and must be set to <b>NULL</b>.
///    SchemePersonalityGuid = The identifier for the scheme personality for this power setting. A power setting can have different default
///                            values depending on the power scheme personality.
///    SubGroupOfPowerSettingsGuid = The subgroup of power settings. This parameter can be one of the following values defined in WinNT.h. Use
///                                  <b>NO_SUBGROUP_GUID</b> to retrieve the setting for the default power scheme. <table> <tr> <th>Value</th>
///                                  <th>Meaning</th> </tr> <tr> <td width="40%"><a id="NO_SUBGROUP_GUID"></a><a id="no_subgroup_guid"></a><dl>
///                                  <dt><b>NO_SUBGROUP_GUID</b></dt> <dt>fea3413e-7e05-4911-9a71-700331f1c294</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup are part of the default power scheme. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_DISK_SUBGROUP"></a><a id="guid_disk_subgroup"></a><dl> <dt><b>GUID_DISK_SUBGROUP</b></dt>
///                                  <dt>0012ee47-9041-4b5d-9b77-535fba8b1442</dt> </dl> </td> <td width="60%"> Settings in this subgroup control
///                                  power management configuration of the system's hard disk drives. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_SYSTEM_BUTTON_SUBGROUP"></a><a id="guid_system_button_subgroup"></a><dl>
///                                  <dt><b>GUID_SYSTEM_BUTTON_SUBGROUP</b></dt> <dt>4f971e89-eebd-4455-a8de-9e59040e7347</dt> </dl> </td> <td
///                                  width="60%"> Settings in this subgroup control configuration of the system power buttons. </td> </tr> <tr> <td
///                                  width="40%"><a id="GUID_PROCESSOR_SETTINGS_SUBGROUP"></a><a id="guid_processor_settings_subgroup"></a><dl>
///                                  <dt><b>GUID_PROCESSOR_SETTINGS_SUBGROUP</b></dt> <dt>54533251-82be-4824-96c1-47b60b740d00</dt> </dl> </td> <td
///                                  width="60%"> Settings in this subgroup control configuration of processor power management features. </td> </tr>
///                                  <tr> <td width="40%"><a id="GUID_VIDEO_SUBGROUP"></a><a id="guid_video_subgroup"></a><dl>
///                                  <dt><b>GUID_VIDEO_SUBGROUP</b></dt> <dt>7516b95f-f776-4464-8c53-06167f40cc99</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup control configuration of the video power management features. </td> </tr> <tr> <td
///                                  width="40%"><a id="GUID_BATTERY_SUBGROUP"></a><a id="guid_battery_subgroup"></a><dl>
///                                  <dt><b>GUID_BATTERY_SUBGROUP</b></dt> <dt>e73a048d-bf27-4f12-9731-8b2076e8891f</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup control battery alarm trip points and actions. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_SLEEP_SUBGROUP"></a><a id="guid_sleep_subgroup"></a><dl> <dt><b>GUID_SLEEP_SUBGROUP</b></dt>
///                                  <dt>238C9FA8-0AAD-41ED-83F4-97BE242C8F20</dt> </dl> </td> <td width="60%"> Settings in this subgroup control
///                                  system sleep settings. </td> </tr> <tr> <td width="40%"><a id="GUID_PCIEXPRESS_SETTINGS_SUBGROUP"></a><a
///                                  id="guid_pciexpress_settings_subgroup"></a><dl> <dt><b>GUID_PCIEXPRESS_SETTINGS_SUBGROUP</b></dt>
///                                  <dt>501a4d13-42af-4429-9fd1-a8218c268e20</dt> </dl> </td> <td width="60%"> Settings in this subgroup control PCI
///                                  Express settings. </td> </tr> </table>
///    PowerSettingGuid = The identifier for the single power setting.
///    AcDefaultIndex = A pointer to a variable that receives the default AC index.
///Returns:
///    Returns <b>ERROR_SUCCESS</b> (zero) if the call was successful, and a nonzero value if the call failed.
///    
@DllImport("POWRPROF")
uint PowerReadACDefaultIndex(HKEY RootPowerKey, const(GUID)* SchemePersonalityGuid, 
                             const(GUID)* SubGroupOfPowerSettingsGuid, const(GUID)* PowerSettingGuid, 
                             uint* AcDefaultIndex);

///Retrieves the default DC index of the specified power setting.
///Params:
///    RootPowerKey = This parameter is reserved for future use and must be set to <b>NULL</b>.
///    SchemePersonalityGuid = The identifier of the scheme personality for this power setting. A power setting can have different default
///                            values depending on the power scheme personality.
///    SubGroupOfPowerSettingsGuid = The subgroup of power settings. This parameter can be one of the following values defined in WinNT.h. Use
///                                  <b>NO_SUBGROUP_GUID</b> to retrieve the setting for the default power scheme. <table> <tr> <th>Value</th>
///                                  <th>Meaning</th> </tr> <tr> <td width="40%"><a id="NO_SUBGROUP_GUID"></a><a id="no_subgroup_guid"></a><dl>
///                                  <dt><b>NO_SUBGROUP_GUID</b></dt> <dt>fea3413e-7e05-4911-9a71-700331f1c294</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup are part of the default power scheme. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_DISK_SUBGROUP"></a><a id="guid_disk_subgroup"></a><dl> <dt><b>GUID_DISK_SUBGROUP</b></dt>
///                                  <dt>0012ee47-9041-4b5d-9b77-535fba8b1442</dt> </dl> </td> <td width="60%"> Settings in this subgroup control
///                                  power management configuration of the system's hard disk drives. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_SYSTEM_BUTTON_SUBGROUP"></a><a id="guid_system_button_subgroup"></a><dl>
///                                  <dt><b>GUID_SYSTEM_BUTTON_SUBGROUP</b></dt> <dt>4f971e89-eebd-4455-a8de-9e59040e7347</dt> </dl> </td> <td
///                                  width="60%"> Settings in this subgroup control configuration of the system power buttons. </td> </tr> <tr> <td
///                                  width="40%"><a id="GUID_PROCESSOR_SETTINGS_SUBGROUP"></a><a id="guid_processor_settings_subgroup"></a><dl>
///                                  <dt><b>GUID_PROCESSOR_SETTINGS_SUBGROUP</b></dt> <dt>54533251-82be-4824-96c1-47b60b740d00</dt> </dl> </td> <td
///                                  width="60%"> Settings in this subgroup control configuration of processor power management features. </td> </tr>
///                                  <tr> <td width="40%"><a id="GUID_VIDEO_SUBGROUP"></a><a id="guid_video_subgroup"></a><dl>
///                                  <dt><b>GUID_VIDEO_SUBGROUP</b></dt> <dt>7516b95f-f776-4464-8c53-06167f40cc99</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup control configuration of the video power management features. </td> </tr> <tr> <td
///                                  width="40%"><a id="GUID_BATTERY_SUBGROUP"></a><a id="guid_battery_subgroup"></a><dl>
///                                  <dt><b>GUID_BATTERY_SUBGROUP</b></dt> <dt>e73a048d-bf27-4f12-9731-8b2076e8891f</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup control battery alarm trip points and actions. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_SLEEP_SUBGROUP"></a><a id="guid_sleep_subgroup"></a><dl> <dt><b>GUID_SLEEP_SUBGROUP</b></dt>
///                                  <dt>238C9FA8-0AAD-41ED-83F4-97BE242C8F20</dt> </dl> </td> <td width="60%"> Settings in this subgroup control
///                                  system sleep settings. </td> </tr> <tr> <td width="40%"><a id="GUID_PCIEXPRESS_SETTINGS_SUBGROUP"></a><a
///                                  id="guid_pciexpress_settings_subgroup"></a><dl> <dt><b>GUID_PCIEXPRESS_SETTINGS_SUBGROUP</b></dt>
///                                  <dt>501a4d13-42af-4429-9fd1-a8218c268e20</dt> </dl> </td> <td width="60%"> Settings in this subgroup control PCI
///                                  Express settings. </td> </tr> </table>
///    PowerSettingGuid = The identifier of the power setting.
///    DcDefaultIndex = A pointer to a variable that receives the default DC index.
///Returns:
///    Returns <b>ERROR_SUCCESS</b> (zero) if the call was successful, and a nonzero value if the call failed.
///    
@DllImport("POWRPROF")
uint PowerReadDCDefaultIndex(HKEY RootPowerKey, const(GUID)* SchemePersonalityGuid, 
                             const(GUID)* SubGroupOfPowerSettingsGuid, const(GUID)* PowerSettingGuid, 
                             uint* DcDefaultIndex);

///Sets the default AC index of the specified power setting.
///Params:
///    RootSystemPowerKey = This parameter is reserved for future use and must be set to <b>NULL</b>.
///    SchemePersonalityGuid = The identifier of the scheme personality for this power setting. A power setting can have different default
///                            values depending on the power scheme personality.
///    SubGroupOfPowerSettingsGuid = The subgroup of power settings. This parameter can be one of the following values defined in WinNT.h. Use
///                                  <b>NO_SUBGROUP_GUID</b> to refer to the default power scheme. <table> <tr> <th>Value</th> <th>Meaning</th> </tr>
///                                  <tr> <td width="40%"><a id="NO_SUBGROUP_GUID"></a><a id="no_subgroup_guid"></a><dl>
///                                  <dt><b>NO_SUBGROUP_GUID</b></dt> <dt>fea3413e-7e05-4911-9a71-700331f1c294</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup are part of the default power scheme. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_DISK_SUBGROUP"></a><a id="guid_disk_subgroup"></a><dl> <dt><b>GUID_DISK_SUBGROUP</b></dt>
///                                  <dt>0012ee47-9041-4b5d-9b77-535fba8b1442</dt> </dl> </td> <td width="60%"> Settings in this subgroup control
///                                  power management configuration of the system's hard disk drives. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_SYSTEM_BUTTON_SUBGROUP"></a><a id="guid_system_button_subgroup"></a><dl>
///                                  <dt><b>GUID_SYSTEM_BUTTON_SUBGROUP</b></dt> <dt>4f971e89-eebd-4455-a8de-9e59040e7347</dt> </dl> </td> <td
///                                  width="60%"> Settings in this subgroup control configuration of the system power buttons. </td> </tr> <tr> <td
///                                  width="40%"><a id="GUID_PROCESSOR_SETTINGS_SUBGROUP"></a><a id="guid_processor_settings_subgroup"></a><dl>
///                                  <dt><b>GUID_PROCESSOR_SETTINGS_SUBGROUP</b></dt> <dt>54533251-82be-4824-96c1-47b60b740d00</dt> </dl> </td> <td
///                                  width="60%"> Settings in this subgroup control configuration of processor power management features. </td> </tr>
///                                  <tr> <td width="40%"><a id="GUID_VIDEO_SUBGROUP"></a><a id="guid_video_subgroup"></a><dl>
///                                  <dt><b>GUID_VIDEO_SUBGROUP</b></dt> <dt>7516b95f-f776-4464-8c53-06167f40cc99</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup control configuration of the video power management features. </td> </tr> <tr> <td
///                                  width="40%"><a id="GUID_BATTERY_SUBGROUP"></a><a id="guid_battery_subgroup"></a><dl>
///                                  <dt><b>GUID_BATTERY_SUBGROUP</b></dt> <dt>e73a048d-bf27-4f12-9731-8b2076e8891f</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup control battery alarm trip points and actions. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_SLEEP_SUBGROUP"></a><a id="guid_sleep_subgroup"></a><dl> <dt><b>GUID_SLEEP_SUBGROUP</b></dt>
///                                  <dt>238C9FA8-0AAD-41ED-83F4-97BE242C8F20</dt> </dl> </td> <td width="60%"> Settings in this subgroup control
///                                  system sleep settings. </td> </tr> <tr> <td width="40%"><a id="GUID_PCIEXPRESS_SETTINGS_SUBGROUP"></a><a
///                                  id="guid_pciexpress_settings_subgroup"></a><dl> <dt><b>GUID_PCIEXPRESS_SETTINGS_SUBGROUP</b></dt>
///                                  <dt>501a4d13-42af-4429-9fd1-a8218c268e20</dt> </dl> </td> <td width="60%"> Settings in this subgroup control PCI
///                                  Express settings. </td> </tr> </table>
///    PowerSettingGuid = The identifier of the power setting.
///    DefaultAcIndex = The default AC index.
///Returns:
///    Returns <b>ERROR_SUCCESS</b> (zero) if the call was successful, and a nonzero value if the call failed.
///    
@DllImport("POWRPROF")
uint PowerWriteACDefaultIndex(HKEY RootSystemPowerKey, const(GUID)* SchemePersonalityGuid, 
                              const(GUID)* SubGroupOfPowerSettingsGuid, const(GUID)* PowerSettingGuid, 
                              uint DefaultAcIndex);

///Sets the default DC index of the specified power setting.
///Params:
///    RootSystemPowerKey = This parameter is reserved for future use and must be set to <b>NULL</b>.
///    SchemePersonalityGuid = The identifier of the scheme personality for this power setting. A power setting can have different default
///                            values depending on the power scheme personality.
///    SubGroupOfPowerSettingsGuid = The subgroup of power settings. This parameter can be one of the following values defined in WinNT.h. Use
///                                  <b>NO_SUBGROUP_GUID</b> to refer to the default power scheme. <table> <tr> <th>Value</th> <th>Meaning</th> </tr>
///                                  <tr> <td width="40%"><a id="NO_SUBGROUP_GUID"></a><a id="no_subgroup_guid"></a><dl>
///                                  <dt><b>NO_SUBGROUP_GUID</b></dt> <dt>fea3413e-7e05-4911-9a71-700331f1c294</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup are part of the default power scheme. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_DISK_SUBGROUP"></a><a id="guid_disk_subgroup"></a><dl> <dt><b>GUID_DISK_SUBGROUP</b></dt>
///                                  <dt>0012ee47-9041-4b5d-9b77-535fba8b1442</dt> </dl> </td> <td width="60%"> Settings in this subgroup control
///                                  power management configuration of the system's hard disk drives. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_SYSTEM_BUTTON_SUBGROUP"></a><a id="guid_system_button_subgroup"></a><dl>
///                                  <dt><b>GUID_SYSTEM_BUTTON_SUBGROUP</b></dt> <dt>4f971e89-eebd-4455-a8de-9e59040e7347</dt> </dl> </td> <td
///                                  width="60%"> Settings in this subgroup control configuration of the system power buttons. </td> </tr> <tr> <td
///                                  width="40%"><a id="GUID_PROCESSOR_SETTINGS_SUBGROUP"></a><a id="guid_processor_settings_subgroup"></a><dl>
///                                  <dt><b>GUID_PROCESSOR_SETTINGS_SUBGROUP</b></dt> <dt>54533251-82be-4824-96c1-47b60b740d00</dt> </dl> </td> <td
///                                  width="60%"> Settings in this subgroup control configuration of processor power management features. </td> </tr>
///                                  <tr> <td width="40%"><a id="GUID_VIDEO_SUBGROUP"></a><a id="guid_video_subgroup"></a><dl>
///                                  <dt><b>GUID_VIDEO_SUBGROUP</b></dt> <dt>7516b95f-f776-4464-8c53-06167f40cc99</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup control configuration of the video power management features. </td> </tr> <tr> <td
///                                  width="40%"><a id="GUID_BATTERY_SUBGROUP"></a><a id="guid_battery_subgroup"></a><dl>
///                                  <dt><b>GUID_BATTERY_SUBGROUP</b></dt> <dt>e73a048d-bf27-4f12-9731-8b2076e8891f</dt> </dl> </td> <td width="60%">
///                                  Settings in this subgroup control battery alarm trip points and actions. </td> </tr> <tr> <td width="40%"><a
///                                  id="GUID_SLEEP_SUBGROUP"></a><a id="guid_sleep_subgroup"></a><dl> <dt><b>GUID_SLEEP_SUBGROUP</b></dt>
///                                  <dt>238C9FA8-0AAD-41ED-83F4-97BE242C8F20</dt> </dl> </td> <td width="60%"> Settings in this subgroup control
///                                  system sleep settings. </td> </tr> <tr> <td width="40%"><a id="GUID_PCIEXPRESS_SETTINGS_SUBGROUP"></a><a
///                                  id="guid_pciexpress_settings_subgroup"></a><dl> <dt><b>GUID_PCIEXPRESS_SETTINGS_SUBGROUP</b></dt>
///                                  <dt>501a4d13-42af-4429-9fd1-a8218c268e20</dt> </dl> </td> <td width="60%"> Settings in this subgroup control PCI
///                                  Express settings. </td> </tr> </table>
///    PowerSettingGuid = The identifier of the power setting.
///    DefaultDcIndex = The default DC index.
///Returns:
///    Returns <b>ERROR_SUCCESS</b> (zero) if the call was successful, and a nonzero value if the call failed.
///    
@DllImport("POWRPROF")
uint PowerWriteDCDefaultIndex(HKEY RootSystemPowerKey, const(GUID)* SchemePersonalityGuid, 
                              const(GUID)* SubGroupOfPowerSettingsGuid, const(GUID)* PowerSettingGuid, 
                              uint DefaultDcIndex);


