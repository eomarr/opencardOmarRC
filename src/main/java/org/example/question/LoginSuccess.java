package org.example.question;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Question;
import net.serenitybdd.screenplay.questions.Text;
import org.example.pageObject.OpenCart_MainPage;

public class LoginSuccess implements Question {

    public static Question<String> displayed() {
        return new LoginSuccess();
    }
    @Override
    public Object answeredBy(Actor actor) {
        return Text.of(OpenCart_MainPage.NAMEOFUSER).answeredBy(actor);
    }
}
