<?php

use frontend\models\Newss;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = '' . Yii::$app->user->identity->username . '';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="newss-index">

    <h1><?= Html::encode($this->title) ?></h1>

    

   
