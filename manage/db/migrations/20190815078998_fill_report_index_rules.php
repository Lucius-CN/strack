<?php


use Phinx\Migration\AbstractMigration;

class fillReportIndexRules extends AbstractMigration
{
    /**
     * Change Method.
     *
     * Write your reversible migrations using this method.
     *
     * More information on writing migrations is available here:
     * http://docs.phinx.org/en/latest/migrations.html#the-abstractmigration-class
     *
     * The following commands can be used in this method and Phinx will
     * automatically reverse them when rolling back:
     *
     *    createTable
     *    renameTable
     *    addColumn
     *    renameColumn
     *    addIndex
     *    addForeignKey
     *
     * Remember to call "create()" or "update()" and NOT "save()" when working
     * with the Table class.
     */

    /**
     * 保存权限组
     * @param $data
     * @param int $parentId
     */
    protected function savePageAuth($data, $parentId = 0)
    {
        $pageAuthTable = $this->table('strack_page_auth');
        $pageLinkAuthTable = $this->table('strack_page_link_auth');

        $data["page"]["parent_id"] = $parentId;

        $pageAuthTable->insert($data["page"])->save();
        $query = $this->fetchRow('SELECT max(`id`) as id FROM strack_page_auth');

        if (!empty($data["auth_group"])) {
            foreach ($data["auth_group"] as $authGroup) {
                $authGroup["page_auth_id"] = $query["id"];
                $pageLinkAuthTable->insert($authGroup)->save();
            }
        }

        if (!empty($data["list"])) {
            foreach ($data["list"] as $children) {
                $this->savePageAuth($children, $query["id"]);
            }
        }
    }

    /**
     * 绑定权限组
     * @param $id
     * @throws Exception
     */
    public function bindAuthGroup($id)
    {

        $authGroupNode = [
            "auth_group_id" => $id,
            "auth_node_id" => 739,
            "uuid" => Webpatser\Uuid\Uuid::generate()->string
        ];

        $this->table('strack_auth_group_node')->insert($authGroupNode)->save();
    }


    /**
     * 保存权限组
     * @param $data
     */
    protected function saveAuthGroup($data)
    {
        // 初始化table
        $authGroupTable = $this->table('strack_auth_group');
        $authGroupNodeTable = $this->table('strack_auth_group_node');

        $authGroupTable->insert($data["group"])->save();
        $query = $this->fetchRow('SELECT max(`id`) as id FROM strack_auth_group');

        foreach ($data["rules"] as $authGroupNode) {
            $authGroupNode["auth_group_id"] = $query["id"];
            $authGroupNodeTable->insert($authGroupNode)->save();
        }
    }


    /**
     * @throws Exception
     */
    public function up()
    {
        // 添加权限节点
        $authNodes = [
            [
                'name' => '访问团队看板页面',
                'code' => 'index',
                'lang' => 'index',
                'type' => 'view',
                'module' => 'page',
                'project_id' => 0,
                'module_id' => 0,
                'public' => 'no',
                'rules' => 'Home/Report/index',
                'uuid' => Webpatser\Uuid\Uuid::generate()->string
            ],
            [
                'name' => '获取队友计划数据路由',
                'code' => 'get_user_planned_data',
                'lang' => 'Get_User_Planned_Data',
                'type' => 'route',
                'module' => 'page',
                'project_id' => 0,
                'module_id' => 0,
                'rules' => 'Home/Report/getUserPlannedData',
                'uuid' => Webpatser\Uuid\Uuid::generate()->string
            ]
        ];

        foreach ($authNodes as $authNode) {
            $this->table('strack_auth_node')->insert($authNode)->save();
        }

        // 绑定权限分组
        /**
         * 我的日程
         */
        $scheduleButtonRows = [
            'group' => [
                'name' => '团队看板',
                'code' => 'report_index',
                'lang' => 'Team_Kanban',
                'type' => 'view',
                'uuid' => Webpatser\Uuid\Uuid::generate()->string
            ],
            'rules' => [
                [ // 团队看板页面
                    'auth_group_id' => 0,
                    'auth_node_id' => 744,
                    'uuid' => Webpatser\Uuid\Uuid::generate()->string
                ],
                [ // 获取队友计划数据路由
                    'auth_group_id' => 0,
                    'auth_node_id' => 745,
                    'uuid' => Webpatser\Uuid\Uuid::generate()->string
                ]
            ]
        ];
        $this->saveAuthGroup($scheduleButtonRows);

        /**
         * 消息盒子
         */
        $messageBoxRows = [
            'page' => [
                'name' => '团队看板',
                'code' => 'report_index',
                'lang' => 'Team_Kanban',
                'page' => 'home_report_index',
                'menu' => 'top_main_menu',
                'category' => 'Top_Main_Menu',
                'param' => '',
                'type' => 'belong',
                'parent_id' => 0,
                'uuid' => Webpatser\Uuid\Uuid::generate()->string
            ],
            'auth_group' => [
                [
                    'page_auth_id' => 0,
                    'auth_group_id' => 489,
                    'uuid' => Webpatser\Uuid\Uuid::generate()->string
                ]
            ],
            'list' => [
                [
                    'page' => [
                        'name' => '团队看板访问',
                        'code' => 'visit',
                        'lang' => 'Visit',
                        'page' => 'home_report_index',
                        'param' => '',
                        'type' => 'belong',
                        'parent_id' => 0,
                        'uuid' => Webpatser\Uuid\Uuid::generate()->string
                    ],
                    'auth_group' => [
                        [
                            'page_auth_id' => 0,
                            'auth_group_id' => 489,
                            'uuid' => Webpatser\Uuid\Uuid::generate()->string
                        ]
                    ]
                ]
            ]
        ];

        $this->savePageAuth($messageBoxRows);
    }

    /**
     * Migrate Down.
     */
    public function down()
    {
        $this->execute('DELETE FROM strack_auth_group_node');
        $this->execute('DELETE FROM strack_auth_node');
        $this->execute('DELETE FROM strack_auth_group');
    }
}
