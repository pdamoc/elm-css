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
            [ ( "background", "red" )
            , ( "width", "100vw" )
            , ( "height", "100vh" )
            ]
        , descendant [ (.) Main, Css.a ]
            [ ( "color", "white" )
            , ( "text-decoration", "none" )
            ]
        , descendant [ (.) Main, Css.a & pHover ]
            [ ( "text-decoration", "underline" )
            ]
        ]


main : Html a
main =
    styledNode []
        rules
        [ Html.div [ class Main ]
            [ Html.a [ href "#" ]
                [ text "a link" ]
            ]
        ]
