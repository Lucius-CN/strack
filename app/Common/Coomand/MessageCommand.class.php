<?php

namespace Common\Command;

use Think\Console\Command;
use Think\Console\Input;
use Think\Console\Output;

class MessageCommand extends Command
{
    protected function configure()
    {
        $this->setName('message')
            ->setDescription('Implementation of message')
            ->addArgument('param');
    }

    /**
     * 执行添加
     * @param Input $input
     * @param Output $output
     * @return int|null|void
     */
    protected function execute(Input $input, Output $output)
    {
        $arg = $input->getArguments();
        var_dump(json_decode($arg['param'], true));
    }
}
