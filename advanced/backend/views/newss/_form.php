<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use frontend\models\CategoryNews;


/** @var yii\web\View $this */
/** @var frontend\models\Newss $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="newss-form">

    <?php $form = ActiveForm::begin(['options'=>['enctype'=>'multipart/form-data']]); ?>


    <?= $form->field($model, 'category_id')->dropDownList(
                                       CategoryNews::find()
                                       ->select(['name','id'])
                                       ->indexBy('id')
                                       ->column(),['prompt'=>'Select CategoryNews']


    ); ?>


    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'body')->textarea(['rows' => 6]) ?>

    <?= $form ->field ($model,'image[]')->fileInput(['multiple'=>true,'accept'=>'image/*']);?>
    <?= $form ->field ($model,'status') ->dropDownList([1=>'publish', 0=>'not publish'])?>


    

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
