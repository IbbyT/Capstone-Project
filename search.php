<!DOCTYPE html>
<html>
<head>
    <title>Search Computer Parts</title>
    <style>
        body { font-family: Arial; padding: 20px; background: #f4f4f4; }
        input[type="text"] { padding: 8px; width: 300px; }
        input[type="submit"] { padding: 8px 15px; }
        table { border-collapse: collapse; margin-top: 20px; width: 100%; }
        th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
    </style>
</head>
<body>

<h2>Search Computer Parts</h2>

<form method="GET" action="">
    <input type="text" name="query" placeholder="Search by name or category..." required>
    <input type="submit" value="Search">
</form>

<?php
// Replace with your DB credentials
$host = "localhost";
$username = "root";
$password = "";
$database = "your_database_name"; // Replace with your DB name

$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_GET['query'])) {
    $search = $conn->real_escape_string($_GET['query']);
    $sql = "SELECT * FROM ComputerParts 
            WHERE CategoryCode LIKE '%$search%' 
            OR CategoryName LIKE '%$search%'";

    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<table>
                <tr>
                    <th>ID</th>
                    <th>Category Code</th>
                    <th>Category Name</th>
                    <th>Price ($)</th>
                </tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr>
                    <td>{$row['CategoryID']}</td>
                    <td>{$row['CategoryCode']}</td>
                    <td>{$row['CategoryName']}</td>
                    <td>{$row['Price']}</td>
                  </tr>";
        }
        echo "</table>";
    } else {
        echo "<p>No results found for '<strong>$search</strong>'</p>";
    }
}

$conn->close();
?>

</body>
</html>