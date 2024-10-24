read_drug = function (number, drug) {
  
  df =
    nsduh_html |>
    html_table() |>
    nth(number) |>
    slice(-1) |>
    mutate(drug = drug)
  
  return(df)
  
}