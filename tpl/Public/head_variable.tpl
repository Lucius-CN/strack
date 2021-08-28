<include file="tpl/Public/lang.tpl" />
<script type="text/javascript">
    var StrackPHP = {
        'ROOT': '__ROOT__',
        'MODULE': '__MODULE__',
        'PUBLIC': '__PUBLIC__',
        'UPLOADS': '__UPLOADS__',
        'IMG': '__PUBLIC__/images',
        'BASE_URL':  '__BASE_URL__',
        'JS': '__COM_JS__',
        'INDEX': '{:U("/index")}',
        'Belong_System' : '{$belong_system}',
        'Project_Url': '{:U("/project")}',
        'Page_Search': '{:U('/search')}',
        'profile': '{:U('/profile')}',
        'details': '{:U('/details')}',
        'getUserInfo': '{:U("Home/User/getUserInfo")}',
        'getViewData': '{:U("Home/View/getViewData")}',
        'getAdvanceFilterFields': '{:U("Home/View/getAdvanceFilterFields")}',
        'getSortFields': '{:U("Home/View/getSortFields")}',
        'whetherSupportHorizontalRelation': '{:U("Home/View/whetherSupportHorizontalRelation")}',
        'getHorizontalRelationList': '{:U("Home/Widget/getHorizontalRelationList")}',
        'getWidgetData': '{:U("Home/Widget/getWidgetData")}',
        'getEntityStepList': '{:U("Home/Widget/getEntityStepList")}',
        'getScopeAction': '{:U("Home/Widget/getScopeAction")}',
        'getInputMaskList': '{:U("Home/Widget/getInputMaskList")}',
        'getDateboxType': '{:U("Home/Widget/getDateboxType")}',
        'getNoteWidgetData': '{:U("Home/Widget/getNoteWidgetData")}',
        'updateWidget': '{:U("Home/Widget/updateWidget")}',
        'updateItemDialog': '{:U('Home/Widget/updateItemDialog')}',
        'getSmtpSecureList': '{:U("Home/Widget/getSmtpSecureList")}',
        'addCustomFields': '{:U('Home/View/addCustomFields')}',
        'modifyCustomFields': '{:U('Home/View/modifyCustomFields')}',
        'deleteCustomField': '{:U('Home/View/deleteCustomField')}',
        'getTabConfig': '{:U("Home/View/getTabConfig")}',
        'getFields': '{:U('Home/View/getFields')}',
        'getModuleBreadcrumb': '{:U("Home/View/getModuleBreadcrumb")}',
        'getRelationshipModuleList': '{:U('Home/View/getRelationshipModuleList')}',
        'getProjectInfo': '{:U("Home/Project/getProjectInfo")}',
        'addProjectDisk': '{:U("Home/Project/addProjectDisk")}',
        'addProjectMoreDisk': '{:U("Home/Project/addProjectMoreDisk")}',
        'deleteProjectMoreDisk': '{:U("Home/Project/deleteProjectMoreDisk")}',
        'clearMediaThumbnail': '{:U("Home/Media/clearMediaThumbnail")}',
        'getMediaUploadServer': '{:U("Home/Media/getMediaUploadServer")}',
        'saveMediaData':  '{:U("Home/Media/saveMediaData")}',
        'updateUserInfo': '{:U("Home/User/updateUserInfo")}',
        'getIconList': '{:U("Home/Widget/getIconList")}',
        'getFilterColorList': '{:U("Home/Widget/getFilterColorList")}',
        'getStickType': '{:U("Home/Widget/getStickType")}',
        'getPublicType': '{:U("Home/Widget/getPublicType")}',
        'getFilterList': '{:U("Home/Filter/getFilterList")}',
        'getFilterSingle': '{:U("Home/Filter/getFilterSingle")}',
        'getGridFilterBarData': '{:U("Home/Filter/getGridFilterBarData")}',
        'saveFilter': '{:U("Home/Filter/saveFilter")}',
        'deleteFilter': '{:U("Home/Filter/deleteFilter")}',
        'stickFilter': '{:U("Home/Filter/stickFilter")}',
        'getStatusCorresponds': '{:U("Home/Widget/getStatusCorresponds")}',
        'getSortList': '{:U("Home/Widget/getSortList")}',
        'saveUserFilterKeepConfig': '{:U("Home/User/saveUserFilterKeepConfig")}',
        'getGridPanelData': '{:U("Home/View/getGridPanelData")}',
        'getGridColumns': '{:U("Home/View/getGridColumns")}',
        'getListViewConfig': '{:U("Home/View/getListViewConfig")}',
        'saveView': '{:U("Home/View/saveView")}',
        'saveDefaultView': '{:U("Home/View/saveDefaultView")}',
        'saveAsView': '{:U("Home/View/saveAsView")}',
        'modifyView': '{:U("Home/View/modifyView")}',
        'deleteView': '{:U("Home/View/deleteView")}',
        'toggleView': '{:U('Home/View/toggleView')}',
        'getCustomFieldsList': '{:U('Home/View/getCustomFieldsList')}',
        'addNote': '{:U("Home/Note/addNote")}',
        'batchAddNote': '{:U("Home/Note/batchAddNote")}',
        'modifyNote': '{:U("Home/Note/modifyNote")}',
        'deleteNote': '{:U("Home/Note/deleteNote")}',
        'getNoteListData': '{:U("Home/Note/getNoteListData")}',
        'getOneNoteData': '{:U("Home/Note/getOneNoteData")}',
        'getAtUserList': '{:U("Home/Note/getAtUserList")}',
        'uploadNoteTempImage': '{:U("Home/Media/uploadNoteTempImage")}',
        'deleteNoteTempImage': '{:U("Home/Media/deleteNoteTempImage")}',
        'getTopMenuData': '{:U("Home/View/getTopMenuData")}',
        'getProjectStatusCombobox': '{:U("Home/Widget/getProjectStatusCombobox")}',
        'getXzProjectCombobox': '{:U("Home/Widget/getXzProjectCombobox")}',
        'getDataGridSliderTableConfig': '{:U("Home/View/getDataGridSliderTableConfig")}',
        'getDiskCombobox': '{:U("Home/Widget/getDiskCombobox")}',
        'getModuleItemHistory': '{:U("Home/EventLog/getModuleItemHistory")}',
        'getDataGridSliderHistoryData': '{:U("Home/EventLog/getDataGridSliderHistoryData")}',
        'getTopRightData': '{:U("Home/Widget/getTopRightData")}',
        'getStatusList': '{:U("Home/Widget/getStatusList")}',
        'commonAddItem': '{:U("Home/Widget/commonAddItem")}',
        'getModuleItemInfo': '{:U("Home/Widget/getModuleItemInfo")}',
        'getActionModuleData': '{:U("Home/Widget/getActionModuleData")}',
        'getSidebarActionData': '{:U("Home/Widget/getSidebarActionData")}',
        'setActionCommonStatus': '{:U("Home/Widget/setActionCommonStatus")}',
        'getLogServerConfig': '{:U("Home/Widget/getLogServerConfig")}',
        'getTagTypeList': '{:U("Home/Widget/getTagTypeList")}',
        'getDataGirdSliderData': '{:U("Home/Widget/getDataGirdSliderData")}',
        'deleteGridData': '{:U("Home/Widget/deleteGridData")}',
        'getHRelationDestData': '{:U("Home/Widget/getHRelationDestData")}',
        'modifyHRelationDestData': '{:U("Home/Widget/modifyHRelationDestData")}',
        'getHasManyRelationData': '{:U("Home/Widget/getHasManyRelationData")}',
        'modifyHasManyRelationData': '{:U("Home/Widget/modifyHasManyRelationData")}',
        'saveDialogSetting': '{:U("Home/User/saveDialogSetting")}',
        'exportExcel': '{:U("Home/Excel/exportExcel")}',
        'formatExcelPasteData': '{:U("Home/Excel/formatExcelPasteData")}',
        'formatExcelFileData': '{:U("Home/Excel/formatExcelFileData")}',
        'submitImportExcelData': '{:U("Home/Excel/submitImportExcelData")}',
        'batchSaveEntityBase': '{:U("Home/Entity/batchSaveEntityBase")}',
        'downloadExcel': '{:U("Home/Download/excel")}',
        'getSideTimelogMyTimer': '{:U("Home/Timelog/getSideTimelogMyTimer")}',
        'getSideTimelogMyData': '{:U("Home/Timelog/getSideTimelogMyData")}',
        'getTimeLogIssuesCombobox': '{:U("Home/Timelog/getTimeLogIssuesCombobox")}',
        'addTimelogTimer': '{:U("Home/Timelog/addTimelogTimer")}',
        'deleteTimelog': '{:U("Home/Timelog/deleteTimelog")}',
        'stopTimelogTimer':'{:U("Home/Timelog/stopTimelogTimer")}',
        'startOrStopTimelog': '{:U("Home/Timelog/startOrStopTimelog")}',
        'getReviewStepConfig' : '{:U("Home/Template/getReviewStepConfig")}',
        'getReviewStatusCombobox': '{:U("Home/Template/getReviewStatusCombobox")}',
        'getTemplateConfig': '{:U("Home/Template/getTemplateConfig")}',
        'modifyUserConfig': '{:U("Home/User/modifyUserConfig")}',
        'modifyUserTemplateConfig': '{:U("Home/User/modifyUserTemplateConfig")}',
        'getModuleTabList': '{:U("Home/Template/getModuleTabList")}',
        'modifyTemplateConfig': '{:U("Home/Template/modifyTemplateConfig")}',
        'getSideInboxData': '{:U("Home/Message/getSideInboxData")}',
        'readMessage': '{:U("Home/Message/readMessage")}',
        'getItemOnsetLinkData' : '{:U("Home/Onset/getItemOnsetLinkData")}',
        'getOnsetInfoData': '{:U("Home/Onset/getOnsetInfoData")}',
        'getOnsetAttachment': '{:U("Home/Onset/getOnsetAttachment")}',
        'getProjectOnsetList': '{:U("Home/Onset/getProjectOnsetList")}',
        'addEntityLinkOnset': '{:U("Home/Onset/addEntityLinkOnset")}',
        'getDetailsModuleColumns': '{:U("Home/Template/getDetailsModuleColumns")}',
        'getTemplateUserConfig': '{:U("Home/Template/getTemplateUserConfig")}',
        'getDetailTopThumb': '{:U("Home/Media/getDetailTopThumb")}',
        'getDataGridSliderOtherPageData' : '{:U("Home/Widget/getDataGridSliderOtherPageData")}',
        'getCustomFieldsConfig' : '{:U("Home/Widget/getCustomFieldsConfig")}',
        'getDetailGridData': '{:U("Home/Widget/getDetailGridData")}',
        'getGridCollaborators': '{:U("Home/Widget/getGridCollaborators")}',
        'getMyScheduleData': '{:U("Home/Widget/getMyScheduleData")}',
        'updateBaseConfirmationData': '{:U("Home/Widget/updateBaseConfirmationData")}',
        'getCalendarFilterConfig': '{:U("Home/Widget/getCalendarFilterConfig")}',
        'addTaskPlan': '{:U("Home/Schedule/addTaskPlan")}',
        'lockTaskPlan': '{:U("Home/Schedule/lockTaskPlan")}',
        'deleteTaskPlan': '{:U("Home/Schedule/deleteTaskPlan")}',
        'frontendCheckCouldDiskServer': '{:U("Home/View/frontendCheckCouldDiskServer")}'
    };
