import React from "react";


const Button = (props)=>{
    <button type={props.type} onclick={()=>{props.onclick}}>
        {props.label}
    </button>
}

exports = Button
