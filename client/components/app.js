import React from "react"
import { StyledButton } from "./shared/button/styledButton"
import { StyledLink } from "./shared/header/link/styledLink"

export class App extends React.Component{
    render (){
        return(
            <div>
                <StyledButton>queens</StyledButton>
                <StyledLink href={"https://stackoverflow.com/questions/41464075/link-to-a-part-inside-an-external-html-page"}>kings</StyledLink>
            </div>
        )
    }
}