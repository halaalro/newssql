<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var frontend\models\Newss $model */

$this->title = 'Update Newss: ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Newsses', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="newss-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
