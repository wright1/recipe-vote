import React from "react"

export const Link = ({className,...props})=>{
    return(
    <a className={ className} href={props.href}>{props.children}</a>)
} 