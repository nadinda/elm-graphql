-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.GistComment exposing (..)

import Github.Enum.CommentAuthorAssociation
import Github.Enum.CommentCannotUpdateReason
import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.ScalarCodecs
import Github.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| The actor who authored the comment.
-}
author :
    SelectionSet decodesTo Github.Interface.Actor
    -> SelectionSet (Maybe decodesTo) Github.Object.GistComment
author object_ =
    Object.selectionForCompositeField "author" [] object_ (identity >> Decode.nullable)


{-| Author's association with the gist.
-}
authorAssociation : SelectionSet Github.Enum.CommentAuthorAssociation.CommentAuthorAssociation Github.Object.GistComment
authorAssociation =
    Object.selectionForField "Enum.CommentAuthorAssociation.CommentAuthorAssociation" "authorAssociation" [] Github.Enum.CommentAuthorAssociation.decoder


{-| Identifies the comment body.
-}
body : SelectionSet String Github.Object.GistComment
body =
    Object.selectionForField "String" "body" [] Decode.string


{-| The comment body rendered to HTML.
-}
bodyHTML : SelectionSet Github.ScalarCodecs.Html Github.Object.GistComment
bodyHTML =
    Object.selectionForField "ScalarCodecs.Html" "bodyHTML" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.ScalarCodecs.DateTime Github.Object.GistComment
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Check if this comment was created via an email reply.
-}
createdViaEmail : SelectionSet Bool Github.Object.GistComment
createdViaEmail =
    Object.selectionForField "Bool" "createdViaEmail" [] Decode.bool


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) Github.Object.GistComment
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


{-| The actor who edited the comment.
-}
editor :
    SelectionSet decodesTo Github.Interface.Actor
    -> SelectionSet (Maybe decodesTo) Github.Object.GistComment
editor object_ =
    Object.selectionForCompositeField "editor" [] object_ (identity >> Decode.nullable)


{-| The associated gist.
-}
gist :
    SelectionSet decodesTo Github.Object.Gist
    -> SelectionSet decodesTo Github.Object.GistComment
gist object_ =
    Object.selectionForCompositeField "gist" [] object_ identity


id : SelectionSet Github.ScalarCodecs.Id Github.Object.GistComment
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The moment the editor made the last edit
-}
lastEditedAt : SelectionSet (Maybe Github.ScalarCodecs.DateTime) Github.Object.GistComment
lastEditedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "lastEditedAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| Identifies when the comment was published at.
-}
publishedAt : SelectionSet (Maybe Github.ScalarCodecs.DateTime) Github.Object.GistComment
publishedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "publishedAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Github.ScalarCodecs.DateTime Github.Object.GistComment
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


type alias UserContentEditsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| A list of edits to this content.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
userContentEdits :
    (UserContentEditsOptionalArguments -> UserContentEditsOptionalArguments)
    -> SelectionSet decodesTo Github.Object.UserContentEditConnection
    -> SelectionSet (Maybe decodesTo) Github.Object.GistComment
userContentEdits fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "userContentEdits" optionalArgs object_ (identity >> Decode.nullable)


{-| Check if the current viewer can delete this object.
-}
viewerCanDelete : SelectionSet Bool Github.Object.GistComment
viewerCanDelete =
    Object.selectionForField "Bool" "viewerCanDelete" [] Decode.bool


{-| Check if the current viewer can update this object.
-}
viewerCanUpdate : SelectionSet Bool Github.Object.GistComment
viewerCanUpdate =
    Object.selectionForField "Bool" "viewerCanUpdate" [] Decode.bool


{-| Reasons why the current viewer can not update this comment.
-}
viewerCannotUpdateReasons : SelectionSet (List Github.Enum.CommentCannotUpdateReason.CommentCannotUpdateReason) Github.Object.GistComment
viewerCannotUpdateReasons =
    Object.selectionForField "(List Enum.CommentCannotUpdateReason.CommentCannotUpdateReason)" "viewerCannotUpdateReasons" [] (Github.Enum.CommentCannotUpdateReason.decoder |> Decode.list)


{-| Did the viewer author this comment.
-}
viewerDidAuthor : SelectionSet Bool Github.Object.GistComment
viewerDidAuthor =
    Object.selectionForField "Bool" "viewerDidAuthor" [] Decode.bool
