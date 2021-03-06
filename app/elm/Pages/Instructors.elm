module Pages.Instructors exposing (update)

import LangWidget exposing (..)
import Types exposing (..)
import Html exposing (..)
import Menu exposing (..)
import Footer exposing (..)
import Html as H exposing (Html, text, div, img)
import Html.Attributes as A exposing (id, class, href, src, style, title, alt, type_, scope)
import Bootstrap.Grid as Grid
import I18Next exposing (t)

update : Model -> Html Msg
update model =
    div []
        [ div [class "nav-wrapper nav", id "nav"] [render_menu model]
        , langswitcher model
        , Grid.container [] [ content model ]
        , render_footer model
        ]


content : Model -> Html Msg
content model =
    div []
        [
            H.section [ class "team", id "team" ]
            [ div [ class "container" ]
                [ H.h2 [class "text-center"]
                [ text (t model.translations "instructors.title") ]
                , div [ class "row" ]
                [ div [ class "col-sm-3 col-xs-6 paul-bio" ]
                    [ div [ class "card card-block" ]
                    [ H.a [ href "#" ]
                        [ img [ alt "", class "team-img", src "img/paul-1.jpg" ]
                        []
                        , div [ class "card-title-wrap" ]
                        [ H.span [ class "card-title" ]
                            [ text "Paul Mc Crodden" ]
                        , H.span [ class "card-text" ]
                            [ text "Shivam Yoga Instructor" ]
                        ]
                        , div [ class "team-over" ]
                        [ H.h4 [ class "hidden-md-down" ]
                            [ text (t model.translations "instructors.connect") ]
                        , H.nav [ class "nav social-nav" ]
                            [ H.a [ href "http://twitter.com/mccrodp" ]
                            [ H.i [ class "fa fa-twitter" ]
                                []
                            ]
                            , H.a [ href "http://medium.com/@mccrodp" ]
                            [ H.i [ class "fa fa-medium" ]
                                []
                            ]
                            ]
                        , H.p []
                            [ text (t model.translations "instructors.bios.paul") ]
                        ]
                        ]
                    ]
                    ]
                , div [ class "col-sm-3 col-xs-6" ]
                    [ div [ class "card card-block" ]
                    [ img [ alt "", class "team-img", src "img/paul-2.jpg" ]
                        []
                    ]
                    ]
                , div [ class "col-sm-3 col-xs-6 miki-bio" ]
                    [ div [ class "card card-block" ]
                    [ H.a [ href "#" ]
                        [ img [ alt "", class "team-img", src "img/miki-1.jpg" ]
                        []
                        , div [ class "card-title-wrap" ]
                        [ H.span [ class "card-title" ]
                            [ text "Miki Dono" ]
                        , H.span [ class "card-text" ]
                            [ text "Shivam Yoga Instructor" ]
                        ]
                        , div [ class "team-over" ]
                        [ H.h4 [ class "hidden-md-down" ]
                            [ text (t model.translations "instructors.connect") ]
                        , H.nav [ class "nav social-nav" ]
                            [ H.a [ href "tel:+817044408396" ]
                            [ H.i [ class "fa fa-phone" ]
                                []
                            ]
                            , H.a [ href "mailto:miki@ahimsayoga.jp" ]
                            [ H.i [ class "fa fa-envelope" ]
                                []
                            ]
                            ]
                        , H.p []
                            [ text (t model.translations "instructors.bios.miki") ]
                        ]
                        ]
                    ]
                    ]
                , div [ class "col-sm-3 col-xs-6" ]
                    [ div [ class "card card-block" ]
                    [ img [ alt "", class "team-img", src "img/miki-2.jpg" ]
                        []
                    ]
                    ]
                ]
                ]
            ]
        ]
