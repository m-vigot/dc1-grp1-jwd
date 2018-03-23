<?php
require_once 'functions.php';
require_once 'model/database.php';

$id = $_GET["id"];

$photo = getPhoto($id);

$liste_commentaires = getAllCommentairesByPhoto($id);


getHeader($photo["titre"], "Description de la photo");
?>

<header>
    <div class="row col_center">
        <?php getMenu(); ?>
    </div>
</header>

<h1><?php echo $photo["titre"]; ?></h1>
<img src="images/<?php echo $photo["image"] ?>">

<h3><?php echo $photo["description"] ;?></h3>

<p><?php echo $photo["date_creation_format"] ;?></p>

<form method="post" action="insert-commentaire.php">
    <textarea name="commentaire"></textarea>
    <input type="hidden" name="photo_id" value="<?php echo $id;?>">
    <input type="submit">
</form>


<section class="commentaires">
    <?php foreach ($liste_commentaires as $commentaires) : ?>
        <article>
            <time><?php echo $commentaires["date_creation"]; ?></time>
            <p><?php echo $commentaires["contenu"]; ?></p>
        </article>
    <?php endforeach; ?>
</section>

<?php getFooter(); ?>