import 'package:flutter/material.dart';

class Js extends StatelessWidget {
  const Js({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.centerRight, // Aligner à droite
        child: Text(
          '''  
import React, { Component } from 'react'
import Axios from 'axios'
 
export default class Hello extends Component {
 
    constructor(props) {
        super(props);
        this.state = { name: ""};
    }
 
    componentDidMount() {
        Axios.get('/api/user/name')
        .then(response => {
            this.setState({ name: response.data.name })
        })
    }
 
    render() {
        return (
            <div>
                My name is {this.state.name}
            </div>
        )
    }
} ''',
        ),
      ),
    );
  }
}
