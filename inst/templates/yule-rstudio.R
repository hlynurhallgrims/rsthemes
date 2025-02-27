# library(dplyr)
#
# yule_rstudio_old <- "https://github.com/gadenbuie/yule-rstudio/raw/master/Yule-RStudio.rstheme"
#
# yule_colors <-
#   readLines(yule_rstudio_old)[1:300] %>%
#   extract_colors() %>%
#   tibble(color = .) %>%
#   count(color, sort = TRUE)
#
# prismatic::color(yule_colors$color) %>% plot()

striped_hover <- '
.ace_marker-layer .ace_active-line {
  background: repeating-linear-gradient(
    -45deg,
    #262c3300,
    #262c3300 15px,
    #FFFFFF08 15px,
    #FFFFFF08 25px
  );
}
'

animated_cursor_color <- '
.normal-mode .ace_cursor {
  border: 0 !important;
  animation-name: xmas-background-colors !important;
  animation-duration: 5s !important;
  animation-iteration-count: infinite;
  animation-timing-function: steps !important;
  opacity: 0.75;
}

.ace_cursor {
  color: $teal;
  animation-name: xmas-colors !important;
  animation-duration: 5s !important;
  animation-iteration-count: infinite;
  animation-timing-function: steps;
}

@keyframes blink {
  0% {
    opacity: 1;
  }
  75% {
    opacity: 0;
  }
}

@keyframes xmas-background-colors {
  0% {
    background-color: #ff00a9;
    opacity: 0.66;
  }
  10% {
    background-color: #ff00a9;
    opacity: 0.66;
  }
  18% {
    background-color: #ff00a9;
    opacity: 0;
  }
  20% {
    background-color: #7c3eff;
    opacity: 0.66;
  }
  30% {
    background-color: #7c3eff;
    opacity: 0.66;
  }
  38% {
    background-color: #7c3eff;
    opacity: 0;
  }
  40% {
    background-color: #64f3f0;
    opacity: 0.66;
  }
  50% {
    background-color: #64f3f0;
    opacity: 0.66;
  }
  58% {
    background-color: #64f3f0;
    opacity: 0;
  }
  60% {
    background-color: #4fe818;
    opacity: 0.66;
  }
  70% {
    background-color: #4fe818;
    opacity: 0.66;
  }
  78% {
    background-color: #4fe818;
    opacity: 0;
  }
  80% {
    background-color: #ffc400;
    opacity: 0.66;
  }
  90% {
    background-color: #ffc400;
    opacity: 0.66;
  }
  98% {
    background-color: #ffc400;
    opacity: 0;
  }
  100% {
    background-color: #ff00a9;
    opacity: 0.66;
  }
}

@keyframes xmas-colors {
  0% {
    color: #ff00a9;
  }
  20% {
    color: #7c3eff;
  }
  40% {
    color: #64f3f0;
  }
  60% {
    color: #4fe818;
  }
  80% {
    color: #ffc400;
  }
  100 {
    color: #ff0010;
  }
}
'

