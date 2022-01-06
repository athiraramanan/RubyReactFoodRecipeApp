import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Home from "../components/Home";
import RecipesList from "../components/RecipesList";
import RecipeShow from "../components/RecipeShow";

export default (
  <Router>
    <Switch>
      <Route path="/" exact component={Home} />
      <Route path="/recipes" exact component={RecipesList} />
      <Route path="/recipe/:id" exact component={RecipeShow} />
    </Switch>
  </Router>
);