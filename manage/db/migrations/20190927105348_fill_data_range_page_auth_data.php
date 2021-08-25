<?php


use Phinx\Migration\AbstractMigration;

class FillDataRangePageAuthData extends AbstractMigration
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
     * Migrate Up.
     */
    public function up()
    {

        $rows = [
            [
                'name' => '跟我相关',
                'code' => 'related_to_me',
                'lang' => 'Related_To_Me',
                'page' => 'data_range',
                'param' => '',
                'category' => 'data_range',
                'type' => 'none',
                'menu' => '',
                'parent_id' => 0,
                'uuid' => Webpatser\Uuid\Uuid::generate()->string,
            ],
            [
                'name' => '我负责的团队',
                'code' => 'my_charge_team',
                'lang' => 'My_Charge_Team',
                'page' => 'data_range',
                'param' => '',
                'category' => 'data_range',
                'type' => 'none',
                'menu' => '',
                'parent_id' => 0,
                'uuid' => Webpatser\Uuid\Uuid::generate()->string,
            ],
            [
                'name' => '所有数据',
                'code' => 'all_data',
                'lang' => 'All_Data',
                'page' => 'data_range',
                'param' => '',
                'category' => 'data_range',
                'type' => 'none',
                'menu' => '',
                'parent_id' => 0,
                'uuid' => Webpatser\Uuid\Uuid::generate()->string,
            ]
        ];

        $this->table('strack_page_auth')->insert($rows)->save();

    }

    /**
     * Migrate Down.
     */
    public function down()
    {
        $this->execute('DELETE FROM strack_page_auth');
    }
}
