//
//  MainVC.swift
//  CardsProject
//
//  Created by Antony Kolesynskyi on 4/14/19.
//  Copyright © 2019 Antony Kolesynskyi. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var myBackgroundView: UIView!
    @IBOutlet weak var myCardView: UIView!
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
   
    @IBAction func panRecognizerAction(_ sender: UIPanGestureRecognizer) {
        animation(sender: sender)
    }
    
    @IBAction func rulesButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "nextVC", sender: self)
    }
    @IBAction func refreshButton(_ sender: Any) {
        questionNumberLabel.alpha = 0
        questionLabel.alpha = 0
        UIView.animate(withDuration: 0.5, animations: {
            self.swipePosition = 0
            self.questionNumberLabel.alpha = 1
            self.questionLabel.alpha = 1
        })
        questionLabel.text = questionsArray[swipePosition]
    }
    
    
    var swipePosition = 0
    var gradientLayer = CAGradientLayer()
    
    let questionsArray = ["1. Если бы ты узнал что через год ты умрешь что бы ты изменил в своей жизни?"
    ,"2. За что твоим друзьям стоит тебя любить и уважать?"
    ,"3. Какой твой самый большой страх?"
    ,"4. Какой самый странный секрет тебе доводилось хранить?"
    ,"5. Если бы тебе дали шанс родиться в другой семье, какой она была бы?"
    ,"6. Что для тебя важнее быть услышанным или слышать?"
    ,"7. Опиши свою жизнь, названием песни."
    ,"8. Что бы ты делал если бы однажды утром ты проснулся и осознал что ты единственный человек на земле?"
    ,"9. Если бы ты смог полететь в космос то куда ты бы отправился?"
    ,"10. Какое самое яркое событие из детства ты помнишь?"
    ,"11. Как звали девушку/парня к которому тебе довелось испытать чувство любви впервые?"
    ,"12. Если бы ты смог вернуться назад в прошлое и изменить одно событие, то какое ты бы изменил?"
    ,"13. С какой птицей ты бы мог себя ассоциировать?"
    ,"14. Ты предпочитаешь вернуться за тем что осталось дома и опоздать или не возвращаться но успеть?"
    ,"15. Кто или что повлияло на твои жизненные взгляды?"
    ,"16. Если бы ты был художником и тебе пришлось бы всю жизнь рисовать лишь одну картину что бы ты изобразил на ней?"
    ,"17. Ты бы спас человека, зная что он убийца если бы он был в опасности?"
    ,"18. Что для тебя самое мягкое?"
    ,"19. Какой проект ты бы хотел воплотить в своей жизни?"
    ,"20. Что для тебя семья?"
        ,"21. Каким ты видишь смысл своей жизни?"
        ,"22. Есть ли жизнь вне планеты Земля?"
        ,"23. Как бы ты использовал своего ручного Джина?"
        ,"24. Есть ли жизнь после смерти?"
        ,"25. Какая поговорка, запала в душу больше всего?"
        ,"26. Может ли быть много лучших друзей?"
        ,"27. Какой музыкальный инструмент, нравится тебе больше всего?"
        ,"28. Как часто ты нуждался в чем-либо?"
        ,"29. если бы ты смог полететь в космос то куда ты бы отправился"
        ,"30. Пугает ли тебя переезд в другой город?"
        ,"31. Чай или кофе? Почему?"
        ,"32. Смог бы ты бросить своих детей, что бы занятся любимым делом?"
        ,"33. Что ждёт человечество в будущем?"
        ,"34. Самая сильная боль в твоей жизни?"
        ,"35. Самый счастиливый момент в твоей жизни?"
        ,"36. Самолёт или поезд? Почему?"
        ,"37. Какое животное ты считаешь своим любимым?"
        ,"38. Назови свой самый любимый фильм."
        ,"39. Какая из 4х стихий, твоя любимая?"
        ,"40. Ты бы смог бросить все, и уехать в Индию на пол года?"
        ,"41. Горы или океан? Почему?"
        ,"42. Ты боишься темноты, или того что она скрывает?"
        ,"43. Как часто ты видишь сны? Какой запомнился больше всего?"
        ,"44. У тебя были осознанные сны?"
        ,"45. Что ты считаешь целью своей жизни?"
        ,"46. Ты был бы хорошим родителем?"
        ,"47. Во сколько по твоему, человек начинает по настоящему взрослеть?"
        ,"48. Как ты относишься к отдыху в клубах?"
        ,"49. Бокал вина в день, это плохо или хорошо?"
        ,"50. Любишь ли ты заниматся спортом?"
        ,"51. Какая книга понравилась тебе больше всего?"
        ,"52.  Какой фильм оставил отпечаток в твоей памяти?"
        ,"53. Важно ли быть в жизни успешным?"
        ,"54. Что для тебя значит быть богатым?"
        ,"55. Ты смог сделать операцию человеку?"
        ,"56. Приходилось ли тебе спасать человека от смерти?"
        ,"57. Была ли твоя жизнь под настоящей угрозой?"
        ,"58. Назови работу твоей мечты?"
        ,"59. Какую страну ты можешь назвать идеальной?"
        ,"60. Какой период в истории человечества нравится тебе больше всего?"
        ,"61. Мифы могли бы быть реальными историческими фактами?"
        ,"62. Смогут ли люди прекратить войны полностью?"
        ,"63. Захватит ли искусственный интеллект планету?"
        ,"64. Какое имя нравится тебе больше всего?"
        ,"65. Считаешь ли ты себя счастливым??"
        ,"66. Ты конфликтный человек?"
        ,"67. Самое сумасшедшее действие в твоей жизни?"
        ,"68. Бегал ли ты под дождем?"
        ,"69. Плавал ли ты голым?"
        ,"70. Зима или лето? Почему?"]
    


        override func viewDidLoad() {
            super.viewDidLoad()
            
            questionLabel.text = questionsArray[swipePosition]
            questionNumberLabel.text = "Прочитай и ответь."

            myCardView.layer.cornerRadius = 8
            myCardView.layer.shadowOffset = CGSize(width: 7, height: 7)
            myCardView.layer.shadowRadius = 5
            myCardView.layer.shadowOpacity = 0.5
            
            myBackgroundView.layer.cornerRadius = 8
            myBackgroundView.layer.shadowOffset = CGSize(width: 7, height: 7)
            myBackgroundView.layer.shadowRadius = 5
            myBackgroundView.layer.shadowOpacity = 0.5
            
            questionLabel.sizeToFit()
            questionNumberLabel.sizeToFit()
        }
    
    override func viewWillAppear(_ animated: Bool) {
        //createGradientLayer()
    }
    
    func animation(sender: UIPanGestureRecognizer) {
        
        let card = sender.view!
        let point = sender.translation(in: view)
        card.center = CGPoint(x: view.center.x + point.x , y: view.center.y + point.y)
        
        if sender.state == UIPanGestureRecognizer.State.ended {
            if card.center.x < 75 || card.center.x > (view.frame.width - 75) {
                //left
                UIView.animate(withDuration: 0.3, animations: {
                    card.center = CGPoint(x: card.center.x + 200, y: card.center.y + 75)
                    card.alpha = 0
                })
                // puting card back on position
                UIView.animate(withDuration: 0.1, animations: {
                    card.center = self.view.center
                    card.alpha = 1
                    self.swipePosition += 1
                })
                print("+1")
                if swipePosition == questionsArray.count {
                    swipePosition = 0
                    questionLabel.text = questionsArray[swipePosition]
                    alertFunc()
                    print("alert")

                }
                questionLabel.text = questionsArray[swipePosition]
                }
            }
            UIView.animate(withDuration: 0.5, animations: {
                card.center = self.view.center
                card.alpha = 1
            })
        }
    
    
    func alertFunc() {
        let ac = UIAlertController(title: "Вы прошли все вопросы!", message: "Надеемся что Вы и Ваш собеседник смогли узнать много интересного.", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        ac.addAction(action)
        present(ac, animated: true)
    }
    
 
    
}

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

