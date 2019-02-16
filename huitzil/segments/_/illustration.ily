Music_Voice = {                                                                %! extern

    \time 1/4
    \clef "bass"
    c16
    c16
    c16
    \times 1/1 {
        c16
    }

    bf,1

}                                                                              %! extern


Staff = <<                                                                     %! extern
    \context Voice = "Music_Voice"                                             %! ScoreTemplate
    \Music_Voice                                                               %! extern
>>                                                                             %! extern
