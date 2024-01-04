<?php
use yii\helpers\Url;

/** @var yii\web\View $this */
use frontend\views\site;


$this->title = 'My Yii Application';
?>
<div class="site-index">

    
    <div class="myjob">

        <div class="row">
            <div class="col-lg-4">
                <h2>add category news</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>
                    
        <p><a class="btn btn-lg btn-success" href="<?=Url::toRoute('catgory/index')?>">Add new category</a></p>
            </div>
            <div class="col-lg-4">
                <h2>add news</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                    <p><a class="btn btn-lg btn-success" href="<?=Url::toRoute('newss/index')?>">Add new news</a></p>
            </div>
            <div class="col-lg-4">
                <h2>see view vistor</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                    <p><a class="btn btn-lg btn-success" href='#'>view vistor page </a></p>
            </div>
           
        </div>

    </div>
</div>
