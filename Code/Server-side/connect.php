<?php

function get_info_of_fixed_menu($id_menu,$table,$conn){

  $arr=array();
  $sql = "SELECT * FROM ".$table.", ".$table."Menu WHERE ".$table."Menu.menu = ".$id_menu." AND ".$table.".id = ".$table."Menu.".lcfirst($table);
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
      // output data of each row
      while($row = $result->fetch_assoc()) {
        array_push($arr,$row);
      }
      //echo json_encode($arr);
  } else {
      echo "";
  }
  return $arr;
}

// function get_info_of_complete_menu($id_menu,$table,$conn){
//
//   $arr=array();
//   $sql = "SELECT * FROM ".$table.", ".$table."Menu WHERE ".$table."Menu.menuCompleto = ".$id_menu." AND ".$table.".id = ".$table."Menu.".lcfirst($table)." GROUP BY id";
//   $result = $conn->query($sql);
//
//   if ($result->num_rows > 0) {
//       // output data of each row
//       while($row = $result->fetch_assoc()) {
//         array_push($arr,$row);
//       }
//       //echo json_encode($arr);
//   } else {
//       echo "";
//   }
//   return $arr;
// }

function get_info_of_complete_menu($id_menu,$table,$conn){
  $arr=array();
  $sql = "SELECT * FROM ".$table.", ".$table."MenuCompleto WHERE ".$table."MenuCompleto.menucompleto = ".$id_menu." AND ".$table.".id = ".$table."MenuCompleto.".lcfirst($table);
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
      // output data of each row
      while($row = $result->fetch_assoc()) {
        array_push($arr,$row);
      }
      //echo json_encode($arr);
  } else {
      echo "";
  }
  return $arr;



}

function calculate_price_of_menu($antipasti,$primi,$secondi,$dolci){
    $price = 0;
    foreach ($antipasti as &$a) {
      $price = $price + $a['price'];
    }
    foreach ($primi as &$a) {
      $price = $price + $a['price'];
    }
    foreach ($secondi as &$a) {
      $price = $price + $a['price'];
    }
    foreach ($dolci as &$a) {
      $price = $price + $a['price'];
    }
    return $price;
}

function get_complete_menu($menu_id,$conn){
  $menu =  array();
  $menu['antipasti'] = get_info_of_complete_menu($menu_id,"Antipasto",$conn);
  $menu['primi'] = get_info_of_complete_menu($menu_id,"Primo",$conn);
  $menu['secondi'] = get_info_of_complete_menu($menu_id,"Secondo",$conn);
  $menu['dolci'] = get_info_of_complete_menu($menu_id,"Dolce",$conn);
  return $menu;
}

function get_orari_by_id($id,$conn)
{
  $arr=array();
  $sql = "SELECT * FROM RestaurantOrario,Orario WHERE RestaurantOrario.restaurant = ".$id." AND RestaurantOrario.orario = Orario.id ";
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
      // output data of each row
      while($row = $result->fetch_assoc()) {
        array_push($arr,$row);
      }
      //echo json_encode($arr);
  } else {
      echo "";
  }
  return $arr;

}

function get_fixed_menu($menu_id,$conn){
  $menu =  array();
  $menu['antipasti'] = get_info_of_fixed_menu($menu_id,"Antipasto",$conn);
  $menu['primi'] = get_info_of_fixed_menu($menu_id,"Primo",$conn);
  $menu['secondi'] = get_info_of_fixed_menu($menu_id,"Secondo",$conn);
  $menu['dolci'] = get_info_of_fixed_menu($menu_id,"Dolce",$conn);
  $menu['price'] = calculate_price_of_menu($menu['antipasti'],$menu['primi'],  $menu['secondi'],$menu['dolci']);
  return $menu;
}

function get_fixed_menus_of_restaurant($restaurant_id,$conn){
  $sql = "SELECT * FROM Menu,MenuRestaurant WHERE MenuRestaurant.restaurant = ".$restaurant_id." AND MenuRestaurant.menu = Menu.id";
  $result = $conn->query($sql);
  $arr=array();
  if ($result->num_rows > 0) {
      // output data of each row
      while($row = $result->fetch_assoc()) {
        array_push($arr,$row);
      }
      //echo json_encode($arr);
  } else {
      echo "";
  }
  return $arr;
}


function get_complete_menus_of_restaurant($restaurant_id,$conn){
  $sql = "SELECT DISTINCT * FROM MenuCompleto,MenuCompletoRestaurant WHERE MenuCompletoRestaurant.restaurant = ".$restaurant_id." AND MenuCompletoRestaurant.menuCompleto = MenuCompleto.id";
  $result = $conn->query($sql);
  $arr=array();
  if ($result->num_rows > 0) {
      // output data of each row
      while($row = $result->fetch_assoc()) {
        return $row;
      }
      //echo json_encode($arr);
  } else {
      echo "";
  }

}

function format_coordinate($restaurant){
  $arr=array();
  $lat = $restaurant['latitude'];
  $lng = $restaurant['longitude'];
  $coordinate  = array('latitude' => $lat,'longitude' => $lng);
  unset($restaurant['latitude']);
  unset($restaurant['longitude']);
  $restaurant['coordinate']= $coordinate;
  return $restaurant;
}

$servername = "localhost";
$username = "id501917_hci";
$password = "31393a.";
$dbname = "id501917_appetizing";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);



// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

//echo json_encode(get_fixed_menu(5,$conn));


$sql = "SELECT * FROM Restaurant";
$result = $conn->query($sql);

$restaurants = array('restaurants' => array());
$i=0;
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {

      $menu_list = array('menus' =>  get_fixed_menus_of_restaurant($row['id'], $conn ), 'complete_menu' => get_complete_menus_of_restaurant($row['id'], $conn ),'orari'=>get_orari_by_id($row['id'], $conn) );

      foreach ($menu_list['menus'] as &$menu) {
        $menu = array_merge($menu, get_fixed_menu($menu['id'],$conn));
      }

      if (isset($menu_list['complete_menu']['id'])) {
        $menu_list['complete_menu'] =  array_merge($menu_list['complete_menu'],get_complete_menu($menu_list['complete_menu']['id'],$conn));
      }



      array_push($restaurants['restaurants'],array_merge(format_coordinate($row),$menu_list));

    }
    echo json_encode($restaurants);
} else {
    echo "";
}
$conn->close();
?>
