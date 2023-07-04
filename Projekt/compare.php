<?php
// Dane połączenia z bazą danych
$host = 'localhost';  // Adres hosta bazy danych
$username = 'root';  // Nazwa użytkownika bazy danych
$password = '';  // Hasło do bazy danych
$database = 'test';  // Nazwa bazy danych

// Tworzenie połączenia z bazą danych
$connection = mysqli_connect($host, $username, $password, $database);

// Sprawdzenie czy połączenie zostało poprawnie ustanowione
if (!$connection) {
    die('Nie udało się połączyć z bazą danych: ' . mysqli_connect_error());
}

$selectedLarry = $_POST['larry'];
$selectedJimmy = $_POST['jimmy'];
$selectedCharacter = $_POST['character'];

// Tablica z pytaniami i kolumnami w bazie danych
$questions = [
    'twd_larry' => 'The Walking Dead',
    'rdr2_jimmy' => 'Red Dead Redemption 2',
    'gta5_character' => 'Grand Theft Auto 5',
    // Dodaj więcej pytań i odpowiadających im kolumn w bazie danych
];


echo "<table>";
echo "<tr><th>Question about:</th><th>Total users in database</th><th>Total users who chose same answers as you</th><th>Percentage</th></tr>";

foreach ($questions as $column => $question) {
    // Zapytanie dla bieżącego pytania i wartości
    $selectedValue = ($column === 'twd_larry') ? $selectedLarry : (($column === 'rdr2_jimmy') ? $selectedJimmy : $selectedCharacter);

    $query = "SELECT * FROM users WHERE $column = '$selectedValue'";
    $result = mysqli_query($connection, $query);

    echo "<tr>";
    echo '<td><b>'. $question . '</b>: <br> Your answer:<b> <span style="color: Lime;">' . ucfirst($selectedValue) . '</span></b></td>';
    echo "<td>";

    if ($result) {
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $userId = $row['id'];
                $username = $row['username'];
                $selectedValue = $row[$column];

                // echo "$userId<br>";
            }
            echo "<strong>150</strong>";
        } else {
            echo "No matching users found for the selected $question!";
        }
    } else {
        echo "Error: " . mysqli_error($connection);
    }


    echo "</td>";

    // Obliczanie total i percentage
    $query_total = "SELECT COUNT(*) AS total FROM users WHERE $column = '$selectedValue'";
    $result_total = mysqli_query($connection, $query_total);

    if ($result_total) {
        $row = mysqli_fetch_assoc($result_total);
        $total = $row['total'];

        echo "<td class='total'>$total</td>";

        $query_totalRecords = "SELECT COUNT(*) AS totalRecords FROM users";
        $result_totalRecords = mysqli_query($connection, $query_totalRecords);

        if ($result_totalRecords) {
            $row = mysqli_fetch_assoc($result_totalRecords);
            $totalRecords = $row['totalRecords'];
            $percentage = number_format(($total / $totalRecords) * 100, 2);

            echo "<td class='percentage'><strong>$percentage%</strong></td>";
        } else {
            echo '<td colspan="2">Query error: ' . mysqli_error($connection) . '</td>';
        }
    } else {
        echo '<td colspan="2">Query error: ' . mysqli_error($connection) . '</td>';
    }

    echo "</tr>";
}

$query_combined = "SELECT COUNT(*) AS total_combined FROM users WHERE twd_larry = '$selectedLarry' AND rdr2_jimmy = '$selectedJimmy' AND gta5_character = '$selectedCharacter'";
$result_combined = mysqli_query($connection, $query_combined);

if ($result_combined) {
    $row = mysqli_fetch_assoc($result_combined);
    $total_combined = $row['total_combined'];

    echo "<tr><td><strong>All combined:</strong></td><td class='total'> $totalRecords </td> <td><strong>$total_combined</strong></td></td>";

    $query_totalRecords = "SELECT COUNT(*) AS totalRecords FROM users";
    $result_totalRecords = mysqli_query($connection, $query_totalRecords);

    if ($result_totalRecords) {
        $row = mysqli_fetch_assoc($result_totalRecords);
        $totalRecords = $row['totalRecords'];
        $percentage_combined = number_format(($total_combined / $totalRecords) * 100, 2);

        echo "<td class='percentage'><strong>$percentage_combined%</strong></td>";
    } else {
        echo '<td colspan="2">Query error: ' . mysqli_error($connection) . '</td>';
    }

    echo "</tr>";
} else {
    echo '<tr><td colspan="4">Query error: ' . mysqli_error($connection) . '</td></tr>';
}

