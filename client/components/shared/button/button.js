import React from "react";


export const Button = (props)=>{
    const { className} = props
    console.log(props)
    return(
    <button type={props.type} onClick={()=>{props.onclick}} className={ className }>
        {props.children}
    </button>)
}