yule_rstudio <- function(
  ...,
  theme_name = "Yule RStudio",
  theme_path = "yule-rstudio-rsthemes.scss"
) {
  theme_path <- here::here("inst/templates", theme_path)
  rstheme(
    theme_name,
    theme_dark    = TRUE,
    theme_flat    = FALSE,
    theme_path    = theme_path,
    theme_apply   = TRUE,
    theme_as_sass = TRUE,
    theme_palette = list(
      red             = "#de6262",
      green           = "#39b81f",
      yellow          = "#F0c85b",
      "green-dark"    = "#262c33",
      "green-bright"  = "#4fe818",
      "red-bright"    = "#ff0010",
      "blue"          = "#00d3f8",
      black           = "#262c33",
      black2          = "#2e343a",
      "gray-dark"     = "#435052",
      teal            = "#64f3f0",
      purple          = "#7c3eff",
      brown           = "#847d73",
      white           = "#e8e8e8",
      ivory           = "#ede0ce",
      pink            = "#ff00a9",
      "yellow-bright" = "#ffc400",
      navy            = "#23282e",
      "green-slate"   = "#50575f",
      "slate"         = "#808080",
      gold            = "#938536"
    ),

    ui_background   = "$black",
    ui_foreground   = "$ivory",
    code_string     = "$yellow",
    code_function   = "$red",
    code_operator   = "mix($ivory, $ui_background, 80%)",
    code_comment    = "$brown",
    code_variable   = "$yellow",
    code_message    = "mix($teal, $black, 80%)",
    code_reserved   = "$green",
    code_value      = "$green",
    code_namespace  = "$green",
    code_identifier = "$ivory",
    code_bracket    = "$slate",

    ui_rstudio_background     = "darken($black, 5%)",
    ui_rstudio_foreground     = "$ivory",
    ui_selection = "transparentize($ivory, 0.8)",
    ui_line_active_selection = "transparentize($ivory, 0.8)",
    ui_completions_border = "$slate",
    ui_completions_selected_background = "mix($teal, $black, 40%)",
    ui_completions_background = "$black",
    ui_gutter_foreground = "$slate",
    ui_gutter_background = "darken($black, 5%)",
    ui_cursor = "$teal",
    ui_cursor_normal_mode = "transparentize($teal, 0.4)",
    ui_rstudio_tabs_active_background = "$black2",
    ui_rstudio_tabs_active_foreground = "$ivory",
    ui_fold_arrows_background = "$teal",
    ui_fold_arrows_foreground = "$slate",
    rmd_heading_foreground = "$yellow-bright",
    rmd_chunk_background = "mix($ui_background, $ui_rstudio_background, 50%)",
    rmd_href = "$red",
    rstheme_command_palette(
      item_hover_background = "mix($teal, $black, 25%)",
      item_selected_background = "mix($teal, $black, 35%)"
    ),
    rstheme_rainbow_parentheses(
      "$code_operator",
      "#3B8EA5",
      "#FFD791",
      "#6B7FD7",
      "#E83151",
      "#43AA8B"
    ),
    '
#rstudio_workbench_panel_environment > div:last-child .ace_editor_theme {
  background-size: cover;
  background-image: url("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAASABIAAD/4QCMRXhpZgAATU0AKgAAAAgABQESAAMAAAABAAEAAAEaAAUAAAABAAAASgEbAAUAAAABAAAAUgEoAAMAAAABAAIAAIdpAAQAAAABAAAAWgAAAAAAAABIAAAAAQAAAEgAAAABAAOgAQADAAAAAQABAACgAgAEAAAAAQAAAoCgAwAEAAAAAQAAAasAAAAA/+0AOFBob3Rvc2hvcCAzLjAAOEJJTQQEAAAAAAAAOEJJTQQlAAAAAAAQ1B2M2Y8AsgTpgAmY7PhCfv/CABEIAasCgAMBIgACEQEDEQH/xAAfAAABBQEBAQEBAQAAAAAAAAADAgQBBQAGBwgJCgv/xADDEAABAwMCBAMEBgQHBgQIBnMBAgADEQQSIQUxEyIQBkFRMhRhcSMHgSCRQhWhUjOxJGIwFsFy0UOSNIII4VNAJWMXNfCTc6JQRLKD8SZUNmSUdMJg0oSjGHDiJ0U3ZbNVdaSVw4Xy00Z2gONHVma0CQoZGigpKjg5OkhJSldYWVpnaGlqd3h5eoaHiImKkJaXmJmaoKWmp6ipqrC1tre4ubrAxMXGx8jJytDU1dbX2Nna4OTl5ufo6erz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAECAAMEBQYHCAkKC//EAMMRAAICAQMDAwIDBQIFAgQEhwEAAhEDEBIhBCAxQRMFMCIyURRABjMjYUIVcVI0gVAkkaFDsRYHYjVT8NElYMFE4XLxF4JjNnAmRVSSJ6LSCAkKGBkaKCkqNzg5OkZHSElKVVZXWFlaZGVmZ2hpanN0dXZ3eHl6gIOEhYaHiImKkJOUlZaXmJmaoKOkpaanqKmqsLKztLW2t7i5usDCw8TFxsfIycrQ09TV1tfY2drg4uPk5ebn6Onq8vP09fb3+Pn6/9sAQwACAwMDBAMEBQUEBgYGBgYICAcHCAgNCQoJCgkNEwwODAwODBMRFBEPERQRHhgVFRgeIx0cHSMqJSUqNTI1RUVc/9sAQwECAwMDBAMEBQUEBgYGBgYICAcHCAgNCQoJCgkNEwwODAwODBMRFBEPERQRHhgVFRgeIx0cHSMqJSUqNTI1RUVc/9oADAMBAAIRAxEAAAH5JTMb5bTJonattobK0Y06k7aKttLtM1E7VtsRtsQraJpjaE6FVGmYQqNU7RW21aY1ZUTUaNStGjKkLKpVEmidhRO1aNFToVW2klMbVolItthaJ1QlUUnbTbbQ22Up21bbGSnSpjbEq20FbaG21bbVttW21aZipidW2zCY2qdtW06tMKrRpho01G2rTEx20wmImttMyZjQmdENMS1OjLZSZI2jE7bVtMVtsLQqIJyorJnRjbBkxMARto6Nq22FttQ9pm07S7bTK20u21aYmo21aZitO1bbG201o01MbEaYmtMTWidDbattoztq22httU7RHbTW0apmNCdEw0xoxMS1o0rbbG22NttUbYDROMmJhWiJ1RtEdGy2iYqdtQ50x22rbaM6NBWTMJ2monSRGnR22qJ2htMGnRqnTqidNbbQhW1bbVE7VpjR0xIo2xExtW20ZjaplKoaNFKycRMpkUxMRnRqnRjTtFTGmoiYhEKSDkzoxCoqJ0KY21JytFO2A22LbbQVtoROmo0yRE7EbbVtpBiYk0battNQqJrbTU6dDRtWmIqdtWmNWmNW21bbR0xNRtq22qY2rbaG21TtqjaKnRNTGxEzGNtGjETCmJjVG0VMTAMpmBRMaMbYHbatMKI2nQhWxGhUG22hpiY7RNRlRW21bTobaIztoLjTUbJirRMNtq22rbaomYrbattq22jttDRprbatto7bQ0TEdtq20UqUyRomBRGmMRMVttUQqAdEwLROpO2VttiNMYypjQVkyROiTbbQVG1bbVOia22iqI0No1To0V7aplGhspMdMYCdsbbRSo2qY0VO2rbaolM1ttU7attq0bClKoJ22FG2NMxME5UUmcqkRMR0TAO0xUaYFttSdsG22rKjQmYxEpnVpTqVtFKlMkLycROmK0bR0xMI0xHTsKdoNtsLKToqiZKpnattFTExUxtGdEQmNgdtozMaWdGjO2ITtg0xtDbYnaJhE7QmJitKZpO2DbaIbRozGwttFRtlttptOzW0xCdojMTgFROIjTFTGmtOzDTorbap0YHTtDacRG2B22jKkaC0wojZOpUTFbTqiFRUaZEnK1J2wbbattq201G2rbY22ip2xG0TDTGrJ2jGnCiJgFOUmMynVtso22ZpidDaYrTphG0i20miZg05SSJ0zCIVFImdSdOBidEVZMwnRMdthbbVtsbTEwmNq0xJG21bbVExNREwDpjR22FttW21bRNROxo04hKtq0TqTtNaNqjbKY202TMVtsBtpqJhRo21TtEJ2mM7YrtOqdsRl7QjTEdOmhwuKTpgGJ01ttW20dtjbbAROmtpiE7Y0wsdbbVomAVJ2rbattgdtqjTFTozUxsLbatG1TGxG0xUaYBmNMEpVgclWmTtgNtiZ0aCp2hpiaidFTtJEZWIjbRXCZgraaVtpUTtMlK0VC4kGNtGFRobbC2yjRp0NskysnVOjA7aQY2xttq22NttW21aNIomMaNOFttWjYjbTUbRU7RGNsttoqUzE22wG2kmJ2grRoTtqmJip2kjRtW21TOk07RBWjUpMxSdOjtMQ0TIkwrRiJgGZ0ETExW21baAZ0TWmIInbR22NtoAWidW0THROgnTAMxtW2mtGzDbaG2wOTMBttqjTqiJiO2yjTEsYVoA0xJCttW0TWnY0bYW2kjbap0KracRETEdE6p21TtobaKjaVaNtW21bbVGjVO01tsRtoqY0gxtq0xmtpitOSLaJDbaIaYmpjYrtGBmNoxto7bQjRNRto7bC22MrRIG20Z04rG01slVTMYiNpMqMmCtCozG0NtAO2xspOErRJGQqAdto7RhTo1To1bTqidBpjaE7YnRGWnbVttGJjQmNo7bR0aYbbQ22pMzpoiYraYhttCNojttHbSBG2JmYkDaYNOiKVExW20Z20MpMwnRJpjYjbQDMRAK8iSFxprbYjaMLbSKImIzpittFKjattjbTobTBo0pUzExGdMERowM7aKZjQVtobbRlO1baAZjSbRMQidqyVJrbaOUnATEwaVRMJ2itExHbatomplK6jbQ20RmNFTtowqJqJ2rTEw2TFLjattq2nQ0TNJ06tomtKVkKStMI0aOicaJmBRGiMpVg2idW21bbS6NozE6MRsKXS63P0HMt4ObtTDAnS4bvgnZTYJVGFtEmnaBbaTbaITtIMbSbepeXe8KfKed+jvCqpt17A3PaJqY2rSmTTGmGnaGTMR2nVtpqJ2htONoUmG2VSVykxEbQi5YfRqN8z561YI0xSdoDTExHbattoRpwMxsbbaoWha6KCYI0nTD8qYXqKIwU7NCjHJtMScdOwEaJJnbQ22jttGbyr9cFWeqGJmdEwDTfOlzzrjRMaDbKEnO0p1t4cli0gotOONphG0widq20VMwojEkefctLiQWkba8Bej5311WX1r753zb3+kqaKuPo4nQaMSIynZZ9j5dRo2C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");
  background-position: bottom center;
}
',
    ...
  )
}

yule_rstudio(striped_hover, animated_cursor_color)

yule_rstudio(
  theme_name = "Yule RStudio (Reduced Motion)",
  theme_path = "yule-rstudio-reduced-motion.scss",
  striped_hover
)
