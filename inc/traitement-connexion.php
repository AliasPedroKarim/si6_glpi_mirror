	<?php
if(isset($_POST['connexion'])) {
   $mail = htmlspecialchars($_POST['email2']);
   $mdp = sha1($_POST['mdp2']);
   if(!empty($mail) AND !empty($mdp)) {
      $req = $bdd->prepare("SELECT * FROM clients WHERE adresse_email = ? AND mot_de_passe = ?");
      $req->execute(array($mail, $mdp));
      $userexiste = $req->rowCount();
      if($userexiste == 1) {
         $userinfo = $req->fetch();
         $_SESSION['id_client'] = $userinfo['id_client'];
         $_SESSION['prenom_client'] = $userinfo['prenom_client'];
         $_SESSION['adresse_email'] = $userinfo['adresse_email'];
         $_SESSION['administrateur'] = $userinfo['administrateur'];
      } else {
         $erreur2 = "Mauvais mail ou mot de passe !";
      }
   } else {
      $erreur2 = "Tous les champs doivent être complétés !";
   }
}
?>



<?php
		// Affiche l'erreur s'il y en a une
        if(isset($erreur2)){ 
			echo '<div class="alert alert-danger">';
			echo $erreur2;
			echo '</div>';
		}else{
		}
		?>