<?php
// Przetwarzanie danych z formularza pierwszego
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $name = $_POST['name'];
  $email = $_POST['email'];

  // Możesz przeprowadzić walidację i inne operacje na danych

  // Przekierowanie do drugiego formularza
  header('Location: form_main.html');
  exit();
}
?>