echo "</table>";

// --------------------------------------------------------
// --------------------------------------------------------
// --------------------------------------------------------
$data = [];
// $labels = [];

foreach ($questions as $column => $question) {
    // Zapytanie dla bieżącego pytania i wartości
    $selectedValue = ($column === 'twd_larry') ? $selectedLarry : (($column === 'rdr2_jimmy') ? $selectedJimmy : $selectedCharacter);

    $query = "SELECT COUNT(*) AS total FROM users WHERE $column = '$selectedValue'";
    $result = mysqli_query($connection, $query);

    if ($result) {
        $row = mysqli_fetch_assoc($result);
        $total = $row['total'];

        //  $labels[] = $selectedValue;

        $data[] = [$question, (int)$total];
    } else {
        echo 'Query error: ' . mysqli_error($connection);
    }
}

$queryTotalRows = "SELECT COUNT(*) AS totalRows FROM users";
$resultTotalRows = mysqli_query($connection, $queryTotalRows);

if ($resultTotalRows) {
    $rowTotalRows = mysqli_fetch_assoc($resultTotalRows);
    $totalRows = $rowTotalRows['totalRows'];
} else {
    echo 'Query error: ' . mysqli_error($connection);
}

$querySameAnswers = "SELECT COUNT(*) AS sameAnswersCount FROM users WHERE twd_larry = '$selectedLarry' AND rdr2_jimmy = '$selectedJimmy' AND gta5_character = '$selectedCharacter'";
$resultSameAnswers = mysqli_query($connection, $querySameAnswers);

if ($resultSameAnswers) {
    $rowSameAnswers = mysqli_fetch_assoc($resultSameAnswers);
    $sameAnswersCount = $rowSameAnswers['sameAnswersCount'];

    $data[] = ['Same Answers for all questions', (int)$sameAnswersCount];
} else {
    echo 'Query error: ' . mysqli_error($connection);
}


// Zamykamy połączenie z bazą
mysqli_close($connection);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chart</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            background-color: yellow;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 95vh;
        }

        canvas {
            background-color: white;
            border-radius: 10px;
            max-width: 50%;
            max-height: 50%;
            margin: 50px;
        }
    </style>
</head>
<body>
    <canvas id="myChart"></canvas>

    <script>
        const data = <?php echo json_encode($data); ?>;
const totalRows = <?php echo $totalRows; ?>;

const labels = data.map(item => item[0]);
const values = data.map(item => item[1]);

const colors = ['#78acc4', '#ffa500', '#32cd32', '#d65d84']; // Tablica kolorów dla odpowiedzi

const datasets = [{
    label: 'Total',
    data: values,
    backgroundColor: colors.slice(0, values.length), // Przypisanie kolorów dla odpowiedzi
    borderColor: colors.slice(0, values.length),
    borderWidth: 1
}];

const ctx = document.getElementById('myChart').getContext('2d');
const myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: labels,
        datasets: datasets
    },
    options: {
        plugins: {
            title: {
                display: true,
                text: 'Questionnaire results' // Tytuł wykresu
            },
            legend: {
                display: false
            }
        },
        scales: {
            x: {
                display: true,
                title: {
                    display: true,
                    text: 'Answers' // Opis osi X
                }
            },
            y: {
                beginAtZero: true,
                max: totalRows,
                precision: 0,
                display: true,
                title: {
                    display: true,
                    text: 'Number of People' // Opis osi Y
                }
            }
        }
    }
});
    </script>
</body>
</html>

<!-- ------------------------ Table -->

<style>
    body {
        background-color: #1f8fff;
    }
    table {
        width: 60%;
        border-collapse: collapse;
        margin: 0 auto;
    }

    th, td {
        padding: 10px;
        text-align: left;
        border: 1px solid #ccc;
    }

    th {
        background-color: #f2f2f2;
        font-weight: bold;
    }

    td.total {
        font-weight: bold;
    }

    td.percentage {
        font-style: italic;
    }
</style>