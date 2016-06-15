module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (href)
import Css exposing (..)


type Classes
    = Main


( id, class, classes ) =
    namespace "demo"
rules : List Rule
rules =
    withNamespace "demo"
        [ (.) Main
            [ background "red"
            , width (vw 100)
            , height (vh 100)
            , displayFlex
            , alignItems center
            , justifyContent center
            ]
        , descendant [ (.) Main, Css.a ]
            [ color "white"
            , textDecoration none
            , fontSize (px 32)
            ]
        , descendant [ (.) Main, Css.a & pHover ]
            [ textDecoration underline
            ]
        ]


main : Html a
main =
    styledNode []
        rules
        [ Html.div [ class Main ]
            [ Html.a [ href "#" ]
                [ text "A BIG Centered Link" ]
            ]
        ]
