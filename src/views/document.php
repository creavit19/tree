<!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/src/assets/css/styles.css">
    <link rel="shortcut icon" href="/src/assets/img/favicon.ico" type="image/x-icon">
    <title>Tree</title>
  </head>
  <body>
    <form action="/" method="post">
      <p>
        <select name="level">
          <option disabled>Select nesting level</option>
          <option <?php echo $selected == 1 ? 'selected ' : ''; ?>value="1">1</option>
          <option <?php echo $selected == 2 ? 'selected ' : ''; ?>value="2">2</option>
          <option <?php echo $selected == 3 ? 'selected ' : ''; ?>value="3">3</option>
          <option <?php echo $selected == 4 ? 'selected ' : ''; ?>value="4">4</option>
          <option <?php echo $selected == 5 ? 'selected ' : ''; ?>value="5">5</option>
          <option <?php echo $selected == 6 ? 'selected ' : ''; ?>value="6">6</option>
          <option <?php echo $selected == 7 ? 'selected ' : ''; ?>value="7">7</option>
          <option <?php echo $selected == 0 ? 'selected ' : ''; ?>value="0">MAX</option>
        </select>
      </p>
      <p><input type="submit" value="Show"></p>
    </form>
    <div class="entities">
      <?php echo $content ?>
    </div>
  </body>
  </html>
