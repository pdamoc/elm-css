module Css
    exposing
        ( Rule
        , Declaration
        , Namespace
          -- Integration functions
        , styledNode
        , render
        , prettyPrint
        , withNamespace
        , namespace
        , importUrl
          -- Basic Selectors
        , (.)
        , (#)
        , (.:)
        , (#:)
        , (!:)
        , everything
          -- Combination selectors
        , descendant
        , child
        , sibling
        , adjacent
          -- Pseudo Selectors
        , any
        , default
        , link
        , visited
        , hover
        , active
        , focus
        , target
        , enabled
        , disabled
        , checked
        , indeterminate
        , invalid
        , valid
        , leftP
        , rightP
        , fullscreen
        , root
        , scope
        , firstChild
        , lastChild
        , nthChild
        , nthLastChild
        , nthOfType
        , nthLastOfType
        , firstOfType
        , lastOfType
        , onlyOfType
        , lang
        , dir
        , empty
        , firstLetter
        , firstLine
        , before
        , after
        , selection
        , backdrop
          -- Type Selectors
        , h1
        , h2
        , h3
        , h4
        , h5
        , h6
        , div
        , p
        , hr
        , pre
        , blockquote
        , span
        , a
        , code
        , em'
        , strong
        , i
        , b
        , u
        , sub
        , sup
        , br
        , ol
        , ul
        , li
        , dl
        , dt
        , dd
        , img
        , iframe
        , canvas
        , svg
        , math
        , form
        , input
        , textarea
        , button
        , select
        , option
        , section
        , nav
        , article
        , aside
        , header
        , footer
        , address
        , main'
        , body
        , figure
        , figcaption
        , table
        , caption
        , colgroup
        , col
        , tbody
        , thead
        , tfoot
        , tr
        , td
        , th
        , fieldset
        , legend
        , label
        , datalist
        , optgroup
        , keygen
        , output
        , progress
        , meter
        , audio
        , video
        , source
        , track
        , embed
        , object
        , param
        , ins
        , del
        , small
        , cite
        , dfn
        , abbr
        , time
        , var
        , samp
        , kbd
        , s
        , q
        , mark
        , ruby
        , rt
        , rp
        , bdi
        , bdo
        , wbr
        , details
        , summary
        , menuitem
        , menu
          -- Units
        , px
        , pc
        , pct
        , vw
        , vh
        , em
        , rem
        , deg
        , rad
        , just
          -- Properties
        , alignContent
        , alignItems
        , alignSelf
        , all
        , animation
        , animationDelay
        , animationDirection
        , animationDuration
        , animationFillMode
        , animationIterationCount
        , animationName
        , animationPlayState
        , animationTimingFunction
        , backfaceVisibility
        , background
        , backgroundAttachment
        , backgroundBlendMode
        , backgroundClip
        , backgroundColor
        , backgroundImage
        , backgroundOrigin
        , backgroundPosition
        , backgroundRepeat
        , backgroundSize
        , border
        , borderAll
        , borderBottom
        , borderBottomColor
        , borderBottomLeftRadius
        , borderBottomRightRadius
        , borderBottomStyle
        , borderBottomWidth
        , borderCollapse
        , borderColor
        , borderImage
        , borderImageOutset
        , borderImageRepeat
        , borderImageSlice
        , borderImageSource
        , borderImageWidth
        , borderLeft
        , borderLeftColor
        , borderLeftStyle
        , borderLeftWidth
        , borderRadius
        , borderRight
        , borderRightColor
        , borderRightStyle
        , borderRightWidth
        , borderSpacing
        , borderStyle
        , borderTop
        , borderTopColor
        , borderTopLeftRadius
        , borderTopRightRadius
        , borderTopStyle
        , borderTopWidth
        , borderWidth
        , bottom
        , boxShadow
        , boxSizing
        , captionSide
        , clear
        , clip
        , color
        , columnCount
        , columnFill
        , columnGap
        , columnRule
        , columnRuleColor
        , columnRuleStyle
        , columnRuleWidth
        , columnSpan
        , columnWidth
        , columns
        , content
        , counterIncrement
        , counterReset
        , cursor
        , direction
        , display
        , displayFlex
        , emptyCells
        , filter
        , flex
        , flexBasis
        , flexDirection
        , flexFlow
        , flexGrow
        , flexShrink
        , flexWrap
        , float
        , font
        , fontFamily
        , fontFamilies
        , fontSize
        , fontSizeAdjust
        , fontStretch
        , fontStyle
        , fontVariant
        , fontWeight
        , hangingPunctuation
        , height
        , justifyContent
        , left
        , letterSpacing
        , lineHeight
        , listStyle
        , listStyleImage
        , listStylePosition
        , listStyleType
        , margin
        , marginAll
        , marginBottom
        , marginLeft
        , marginRight
        , marginTop
        , maxHeight
        , maxWidth
        , minHeight
        , minWidth
        , navDown
        , navIndex
        , navLeft
        , navRight
        , navUp
        , opacity
        , order
        , outline
        , outlineColor
        , outlineOffset
        , outlineStyle
        , outlineWidth
        , overflow
        , overflowX
        , overflowY
        , padding
        , paddingAll
        , paddingBottom
        , paddingLeft
        , paddingRight
        , paddingTop
        , pageBreakAfter
        , pageBreakBefore
        , pageBreakInside
        , perspective
        , perspectiveOrigin
        , position
        , quotes
        , resize
        , right
        , tabSize
        , tableLayout
        , textAlign
        , textAlignLast
        , textDecoration
        , textDecorationColor
        , textDecorationLine
        , textDecorationStyle
        , textIndent
        , textJustify
        , textOverflow
        , textShadow
        , textTransform
        , top
        , transform
        , transformOrigin
        , transformStyle
        , transition
        , transitionDelay
        , transitionDuration
        , transitionProperty
        , transitionTimingFunction
        , unicodeBidi
        , verticalAlign
        , visibility
        , whiteSpace
        , width
        , wordBreak
        , wordSpacing
        , wordWrap
        , zIndex
          -- TRANSFORM VALUES
        , matrix
        , translate
        , translateX
        , translateY
        , scale
        , scaleX
        , scaleY
        , rotate
        , skew
        , skewX
        , skewY
          -- VALUES
        , absolute
        , relative
        , static
        , auto
        , inline
        , block
        , inlineBlock
        , flex'
        , inlineFlex
        , listItem
        , runIn
        , table'
        , inlineTable
        , tableCaption
        , tableColumnGroup
        , tableHeaderGroup
        , tableFooterGroup
        , tableRowGroup
        , tableCell
        , tableColumn
        , tableRow
        , baseline
        , center
        , flexStart
        , flexEnd
        , spaceBetween
        , spaceAround
        , column
        , columnReverse
        , row
        , rowReverse
        , wrap
        , nowrap
        , wrapReverse
        , none
        , left'
        , right'
        , both
        , normal
        , italic
        , oblique
        , smallCaps
        , repeat
        , repeatX
        , repeatY
        , noRepeat
        , scroll
        , visible
        , fixed
        , hidden
        , dotted
        , dashed
        , solid
        , double
        , groove
        , ridge
        , inset
        , outset
        , inside
        , outside
        , rtl
        , justify
        , underline
        , overline
        , lineThrough
        , embed'
        , bidiOverride
        , pre'
        , preLine
        , preWrap
        , borderBox
        , pointer
        , middle
        , collapse
        , uppercase
        , lowercase
        , capitalize
        , init
        , inherit
        )

{-| This module provides functions to help you write your CSS in Elm.

The names of some of the functions/values clash. Here are the resolutions:
    1. for values add a prime mark as in `left'`, `right'` or `flex'`
    2. `em` is used for the unit measurement. For the type selector use `em'`
    3. for pseudoselectors `:left` and `:right` use leftP and rightP

# Types

@docs Rule, Declaration, Namespace

# Integration functions

@docs styledNode, render, prettyPrint, withNamespace, namespace, importUrl


# Selector combinators
@docs descendant, child, sibling, adjacent

# Pseudo Selectors



@docs any, default, link, visited, hover, active, focus, target, enabled, disabled, checked, indeterminate, invalid, valid, fullscreen, root, scope, firstChild, lastChild, nthChild, nthLastChild, nthOfType, nthLastOfType, firstOfType, lastOfType, onlyOfType, lang, dir, empty, leftP, rightP, firstLetter, firstLine, before, after, selection, backdrop

# Basic Selectors
@docs (.), (#), (.:), (#:), (!:), everything

# Type Selectors
@docs h1, h2, h3, h4, h5, h6, div, p, hr, pre, blockquote, span, a, code, em', strong, i, b, u, sub, sup, br, ol, ul, li, dl, dt, dd, img, iframe, canvas, svg, math, form, input, textarea, button, select, option, section, nav, article, aside, header, footer, address, main', body, figure, figcaption, table, caption, colgroup, col, tbody, thead, tfoot, tr, td, th, fieldset, legend, label, datalist, optgroup, keygen, output, progress, meter, audio, video, source, track, embed, object, param, ins, del, small, cite, dfn, abbr, time, var, samp, kbd, s, q, mark, ruby, rt, rp, bdi, bdo, wbr, details, summary, menuitem, menu

# Declarations

# Units
@docs px, pc, pct, em, rem, vw, vh, deg, rad, just


# Properties
@docs alignContent, alignItems, alignSelf, all, animation, animationDelay, animationDirection, animationDuration, animationFillMode, animationIterationCount, animationName, animationPlayState, animationTimingFunction, backfaceVisibility, background, backgroundAttachment, backgroundBlendMode, backgroundClip, backgroundColor, backgroundImage, backgroundOrigin, backgroundPosition, backgroundRepeat, backgroundSize, border, borderAll, borderBottom, borderBottomColor, borderBottomLeftRadius, borderBottomRightRadius, borderBottomStyle, borderBottomWidth, borderCollapse, borderColor, borderImage, borderImageOutset, borderImageRepeat, borderImageSlice, borderImageSource, borderImageWidth, borderLeft, borderLeftColor, borderLeftStyle, borderLeftWidth, borderRadius, borderRight, borderRightColor, borderRightStyle, borderRightWidth, borderSpacing, borderStyle, borderTop, borderTopColor, borderTopLeftRadius, borderTopRightRadius, borderTopStyle, borderTopWidth, borderWidth, bottom, boxShadow, boxSizing, captionSide, clear, clip, color, columnCount, columnFill, columnGap, columnRule, columnRuleColor, columnRuleStyle, columnRuleWidth, columnSpan, columnWidth, columns, content, counterIncrement, counterReset, cursor, direction, display, displayFlex, emptyCells, filter, flex, flexBasis, flexDirection, flexFlow, flexGrow, flexShrink, flexWrap, float, font, fontFamily, fontFamilies, fontSize, fontSizeAdjust, fontStretch, fontStyle, fontVariant, fontWeight, hangingPunctuation, height, justifyContent, left, letterSpacing, lineHeight, listStyle, listStyleImage, listStylePosition, listStyleType, margin, marginAll, marginBottom, marginLeft, marginRight, marginTop, maxHeight, maxWidth, minHeight, minWidth, navDown, navIndex, navLeft, navRight, navUp, opacity, order, outline, outlineColor, outlineOffset, outlineStyle, outlineWidth, overflow, overflowX, overflowY, padding, paddingAll, paddingBottom, paddingLeft, paddingRight, paddingTop, pageBreakAfter, pageBreakBefore, pageBreakInside, perspective, perspectiveOrigin, position, quotes, resize, right, tabSize, tableLayout, textAlign, textAlignLast, textDecoration, textDecorationColor, textDecorationLine, textDecorationStyle, textIndent, textJustify, textOverflow, textShadow, textTransform, top, transform, transformOrigin, transformStyle, transition, transitionDelay, transitionDuration, transitionProperty, transitionTimingFunction, unicodeBidi, verticalAlign, visibility, whiteSpace, width, wordBreak, wordSpacing, wordWrap, zIndex

# Transform Values
@docs matrix, translate, translateX, translateY , scale, scaleX , scaleY , rotate , skew , skewX, skewY

# Values

@docs init, inherit, absolute, relative, static, auto, inline, block, inlineBlock, flex', inlineFlex, listItem, runIn, table', inlineTable, tableCaption, tableColumnGroup, tableHeaderGroup, tableFooterGroup, tableRowGroup, tableCell, tableColumn, tableRow, baseline, center, flexStart, flexEnd, spaceBetween, spaceAround, column, columnReverse, row, rowReverse, wrap, nowrap, wrapReverse, none, left', right', both, normal, italic, oblique, smallCaps, repeat, repeatX, repeatY, noRepeat, scroll, visible, fixed, hidden, dotted, dashed, solid, double, groove, ridge, inset, outset, inside, outside, rtl, justify, underline, overline, lineThrough, embed', bidiOverride, pre', preLine, preWrap, borderBox, pointer, middle, collapse, uppercase, lowercase, capitalize

-}

-- INPORTS

import Html exposing (Html)
import Html.Attributes
import String exposing (join, cons, concat, contains, words, split, trimRight)
import Vendor


-- TYPES


{-| A rule consists of a selector and a list of declarations.
-}
type alias Rule =
    { selector : String
    , declarations : List Declaration
    }


{-| A declaration is a pair of a property name and a value.
-}
type alias Declaration =
    ( String, String )


{-| A Namespace is a tupple of three functions that help create the id, class and classList
-}
type alias Namespace a b msg =
    ( a -> Html.Attribute msg, b -> Html.Attribute msg, List b -> Html.Attribute msg )



-- INTEGRATION FUNCTIONS


{-| Render a url to an @import directive.
-}
importUrl : String -> String
importUrl url =
    concat [ "@import url(", url, ");" ]


{-| A Html div to be used at the top most level in order to render the CSS.
-}
styledNode : List String -> List Rule -> List (Html a) -> Html a
styledNode imports rules children =
    let
        styleNode =
            Html.node "style"
                [ Html.Attributes.type' "text/css" ]
                [ Html.text (join "\n" imports ++ "\n" ++ (render rules)) ]
    in
        Html.div [] (styleNode :: children)


{-| Render a declaration to a string.
-}
renderDeclarations : String -> List Declaration -> String
renderDeclarations front =
    let
        end =
            if front == "" then
                ""
            else
                "\n"
    in
        concat << List.map (\( k, v ) -> concat [ front, k, ":", v, ";", end ])


{-| Render a rule to a string.
-}
renderRule : Rule -> String
renderRule rule =
    concat
        [ "\n"
        , rule.selector
        , "  {\n"
        , renderDeclarations "    " rule.declarations
        , "  }"
        , "\n"
        ]


{-| Renders the list of rules into a string.
-}
render : List Rule -> String
render =
    concat << (List.map renderRule)


{-| Renders the list of rules into a pretty string.
-}
prettyPrint : List String -> List Rule -> String
prettyPrint imports rules =
    concat ((join "\n" imports) :: (List.map renderRule rules))


{-| Adds a namespace to the selectors of a list of Rules.
-}
withNamespace : String -> List Rule -> List Rule
withNamespace ns rules =
    let
        clsNs =
            (cons '.' ns)

        idNs =
            (cons '#' ns)

        replace s1 s2 =
            (join s2) << (split s1)

        upgradeSelector =
            (replace "." clsNs) << (replace "#" idNs)
    in
        List.map (\rule -> { rule | selector = upgradeSelector rule.selector }) rules


{-| Adds a namespace to the selectors of a list of Rules.
-}
namespace : String -> Namespace a b msg
namespace ns =
    let
        addNS a =
            ns ++ (toString a)

        id =
            Html.Attributes.id << addNS

        cls =
            Html.Attributes.class << addNS

        clss =
            Html.Attributes.class << join " " << List.map addNS
    in
        ( id, cls, clss )



-- SELECTORS


sel : String -> List Declaration -> Rule
sel selector declarations =
    Rule selector declarations


joinSelectors : String -> List (List Declaration -> Rule) -> List Declaration -> Rule
joinSelectors bit selectors =
    sel ((join bit << List.map .selector << List.map (\f -> f [])) selectors)


{-| Descendant combination of selectors
-}
descendant : List (List Declaration -> Rule) -> List Declaration -> Rule
descendant =
    joinSelectors " "


{-| Child combination of selectors
-}
child : List (List Declaration -> Rule) -> List Declaration -> Rule
child =
    joinSelectors " > "


{-| Sibling combination of selectors
-}
sibling : List (List Declaration -> Rule) -> List Declaration -> Rule
sibling =
    joinSelectors " ~ "


{-| Adjacent combination of selectors
-}
adjacent : List (List Declaration -> Rule) -> List Declaration -> Rule
adjacent =
    joinSelectors " + "


{-| Multiple selectors
-}
multi : List (List Declaration -> Rule) -> List Declaration -> Rule
multi =
    joinSelectors " , "



-- PSEUDOSELECTORS


{-| :left
-}
leftP : String
leftP =
    ":left"


{-| :right
-}
rightP : String
rightP =
    ":right"


{-| :any
-}
any : String
any =
    ":any"


{-| :default
-}
default : String
default =
    ":default"


{-| :link
-}
link : String
link =
    ":link"


{-| :visited
-}
visited : String
visited =
    ":visited"


{-| :hover
-}
hover : String
hover =
    ":hover"


{-| :active
-}
active : String
active =
    ":active"


{-| :focus
-}
focus : String
focus =
    ":focus"


{-| :target
-}
target : String
target =
    ":target"


{-| :enabled
-}
enabled : String
enabled =
    ":enabled"


{-| :disabled
-}
disabled : String
disabled =
    ":disabled"


{-| :checked
-}
checked : String
checked =
    ":checked"


{-| :indeterminate
-}
indeterminate : String
indeterminate =
    ":indeterminate"


{-| :invalid
-}
invalid : String
invalid =
    ":invalid"


{-| :valid
-}
valid : String
valid =
    ":valid"


{-| :fullscreen
-}
fullscreen : String
fullscreen =
    ":fullscreen"


{-| :root
-}
root : String
root =
    ":root"


{-| :scope
-}
scope : String
scope =
    ":scope"


{-| :first-child
-}
firstChild : String
firstChild =
    ":first-child"


{-| :last-child
-}
lastChild : String
lastChild =
    ":last-child"


{-| :nth-child(
-}
nthChild : Int -> String
nthChild n =
    ":nth-child(" ++ (toString n) ++ ")"


{-| :nth-last-child(
-}
nthLastChild : Int -> String
nthLastChild n =
    ":nth-last-child(" ++ (toString n) ++ ")"


{-| :nth-of-type(
-}
nthOfType : String -> String
nthOfType s =
    ":nth-of-type(" ++ s ++ ")"


{-| :nth-last-of-type(
-}
nthLastOfType : String -> String
nthLastOfType s =
    ":nth-last-of-type(" ++ s ++ ")"


{-| :first-of-type
-}
firstOfType : String
firstOfType =
    ":first-of-type"


{-| :last-of-type
-}
lastOfType : String
lastOfType =
    ":last-of-type"


{-| :only-of-type
-}
onlyOfType : String
onlyOfType =
    ":only-of-type"


{-| :lang(
-}
lang : String -> String
lang s =
    ":lang(" ++ s ++ ")"


{-| :dir(
-}
dir : String -> String
dir s =
    ":dir(" ++ s ++ ")"


{-| :empty
-}
empty : String
empty =
    ":empty"


{-| ::first-letter
-}
firstLetter : String
firstLetter =
    "::first-letter"


{-| ::first-line
-}
firstLine : String
firstLine =
    "::first-line"


{-| ::before
-}
before : String
before =
    "::before"


{-| ::after
-}
after : String
after =
    "::after"


{-| ::selection
-}
selection : String
selection =
    "::selection"


{-| ::backdrop
-}
backdrop : String
backdrop =
    "::backdrop"



-- BASIC SELECTORS


{-| Creates a rule with a class selector
-}
(.) : a -> List Declaration -> Rule
(.) cls =
    sel (cons '.' (toString cls))


{-| Creates a rule with an id selector
-}
(#) : a -> List Declaration -> Rule
(#) cls =
    sel (cons '#' (toString cls))


{-| Combines a class selector with a pseudo selector
-}
(.:) : a -> String -> List Declaration -> Rule
(.:) =
    (.) >> (!:)


{-| Combines an id selector with a pseudo selector
-}
(#:) : a -> String -> List Declaration -> Rule
(#:) =
    (#) >> (!:)


{-| Combines an type selector with a pseudo selector
-}
(!:) : (List Declaration -> Rule) -> String -> List Declaration -> Rule
(!:) decl pseudo =
    sel ((trimRight (.selector (decl []))) ++ pseudo)


{-| Creates a rule with selector "*"
-}
everything : List Declaration -> Rule
everything =
    sel "*"



-- TYPE SELECTORS


{-| Selector for type h1
-}
h1 : List Declaration -> Rule
h1 =
    sel "h1"


{-| Selector for type h2
-}
h2 : List Declaration -> Rule
h2 =
    sel "h2"


{-| Selector for type h3
-}
h3 : List Declaration -> Rule
h3 =
    sel "h3"


{-| Selector for type h4
-}
h4 : List Declaration -> Rule
h4 =
    sel "h4"


{-| Selector for type h5
-}
h5 : List Declaration -> Rule
h5 =
    sel "h5"


{-| Selector for type h6
-}
h6 : List Declaration -> Rule
h6 =
    sel "h6"


{-| Selector for type div
-}
div : List Declaration -> Rule
div =
    sel "div"


{-| Selector for type p
-}
p : List Declaration -> Rule
p =
    sel "p"


{-| Selector for type hr
-}
hr : List Declaration -> Rule
hr =
    sel "hr"


{-| Selector for type pre
-}
pre : List Declaration -> Rule
pre =
    sel "pre"


{-| Selector for type blockquote
-}
blockquote : List Declaration -> Rule
blockquote =
    sel "blockquote"


{-| Selector for type span
-}
span : List Declaration -> Rule
span =
    sel "span"


{-| Selector for type a
-}
a : List Declaration -> Rule
a =
    sel "a"


{-| Selector for type code
-}
code : List Declaration -> Rule
code =
    sel "code"


{-| Selector for type em
-}
em' : List Declaration -> Rule
em' =
    sel "em"


{-| Selector for type strong
-}
strong : List Declaration -> Rule
strong =
    sel "strong"


{-| Selector for type i
-}
i : List Declaration -> Rule
i =
    sel "i"


{-| Selector for type b
-}
b : List Declaration -> Rule
b =
    sel "b"


{-| Selector for type u
-}
u : List Declaration -> Rule
u =
    sel "u"


{-| Selector for type sub
-}
sub : List Declaration -> Rule
sub =
    sel "sub"


{-| Selector for type sup
-}
sup : List Declaration -> Rule
sup =
    sel "sup"


{-| Selector for type br
-}
br : List Declaration -> Rule
br =
    sel "br"


{-| Selector for type ol
-}
ol : List Declaration -> Rule
ol =
    sel "ol"


{-| Selector for type ul
-}
ul : List Declaration -> Rule
ul =
    sel "ul"


{-| Selector for type li
-}
li : List Declaration -> Rule
li =
    sel "li"


{-| Selector for type dl
-}
dl : List Declaration -> Rule
dl =
    sel "dl"


{-| Selector for type dt
-}
dt : List Declaration -> Rule
dt =
    sel "dt"


{-| Selector for type dd
-}
dd : List Declaration -> Rule
dd =
    sel "dd"


{-| Selector for type img
-}
img : List Declaration -> Rule
img =
    sel "img"


{-| Selector for type iframe
-}
iframe : List Declaration -> Rule
iframe =
    sel "iframe"


{-| Selector for type canvas
-}
canvas : List Declaration -> Rule
canvas =
    sel "canvas"


{-| Selector for type svg
-}
svg : List Declaration -> Rule
svg =
    sel "svg"


{-| Selector for type math
-}
math : List Declaration -> Rule
math =
    sel "math"


{-| Selector for type form
-}
form : List Declaration -> Rule
form =
    sel "form"


{-| Selector for type input
-}
input : List Declaration -> Rule
input =
    sel "input"


{-| Selector for type textarea
-}
textarea : List Declaration -> Rule
textarea =
    sel "textarea"


{-| Selector for type button
-}
button : List Declaration -> Rule
button =
    sel "button"


{-| Selector for type select
-}
select : List Declaration -> Rule
select =
    sel "select"


{-| Selector for type option
-}
option : List Declaration -> Rule
option =
    sel "option"


{-| Selector for type section
-}
section : List Declaration -> Rule
section =
    sel "section"


{-| Selector for type nav
-}
nav : List Declaration -> Rule
nav =
    sel "nav"


{-| Selector for type article
-}
article : List Declaration -> Rule
article =
    sel "article"


{-| Selector for type aside
-}
aside : List Declaration -> Rule
aside =
    sel "aside"


{-| Selector for type header
-}
header : List Declaration -> Rule
header =
    sel "header"


{-| Selector for type footer
-}
footer : List Declaration -> Rule
footer =
    sel "footer"


{-| Selector for type address
-}
address : List Declaration -> Rule
address =
    sel "address"


{-| Selector for type main'
-}
main' : List Declaration -> Rule
main' =
    sel "main'"


{-| Selector for type body
-}
body : List Declaration -> Rule
body =
    sel "body"


{-| Selector for type figure
-}
figure : List Declaration -> Rule
figure =
    sel "figure"


{-| Selector for type figcaption
-}
figcaption : List Declaration -> Rule
figcaption =
    sel "figcaption"


{-| Selector for type table
-}
table : List Declaration -> Rule
table =
    sel "table"


{-| Selector for type caption
-}
caption : List Declaration -> Rule
caption =
    sel "caption"


{-| Selector for type colgroup
-}
colgroup : List Declaration -> Rule
colgroup =
    sel "colgroup"


{-| Selector for type col
-}
col : List Declaration -> Rule
col =
    sel "col"


{-| Selector for type tbody
-}
tbody : List Declaration -> Rule
tbody =
    sel "tbody"


{-| Selector for type thead
-}
thead : List Declaration -> Rule
thead =
    sel "thead"


{-| Selector for type tfoot
-}
tfoot : List Declaration -> Rule
tfoot =
    sel "tfoot"


{-| Selector for type tr
-}
tr : List Declaration -> Rule
tr =
    sel "tr"


{-| Selector for type td
-}
td : List Declaration -> Rule
td =
    sel "td"


{-| Selector for type th
-}
th : List Declaration -> Rule
th =
    sel "th"


{-| Selector for type fieldset
-}
fieldset : List Declaration -> Rule
fieldset =
    sel "fieldset"


{-| Selector for type legend
-}
legend : List Declaration -> Rule
legend =
    sel "legend"


{-| Selector for type label
-}
label : List Declaration -> Rule
label =
    sel "label"


{-| Selector for type datalist
-}
datalist : List Declaration -> Rule
datalist =
    sel "datalist"


{-| Selector for type optgroup
-}
optgroup : List Declaration -> Rule
optgroup =
    sel "optgroup"


{-| Selector for type keygen
-}
keygen : List Declaration -> Rule
keygen =
    sel "keygen"


{-| Selector for type output
-}
output : List Declaration -> Rule
output =
    sel "output"


{-| Selector for type progress
-}
progress : List Declaration -> Rule
progress =
    sel "progress"


{-| Selector for type meter
-}
meter : List Declaration -> Rule
meter =
    sel "meter"


{-| Selector for type audio
-}
audio : List Declaration -> Rule
audio =
    sel "audio"


{-| Selector for type video
-}
video : List Declaration -> Rule
video =
    sel "video"


{-| Selector for type source
-}
source : List Declaration -> Rule
source =
    sel "source"


{-| Selector for type track
-}
track : List Declaration -> Rule
track =
    sel "track"


{-| Selector for type embed
-}
embed : List Declaration -> Rule
embed =
    sel "embed"


{-| Selector for type object
-}
object : List Declaration -> Rule
object =
    sel "object"


{-| Selector for type param
-}
param : List Declaration -> Rule
param =
    sel "param"


{-| Selector for type ins
-}
ins : List Declaration -> Rule
ins =
    sel "ins"


{-| Selector for type del
-}
del : List Declaration -> Rule
del =
    sel "del"


{-| Selector for type small
-}
small : List Declaration -> Rule
small =
    sel "small"


{-| Selector for type cite
-}
cite : List Declaration -> Rule
cite =
    sel "cite"


{-| Selector for type dfn
-}
dfn : List Declaration -> Rule
dfn =
    sel "dfn"


{-| Selector for type abbr
-}
abbr : List Declaration -> Rule
abbr =
    sel "abbr"


{-| Selector for type time
-}
time : List Declaration -> Rule
time =
    sel "time"


{-| Selector for type var
-}
var : List Declaration -> Rule
var =
    sel "var"


{-| Selector for type samp
-}
samp : List Declaration -> Rule
samp =
    sel "samp"


{-| Selector for type kbd
-}
kbd : List Declaration -> Rule
kbd =
    sel "kbd"


{-| Selector for type s
-}
s : List Declaration -> Rule
s =
    sel "s"


{-| Selector for type q
-}
q : List Declaration -> Rule
q =
    sel "q"


{-| Selector for type mark
-}
mark : List Declaration -> Rule
mark =
    sel "mark"


{-| Selector for type ruby
-}
ruby : List Declaration -> Rule
ruby =
    sel "ruby"


{-| Selector for type rt
-}
rt : List Declaration -> Rule
rt =
    sel "rt"


{-| Selector for type rp
-}
rp : List Declaration -> Rule
rp =
    sel "rp"


{-| Selector for type bdi
-}
bdi : List Declaration -> Rule
bdi =
    sel "bdi"


{-| Selector for type bdo
-}
bdo : List Declaration -> Rule
bdo =
    sel "bdo"


{-| Selector for type wbr
-}
wbr : List Declaration -> Rule
wbr =
    sel "wbr"


{-| Selector for type details
-}
details : List Declaration -> Rule
details =
    sel "details"


{-| Selector for type summary
-}
summary : List Declaration -> Rule
summary =
    sel "summary"


{-| Selector for type menuitem
-}
menuitem : List Declaration -> Rule
menuitem =
    sel "menuitem"


{-| Selector for type menu
-}
menu : List Declaration -> Rule
menu =
    sel "menu"



-- DECLARATIONS
-- UNITS


{-| em
-}
em : number -> String
em e =
    (toString e) ++ "em"


{-| rem
-}
rem : number -> String
rem e =
    (toString e) ++ "em"


{-| px
-}
px : number -> String
px p =
    (toString p) ++ "px"


{-| pc
-}
pc : number -> String
pc p =
    (toString p) ++ "%"


{-| pct
-}
pct : number -> String
pct p =
    (toString p) ++ "%"


{-| deg
-}
deg : number -> String
deg d =
    (toString d) ++ "deg"


{-| rad
-}
rad : number -> String
rad r =
    (toString r) ++ "rad"


{-| vw
-}
vw : number -> String
vw r =
    (toString r) ++ "vw"


{-| vh
-}
vh : number -> String
vh r =
    (toString r) ++ "vh"


{-| Let's the number pass as it is
-}
just : number -> String
just =
    toString



-- PROPERTIES


{-| align-content
-}
alignContent : String -> Declaration
alignContent a =
    let
        name =
            prefixSet "align-content"

        value =
            prefixSet a

        value' =
            if a == "flex-start" then
                { value | ms = "start" }
            else if a == "flex-end" then
                { value | ms = "end" }
            else if a == "space-between" then
                { value | ms = "justify" }
            else if a == "space-around" then
                { value | ms = "distribute" }
            else
                value
    in
        prefixName
            { name
                | ms = "-ms-flex-line-pack"
                , webkit = "-webkit-flex-start"
            }
            <| prefixValue value'


{-| align-items
-}
alignItems : String -> Declaration
alignItems a =
    let
        name =
            prefixSet "align-items"

        value =
            prefixSet a

        value' =
            if a == "flex-start" then
                { value | ms = "start" }
            else if a == "flex-end" then
                { value | ms = "end" }
            else
                value
    in
        prefixName
            { name
                | ms = "-ms-flex-align"
                , webkit = "-webkit-align-items"
            }
            <| prefixValue value'


{-| align-self
-}
alignSelf : String -> Declaration
alignSelf a =
    let
        name =
            prefixSet "align-self"

        value =
            prefixSet a

        value' =
            if a == "flex-start" then
                { value | ms = "start" }
            else if a == "flex-end" then
                { value | ms = "end" }
            else
                value
    in
        prefixName
            { name
                | ms = "-ms-flex-item-align"
                , webkit = "-webkit-align-self"
            }
            <| prefixValue value'


{-| all
-}
all : String -> Declaration
all v =
    ( "all", v )


{-| animation
-}
animation : String -> Declaration
animation v =
    ( "animation", v )


{-| animation-delay
-}
animationDelay : String -> Declaration
animationDelay v =
    ( "animation-delay", v )


{-| animation-direction
-}
animationDirection : String -> Declaration
animationDirection v =
    ( "animation-direction", v )


{-| animation-duration
-}
animationDuration : String -> Declaration
animationDuration v =
    ( "animation-duration", v )


{-| animation-fill-mode
-}
animationFillMode : String -> Declaration
animationFillMode v =
    ( "animation-fill-mode", v )


{-| animation-iteration-count
-}
animationIterationCount : String -> Declaration
animationIterationCount v =
    ( "animation-iteration-count", v )


{-| animation-name
-}
animationName : String -> Declaration
animationName v =
    ( "animation-name", v )


{-| animation-play-state
-}
animationPlayState : String -> Declaration
animationPlayState v =
    ( "animation-play-state", v )


{-| animation-timing-function
-}
animationTimingFunction : String -> Declaration
animationTimingFunction v =
    ( "animation-timing-function", v )


{-| backface-visibility
-}
backfaceVisibility : String -> Declaration
backfaceVisibility v =
    ( "backface-visibility", v )


{-| background
-}
background : String -> Declaration
background b =
    let
        needsPrefix =
            String.startsWith "linear-gradient" b
                || String.startsWith "radial-gradient" b

        value =
            prefixSet b

        value' =
            if needsPrefix then
                { value
                    | ms = "-ms-" ++ b
                    , webkit = "-webkit-" ++ b
                    , moz = "-moz-" ++ b
                    , o = "-o-" ++ b
                }
            else
                value
    in
        ( "background", prefixValue value' )


{-| background-attachment
-}
backgroundAttachment : String -> Declaration
backgroundAttachment v =
    ( "background-attachment", v )


{-| background-blend-mode
-}
backgroundBlendMode : String -> Declaration
backgroundBlendMode v =
    ( "background-blend-mode", v )


{-| background-clip
-}
backgroundClip : String -> Declaration
backgroundClip v =
    ( "background-clip", v )


{-| background-color
-}
backgroundColor : String -> Declaration
backgroundColor v =
    ( "background-color", v )


{-| background-image
-}
backgroundImage : String -> Declaration
backgroundImage v =
    ( "background-image", v )


{-| background-origin
-}
backgroundOrigin : String -> Declaration
backgroundOrigin v =
    ( "background-origin", v )


{-| background-position
-}
backgroundPosition : String -> Declaration
backgroundPosition v =
    ( "background-position", v )


{-| background-repeat
-}
backgroundRepeat : String -> Declaration
backgroundRepeat v =
    ( "background-repeat", v )


{-| background-size
-}
backgroundSize : String -> Declaration
backgroundSize v =
    ( "background-size", v )


{-| border : takes a list with all the values
-}
border : List String -> Declaration
border vs =
    ( "border", join " " vs )


{-| borderAll : single value border
-}
borderAll : String -> Declaration
borderAll v =
    ( "border", v )


{-| border-bottom
-}
borderBottom : String -> Declaration
borderBottom v =
    ( "border-bottom", v )


{-| border-bottom-color
-}
borderBottomColor : String -> Declaration
borderBottomColor v =
    ( "border-bottom-color", v )


{-| border-bottom-left-radius
-}
borderBottomLeftRadius : String -> Declaration
borderBottomLeftRadius v =
    ( "border-bottom-left-radius", v )


{-| border-bottom-right-radius
-}
borderBottomRightRadius : String -> Declaration
borderBottomRightRadius v =
    ( "border-bottom-right-radius", v )


{-| border-bottom-style
-}
borderBottomStyle : String -> Declaration
borderBottomStyle v =
    ( "border-bottom-style", v )


{-| border-bottom-width
-}
borderBottomWidth : String -> Declaration
borderBottomWidth v =
    ( "border-bottom-width", v )


{-| border-collapse
-}
borderCollapse : String -> Declaration
borderCollapse v =
    ( "border-collapse", v )


{-| border-color
-}
borderColor : String -> Declaration
borderColor v =
    ( "border-color", v )


{-| border-image
-}
borderImage : String -> Declaration
borderImage v =
    ( "border-image", v )


{-| border-image-outset
-}
borderImageOutset : String -> Declaration
borderImageOutset v =
    ( "border-image-outset", v )


{-| border-image-repeat
-}
borderImageRepeat : String -> Declaration
borderImageRepeat v =
    ( "border-image-repeat", v )


{-| border-image-slice
-}
borderImageSlice : String -> Declaration
borderImageSlice v =
    ( "border-image-slice", v )


{-| border-image-source
-}
borderImageSource : String -> Declaration
borderImageSource v =
    ( "border-image-source", v )


{-| border-image-width
-}
borderImageWidth : String -> Declaration
borderImageWidth v =
    ( "border-image-width", v )


{-| border-left
-}
borderLeft : String -> Declaration
borderLeft v =
    ( "border-left", v )


{-| border-left-color
-}
borderLeftColor : String -> Declaration
borderLeftColor v =
    ( "border-left-color", v )


{-| border-left-style
-}
borderLeftStyle : String -> Declaration
borderLeftStyle v =
    ( "border-left-style", v )


{-| border-left-width
-}
borderLeftWidth : String -> Declaration
borderLeftWidth v =
    ( "border-left-width", v )


{-| border-radius
-}
borderRadius : String -> Declaration
borderRadius v =
    ( "border-radius", v )


{-| border-right
-}
borderRight : String -> Declaration
borderRight v =
    ( "border-right", v )


{-| border-right-color
-}
borderRightColor : String -> Declaration
borderRightColor v =
    ( "border-right-color", v )


{-| border-right-style
-}
borderRightStyle : String -> Declaration
borderRightStyle v =
    ( "border-right-style", v )


{-| border-right-width
-}
borderRightWidth : String -> Declaration
borderRightWidth v =
    ( "border-right-width", v )


{-| border-spacing
-}
borderSpacing : String -> Declaration
borderSpacing v =
    ( "border-spacing", v )


{-| border-style
-}
borderStyle : String -> Declaration
borderStyle v =
    ( "border-style", v )


{-| border-top
-}
borderTop : String -> Declaration
borderTop v =
    ( "border-top", v )


{-| border-top-color
-}
borderTopColor : String -> Declaration
borderTopColor v =
    ( "border-top-color", v )


{-| border-top-left-radius
-}
borderTopLeftRadius : String -> Declaration
borderTopLeftRadius v =
    ( "border-top-left-radius", v )


{-| border-top-right-radius
-}
borderTopRightRadius : String -> Declaration
borderTopRightRadius v =
    ( "border-top-right-radius", v )


{-| border-top-style
-}
borderTopStyle : String -> Declaration
borderTopStyle v =
    ( "border-top-style", v )


{-| border-top-width
-}
borderTopWidth : String -> Declaration
borderTopWidth v =
    ( "border-top-width", v )


{-| border-width
-}
borderWidth : String -> Declaration
borderWidth v =
    ( "border-width", v )


{-| bottom
-}
bottom : String -> Declaration
bottom v =
    ( "bottom", v )


{-| box-shadow
-}
boxShadow : String -> Declaration
boxShadow v =
    ( "box-shadow", v )


{-| box-sizing
-}
boxSizing : String -> Declaration
boxSizing v =
    ( "box-sizing", v )


{-| caption-side
-}
captionSide : String -> Declaration
captionSide v =
    ( "caption-side", v )


{-| clear
-}
clear : String -> Declaration
clear v =
    ( "clear", v )


{-| clip
-}
clip : String -> Declaration
clip v =
    ( "clip", v )


{-| color
-}
color : String -> Declaration
color v =
    ( "color", v )


{-| column-count
-}
columnCount : String -> Declaration
columnCount v =
    ( "column-count", v )


{-| column-fill
-}
columnFill : String -> Declaration
columnFill v =
    ( "column-fill", v )


{-| column-gap
-}
columnGap : String -> Declaration
columnGap v =
    ( "column-gap", v )


{-| column-rule
-}
columnRule : String -> Declaration
columnRule v =
    ( "column-rule", v )


{-| column-rule-color
-}
columnRuleColor : String -> Declaration
columnRuleColor v =
    ( "column-rule-color", v )


{-| column-rule-style
-}
columnRuleStyle : String -> Declaration
columnRuleStyle v =
    ( "column-rule-style", v )


{-| column-rule-width
-}
columnRuleWidth : String -> Declaration
columnRuleWidth v =
    ( "column-rule-width", v )


{-| column-span
-}
columnSpan : String -> Declaration
columnSpan v =
    ( "column-span", v )


{-| column-width
-}
columnWidth : String -> Declaration
columnWidth v =
    ( "column-width", v )


{-| columns
-}
columns : String -> Declaration
columns v =
    ( "columns", v )


{-| content
-}
content : String -> Declaration
content v =
    ( "content", v )


{-| counter-increment
-}
counterIncrement : String -> Declaration
counterIncrement v =
    ( "counter-increment", v )


{-| counter-reset
-}
counterReset : String -> Declaration
counterReset v =
    ( "counter-reset", v )


{-| cursor
-}
cursor : String -> Declaration
cursor c =
    let
        value =
            prefixSet c

        value' =
            if c == "grab" then
                { value | webkit = "-webkit-grab" }
            else if c == "zoom-in" then
                { value | webkit = "-webkit-zoom-in" }
            else if c == "zoom-out" then
                { value | webkit = "-webkit-zoom-out" }
            else
                value
    in
        ( "cursor", prefixValue value' )


{-| direction
-}
direction : String -> Declaration
direction v =
    ( "direction", v )


{-| shortcut for display:flex
-}
displayFlex : Declaration
displayFlex =
    display flex'


{-| display
-}
display : String -> Declaration
display d =
    let
        value =
            prefixSet d

        value' =
            if d == "flex" then
                { value
                    | webkit = "-webkit-flex"
                    , ms = "-ms-flexbox"
                }
            else if d == "inline-flex" then
                { value
                    | webkit = "-webkit-inline-flex"
                    , ms = "-ms-inline-flexbox"
                }
            else
                value
    in
        ( "display", prefixValue value' )


{-| empty-cells
-}
emptyCells : String -> Declaration
emptyCells v =
    ( "empty-cells", v )


{-| filter
-}
filter : String -> Declaration
filter v =
    ( "filter", v )


{-| flex
-}
flex : String -> Declaration
flex f =
    let
        name =
            prefixSet "flex"
    in
        prefixName
            { name
                | ms = "-ms-flex"
                , webkit = "-webkit-flex"
            }
            f


{-| flex-basis
-}
flexBasis : String -> Declaration
flexBasis f =
    let
        name =
            prefixSet "flex-basis"
    in
        prefixName
            { name
                | ms = "-ms-flex-preferred-size"
                , webkit = "-webkit-flex-basis"
            }
            f


{-| flex-direction
-}
flexDirection : String -> Declaration
flexDirection f =
    let
        name =
            prefixSet "flex-direction"
    in
        prefixName
            { name
                | ms = "-ms-flex-direction"
                , webkit = "-webkit-flex-direction"
            }
            f


{-| flex-flow
-}
flexFlow : String -> Declaration
flexFlow v =
    ( "flex-flow", v )


{-| flex-grow
-}
flexGrow : String -> Declaration
flexGrow f =
    let
        name =
            prefixSet "flex-grow"
    in
        prefixName
            { name
                | ms = "-ms-flex-positive"
                , webkit = "-webkit-flex-grow"
            }
            f


{-| flex-shrink
-}
flexShrink : String -> Declaration
flexShrink f =
    let
        name =
            prefixSet "flex-shrink"
    in
        prefixName
            { name
                | ms = "-ms-flex-negative"
                , webkit = "-webkit-flex-shrink"
            }
            f


{-| flex-wrap
-}
flexWrap : String -> Declaration
flexWrap f =
    let
        name =
            prefixSet "flex-wrap"
    in
        prefixName
            { name
                | ms = "-ms-flex-wrap"
                , webkit = "-webkit-flex-wrap"
            }
            f


{-| float
-}
float : String -> Declaration
float v =
    ( "float", v )


{-| font
-}
font : String -> Declaration
font v =
    ( "font", v )


{-| font-family
-}
fontFamily : String -> Declaration
fontFamily v =
    ( "font-family", v )


{-| font-family as a list of families
-}
fontFamilies : List String -> Declaration
fontFamilies fs =
    fontFamily (join ", " fs)


{-| font-size
-}
fontSize : String -> Declaration
fontSize v =
    ( "font-size", v )


{-| font-size-adjust
-}
fontSizeAdjust : String -> Declaration
fontSizeAdjust v =
    ( "font-size-adjust", v )


{-| font-stretch
-}
fontStretch : String -> Declaration
fontStretch v =
    ( "font-stretch", v )


{-| font-style
-}
fontStyle : String -> Declaration
fontStyle v =
    ( "font-style", v )


{-| font-variant
-}
fontVariant : String -> Declaration
fontVariant v =
    ( "font-variant", v )


{-| font-weight
-}
fontWeight : String -> Declaration
fontWeight v =
    ( "font-weight", v )


{-| hanging-punctuation
-}
hangingPunctuation : String -> Declaration
hangingPunctuation v =
    ( "hanging-punctuation", v )


{-| height
-}
height : String -> Declaration
height v =
    ( "height", v )


{-| justify-content
-}
justifyContent : String -> Declaration
justifyContent j =
    let
        name =
            prefixSet "justify-content"

        value =
            prefixSet j

        value' =
            if j == "flex-start" then
                { value | ms = "start" }
            else if j == "flex-end" then
                { value | ms = "end" }
            else if j == "space-between" then
                { value | ms = "justify" }
            else if j == "space-around" then
                { value | ms = "distribute" }
            else
                value
    in
        prefixName
            { name
                | ms = "-ms-flex-pack"
                , webkit = "-webkit-justify-content"
            }
            <| prefixValue value'


{-| left
-}
left : String -> Declaration
left v =
    ( "left", v )


{-| letter-spacing
-}
letterSpacing : String -> Declaration
letterSpacing v =
    ( "letter-spacing", v )


{-| line-height
-}
lineHeight : String -> Declaration
lineHeight v =
    ( "line-height", v )


{-| list-style
-}
listStyle : String -> Declaration
listStyle v =
    ( "list-style", v )


{-| list-style-image
-}
listStyleImage : String -> Declaration
listStyleImage v =
    ( "list-style-image", v )


{-| list-style-position
-}
listStylePosition : String -> Declaration
listStylePosition v =
    ( "list-style-position", v )


{-| list-style-type
-}
listStyleType : String -> Declaration
listStyleType v =
    ( "list-style-type", v )


{-| margin : takes a list with all the values
-}
margin : List String -> Declaration
margin vs =
    ( "margin", join " " vs )


{-| marginAll : single value margin
-}
marginAll : String -> Declaration
marginAll v =
    ( "margin", v )


{-| margin-bottom
-}
marginBottom : String -> Declaration
marginBottom v =
    ( "margin-bottom", v )


{-| margin-left
-}
marginLeft : String -> Declaration
marginLeft v =
    ( "margin-left", v )


{-| margin-right
-}
marginRight : String -> Declaration
marginRight v =
    ( "margin-right", v )


{-| margin-top
-}
marginTop : String -> Declaration
marginTop v =
    ( "margin-top", v )


{-| max-height
-}
maxHeight : String -> Declaration
maxHeight v =
    ( "max-height", v )


{-| max-width
-}
maxWidth : String -> Declaration
maxWidth v =
    ( "max-width", v )


{-| min-height
-}
minHeight : String -> Declaration
minHeight v =
    ( "min-height", v )


{-| min-width
-}
minWidth : String -> Declaration
minWidth v =
    ( "min-width", v )


{-| nav-down
-}
navDown : String -> Declaration
navDown v =
    ( "nav-down", v )


{-| nav-index
-}
navIndex : String -> Declaration
navIndex v =
    ( "nav-index", v )


{-| nav-left
-}
navLeft : String -> Declaration
navLeft v =
    ( "nav-left", v )


{-| nav-right
-}
navRight : String -> Declaration
navRight v =
    ( "nav-right", v )


{-| nav-up
-}
navUp : String -> Declaration
navUp v =
    ( "nav-up", v )


{-| opacity
-}
opacity : String -> Declaration
opacity v =
    ( "opacity", v )


{-| order
-}
order : String -> Declaration
order o =
    let
        name =
            prefixSet "order"
    in
        prefixName
            { name
                | ms = "-ms-flex-order"
                , webkit = "-webkit-order"
            }
            o


{-| outline
-}
outline : String -> Declaration
outline v =
    ( "outline", v )


{-| outline-color
-}
outlineColor : String -> Declaration
outlineColor v =
    ( "outline-color", v )


{-| outline-offset
-}
outlineOffset : String -> Declaration
outlineOffset v =
    ( "outline-offset", v )


{-| outline-style
-}
outlineStyle : String -> Declaration
outlineStyle v =
    ( "outline-style", v )


{-| outline-width
-}
outlineWidth : String -> Declaration
outlineWidth v =
    ( "outline-width", v )


{-| overflow
-}
overflow : String -> Declaration
overflow v =
    ( "overflow", v )


{-| overflow-x
-}
overflowX : String -> Declaration
overflowX v =
    ( "overflow-x", v )


{-| overflow-y
-}
overflowY : String -> Declaration
overflowY v =
    ( "overflow-y", v )


{-| padding : takes a list with all the values
-}
padding : List String -> Declaration
padding vs =
    ( "padding", join " " vs )


{-| paddingAll : single value padding
-}
paddingAll : String -> Declaration
paddingAll v =
    ( "padding", v )


{-| padding-bottom
-}
paddingBottom : String -> Declaration
paddingBottom v =
    ( "padding-bottom", v )


{-| padding-left
-}
paddingLeft : String -> Declaration
paddingLeft v =
    ( "padding-left", v )


{-| padding-right
-}
paddingRight : String -> Declaration
paddingRight v =
    ( "padding-right", v )


{-| padding-top
-}
paddingTop : String -> Declaration
paddingTop v =
    ( "padding-top", v )


{-| page-break-after
-}
pageBreakAfter : String -> Declaration
pageBreakAfter v =
    ( "page-break-after", v )


{-| page-break-before
-}
pageBreakBefore : String -> Declaration
pageBreakBefore v =
    ( "page-break-before", v )


{-| page-break-inside
-}
pageBreakInside : String -> Declaration
pageBreakInside v =
    ( "page-break-inside", v )


{-| perspective
-}
perspective : String -> Declaration
perspective v =
    ( "perspective", v )


{-| perspective-origin
-}
perspectiveOrigin : String -> Declaration
perspectiveOrigin v =
    ( "perspective-origin", v )


{-| position
-}
position : String -> Declaration
position v =
    ( "position", v )


{-| quotes
-}
quotes : String -> Declaration
quotes v =
    ( "quotes", v )


{-| resize
-}
resize : String -> Declaration
resize v =
    ( "resize", v )


{-| right
-}
right : String -> Declaration
right v =
    ( "right", v )


{-| tab-size
-}
tabSize : String -> Declaration
tabSize v =
    ( "tab-size", v )


{-| table-layout
-}
tableLayout : String -> Declaration
tableLayout v =
    ( "table-layout", v )


{-| text-align
-}
textAlign : String -> Declaration
textAlign v =
    ( "text-align", v )


{-| text-align-last
-}
textAlignLast : String -> Declaration
textAlignLast v =
    ( "text-align-last", v )


{-| text-decoration
-}
textDecoration : String -> Declaration
textDecoration v =
    ( "text-decoration", v )


{-| text-decoration-color
-}
textDecorationColor : String -> Declaration
textDecorationColor v =
    ( "text-decoration-color", v )


{-| text-decoration-line
-}
textDecorationLine : String -> Declaration
textDecorationLine v =
    ( "text-decoration-line", v )


{-| text-decoration-style
-}
textDecorationStyle : String -> Declaration
textDecorationStyle v =
    ( "text-decoration-style", v )


{-| text-indent
-}
textIndent : String -> Declaration
textIndent v =
    ( "text-indent", v )


{-| text-justify
-}
textJustify : String -> Declaration
textJustify v =
    ( "text-justify", v )


{-| text-overflow
-}
textOverflow : String -> Declaration
textOverflow v =
    ( "text-overflow", v )


{-| text-shadow
-}
textShadow : String -> Declaration
textShadow v =
    ( "text-shadow", v )


{-| text-transform
-}
textTransform : String -> Declaration
textTransform v =
    ( "text-transform", v )


{-| top
-}
top : String -> Declaration
top v =
    ( "top", v )


{-| transform
-}
transform : String -> Declaration
transform t =
    let
        name =
            prefixSet "transform"
    in
        prefixName
            { name
                | ms = "-ms-transform"
                , webkit = "-webkit-transform"
            }
            t


{-| transform-origin
-}
transformOrigin : String -> Declaration
transformOrigin v =
    ( "transform-origin", v )


{-| transform-style
-}
transformStyle : String -> Declaration
transformStyle v =
    ( "transform-style", v )


{-| transition
-}
transition : String -> Declaration
transition v =
    ( "transition", v )


{-| transition-delay
-}
transitionDelay : String -> Declaration
transitionDelay v =
    ( "transition-delay", v )


{-| transition-duration
-}
transitionDuration : String -> Declaration
transitionDuration v =
    ( "transition-duration", v )


{-| transition-property
-}
transitionProperty : String -> Declaration
transitionProperty v =
    ( "transition-property", v )


{-| transition-timing-function
-}
transitionTimingFunction : String -> Declaration
transitionTimingFunction v =
    ( "transition-timing-function", v )


{-| unicode-bidi
-}
unicodeBidi : String -> Declaration
unicodeBidi v =
    ( "unicode-bidi", v )


{-| vertical-align
-}
verticalAlign : String -> Declaration
verticalAlign v =
    ( "vertical-align", v )


{-| visibility
-}
visibility : String -> Declaration
visibility v =
    ( "visibility", v )


{-| white-space
-}
whiteSpace : String -> Declaration
whiteSpace v =
    ( "white-space", v )


{-| width
-}
width : String -> Declaration
width v =
    ( "width", v )


{-| word-break
-}
wordBreak : String -> Declaration
wordBreak v =
    ( "word-break", v )


{-| word-spacing
-}
wordSpacing : String -> Declaration
wordSpacing v =
    ( "word-spacing", v )


{-| word-wrap
-}
wordWrap : String -> Declaration
wordWrap v =
    ( "word-wrap", v )


{-| z-index
-}
zIndex : String -> Declaration
zIndex v =
    ( "z-index", v )



-- TRANSFORM VALUES


{-| matrix transform
-}
matrix : number -> number -> number -> number -> number -> number -> String
matrix a b c d e f =
    "matrix(" ++ (join ", " (List.map toString [ a, b, c, d, e, f ])) ++ ")"


{-| translate transform
-}
translate : String -> String -> String
translate x y =
    "translate(" ++ (join ", " [ x, y ]) ++ ")"


{-| translateY transform
-}
translateX : String -> String
translateX x =
    "translateX(" ++ x ++ ")"


{-| translateY transform
-}
translateY : String -> String
translateY y =
    "translateY(" ++ y ++ ")"


{-| scale transform
-}
scale : number -> number -> String
scale x y =
    concat [ "scale(", (toString x), ", ", (toString y), ")" ]


{-| scaleX transform
-}
scaleX : number -> String
scaleX x =
    concat [ "scaleX(", (toString x), ")" ]


{-| scaleY transform
-}
scaleY : number -> String
scaleY y =
    concat [ "scaleY(", (toString y), ")" ]


{-| rotate transform (in deg)
-}
rotate : number -> String
rotate a =
    concat [ "rotate(", (deg a), ")" ]


{-| skew transform (in deg)
-}
skew : number -> number -> String
skew x y =
    concat [ "skew(", (deg x), (deg y), ")" ]


{-| skewX transform (in deg)
-}
skewX : number -> String
skewX x =
    concat [ "skewX(", (deg x), ")" ]


{-| skewY transform (in deg)
-}
skewY : number -> String
skewY y =
    concat [ "skewY(", (deg y), ")" ]



-- VALUES


{-| absolute
-}
absolute : String
absolute =
    "absolute"


{-| relative
-}
relative : String
relative =
    "relative"


{-| static
-}
static : String
static =
    "static"


{-| auto
-}
auto : String
auto =
    "auto"


{-| inline
-}
inline : String
inline =
    "inline"


{-| block
-}
block : String
block =
    "block"


{-| inline-block
-}
inlineBlock : String
inlineBlock =
    "inline-block"


{-| flex
-}
flex' : String
flex' =
    "flex"


{-| inline-flex
-}
inlineFlex : String
inlineFlex =
    "inline-flex"


{-| list-item
-}
listItem : String
listItem =
    "list-item"


{-| run-in
-}
runIn : String
runIn =
    "run-in"


{-| table
-}
table' : String
table' =
    "table"


{-| inline-table
-}
inlineTable : String
inlineTable =
    "inline-table"


{-| table-caption
-}
tableCaption : String
tableCaption =
    "table-caption"


{-| table-column-group
-}
tableColumnGroup : String
tableColumnGroup =
    "table-column-group"


{-| table-header-group
-}
tableHeaderGroup : String
tableHeaderGroup =
    "table-header-group"


{-| table-footer-group
-}
tableFooterGroup : String
tableFooterGroup =
    "table-footer-group"


{-| table-row-group
-}
tableRowGroup : String
tableRowGroup =
    "table-row-group"


{-| table-cell
-}
tableCell : String
tableCell =
    "table-cell"


{-| table-column
-}
tableColumn : String
tableColumn =
    "table-column"


{-| table-row
-}
tableRow : String
tableRow =
    "table-row"


{-| baseline
-}
baseline : String
baseline =
    "baseline"


{-| center
-}
center : String
center =
    "center"


{-| flex-start
-}
flexStart : String
flexStart =
    "flex-start"


{-| flex-end
-}
flexEnd : String
flexEnd =
    "flex-end"


{-| space-between
-}
spaceBetween : String
spaceBetween =
    "space-between"


{-| space-around
-}
spaceAround : String
spaceAround =
    "space-around"


{-| column
-}
column : String
column =
    "column"


{-| column-reverse
-}
columnReverse : String
columnReverse =
    "column-reverse"


{-| row
-}
row : String
row =
    "row"


{-| row-reverse
-}
rowReverse : String
rowReverse =
    "row-reverse"


{-| wrap
-}
wrap : String
wrap =
    "wrap"


{-| nowrap
-}
nowrap : String
nowrap =
    "nowrap"


{-| wrap-reverse
-}
wrapReverse : String
wrapReverse =
    "wrap-reverse"


{-| none
-}
none : String
none =
    "none"


{-| left'
-}
left' : String
left' =
    "left"


{-| right'
-}
right' : String
right' =
    "right"


{-| both
-}
both : String
both =
    "both"


{-| normal
-}
normal : String
normal =
    "normal"


{-| italic
-}
italic : String
italic =
    "italic"


{-| oblique
-}
oblique : String
oblique =
    "oblique"


{-| small-caps
-}
smallCaps : String
smallCaps =
    "small-caps"


{-| repeat
-}
repeat : String
repeat =
    "repeat"


{-| repeat-x
-}
repeatX : String
repeatX =
    "repeat-x"


{-| repeat-y
-}
repeatY : String
repeatY =
    "repeat-y"


{-| no-repeat
-}
noRepeat : String
noRepeat =
    "no-repeat"


{-| scroll
-}
scroll : String
scroll =
    "scroll"


{-| visible
-}
visible : String
visible =
    "visible"


{-| fixed
-}
fixed : String
fixed =
    "fixed"


{-| hidden
-}
hidden : String
hidden =
    "hidden"


{-| dotted
-}
dotted : String
dotted =
    "dotted"


{-| dashed
-}
dashed : String
dashed =
    "dashed"


{-| solid
-}
solid : String
solid =
    "solid"


{-| double
-}
double : String
double =
    "double"


{-| groove
-}
groove : String
groove =
    "groove"


{-| ridge
-}
ridge : String
ridge =
    "ridge"


{-| inset
-}
inset : String
inset =
    "inset"


{-| outset
-}
outset : String
outset =
    "outset"


{-| inside
-}
inside : String
inside =
    "inside"


{-| outside
-}
outside : String
outside =
    "outside"


{-| rtl
-}
rtl : String
rtl =
    "rtl"


{-| justify
-}
justify : String
justify =
    "justify"


{-| underline
-}
underline : String
underline =
    "underline"


{-| overline
-}
overline : String
overline =
    "overline"


{-| line-through
-}
lineThrough : String
lineThrough =
    "line-through"


{-| embed
-}
embed' : String
embed' =
    "embed"


{-| bidi-override
-}
bidiOverride : String
bidiOverride =
    "bidi-override"


{-| pre
-}
pre' : String
pre' =
    "pre"


{-| pre-line
-}
preLine : String
preLine =
    "pre-line"


{-| pre-wrap
-}
preWrap : String
preWrap =
    "pre-wrap"


{-| border-box
-}
borderBox : String
borderBox =
    "border-box"


{-| pointer
-}
pointer : String
pointer =
    "pointer"


{-| middle
-}
middle : String
middle =
    "middle"


{-| collapse
-}
collapse : String
collapse =
    "collapse"


{-| uppercase
-}
uppercase : String
uppercase =
    "uppercase"


{-| lowercase
-}
lowercase : String
lowercase =
    "lowercase"


{-| capitalize
-}
capitalize : String
capitalize =
    "capitalize"


{-| init
-}
init : String
init =
    "init"


{-| inherit
-}
inherit : String
inherit =
    "inherit"



-- PREFIXING  -------------------------------


{-| Prefixes for the various browsers. This is handled by the property functions for you
-}
type alias PrefixSet =
    { ms : String
    , moz : String
    , o : String
    , webkit : String
    , default : String
    }


{-| construct a prefix set for the given browser
-}
prefixSet : String -> PrefixSet
prefixSet default =
    { ms = default
    , moz = default
    , o = default
    , webkit = default
    , default = default
    }


{-| generate the correct style with prefix
-}
prefixName : PrefixSet -> String -> Declaration
prefixName prefix value =
    case Vendor.prefix of
        Vendor.MS ->
            ( prefix.ms, value )

        Vendor.Moz ->
            ( prefix.moz, value )

        Vendor.O ->
            ( prefix.o, value )

        Vendor.Webkit ->
            ( prefix.webkit, value )

        _ ->
            ( prefix.default, value )


{-| get the prefix for the browser
-}
prefixValue : PrefixSet -> String
prefixValue prefix =
    case Vendor.prefix of
        Vendor.MS ->
            prefix.ms

        Vendor.Moz ->
            prefix.moz

        Vendor.O ->
            prefix.o

        Vendor.Webkit ->
            prefix.webkit

        _ ->
            prefix.default