</script>
<script type="text/javascript" src="__COM_JS__/jquery.min.js"></script>
<if condition="$is_dev == '1' ">
    <script type="text/javascript" src="__COM_JS__/src/strackui.js"></script>
    <else/>
    <script type="text/javascript" src="__COM_JS__/build/strackui.min.js"></script>
</if>
<if condition="$is_dev == '1' ">
    <script type="text/javascript" src="__JS__/src/strackui.ext.js"></script>
    <script type="text/javascript" src="__JS__/src/scheduler/strack.calendar.js"></script>
    <else/>
    <script type="text/javascript" src="__JS__/src/strackui.ext.js"></script>
    <script type="text/javascript" src="__JS__/build/scheduler/strack.calendar.min.js"></script>
</if>


<script type="text/javascript" src="__COM_JS__/src/kanban.js"></script>

<script type="text/javascript" src="__JSUI_LANG__/<?php echo get_cookies_Lang(); ?>.js"></script>
<if condition="$is_dev == '1' ">
    <script type="text/javascript" src="__COM_JS__/src/strack.js"></script>
    <else/>
    <script type="text/javascript" src="__COM_JS__/build/strack.min.js"></script>
</if>
<if condition="$is_dev == '1' ">
    <script type="text/javascript" src="__COM_JS__/src/datagrid.scrollview.js"></script>
    <script type="text/javascript" src="__COM_JS__/src/datagrid.kanbanview.js"></script>
    <else/>
    <script type="text/javascript" src="__COM_JS__/build/datagrid.scrollview.min.js"></script>
    <script type="text/javascript" src="__COM_JS__/build/datagrid.kanbanview.min.js"></script>
</if>
<if condition="$is_dev == '1' ">
    <script type="text/javascript" src="__COM_JS__/src/centrifuge.js"></script>
    <else/>
    <script type="text/javascript" src="__COM_JS__/build/centrifuge.min.js"></script>
</if>
