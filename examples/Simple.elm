module Main exposing (..)

import Html as H exposing (Html)
import Html.Attributes exposing (href, style)
import Css exposing (..)


type Classes
    = Main


( id, class, classes ) =
    namespace "demo"
rules : List Rule
rules =
    [ (.) Main
        [ background "red"
        , width (vw 100)
        , height (vh 100)
        , displayFlex
        , flexDirection column
        , alignItems center
        , justifyContent center
        ]
    , descendant [ (.) Main, a ]
        [ color "white"
        , textDecoration none
        , fontSize (px 32)
        ]
    , (!:) a hover [ textDecoration underline ]
    ]


main : Html a
main =
    styledNode []
        (withNamespace "demo" rules)
        [ H.div [ class Main ]
            [ H.a [ href "#" ]
                [ H.text "A BIG Centered Link" ]
            , H.div
                -- inline style usage
                [ style [ width (pct 80), height (px 100), backgroundColor "pink", marginAll (px 40) ] ]
                []
            ]
        ]
