<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\helpers\Url;
use yii\widgets\LinkPager;

use yii\widgets\ListView;
/** @var yii\web\View $this */
/** @var frontend\models\Newss $model */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Newsses'];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>

<article class="artical">

    <?php if(empty($model->image)){

$img=Url::to('@web/img/elzero.jpg');
}
else{
$img=Url::to('@web/img/upload/'.$model->image);
}?>
    <div class="immg"><?=Html::img($img)?></div>

    <h1><?=$model->title?></h1>
    <p><?=$model->categoryNews->name?></p>
    <p><?=$model->body?></p>


   






</article>





<!-- <div class="newss-view">

    <?= Html::encode($this->title) ?>

    

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'image',
            'title',
            
            'categoryNews.name',
            
            'body:ntext',
            
            
        ],
    ]) ?>

</div> -->
