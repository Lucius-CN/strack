<?php


use Phinx\Migration\AbstractMigration;

class ChangeMediaTableData extends AbstractMigration
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

    public function change()
    {
        $table = $this->table('strack_media');

        // 添加数据字段
        $table->addColumn('variable_id', 'integer', ['signed' => false, 'default' => 0, 'limit' => 11, 'comment' => '自定义字段ID']);

        $table->save();
    }
}
