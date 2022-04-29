#ifndef BALL_H
#define BALL_H

#include "SFML/Graphics.hpp"

class Ball
{
private:
    sf::Vector2f m_Position;
    sf::RectangleShape m_BallShape;
    float m_Xvelocity = 0.1f;
    float m_Yvelocity = 0.1f;
    
public:
    Ball() = default;
    Ball(float startX, float startY);
    sf::FloatRect getPosition();
    sf::RectangleShape getShape();
    float getXVelocity();
    float getYVelocity();
    
    // when the ball go out in the bat side
    void hitBottom();
    
    void reboundFromSides();
    void reboundFromBat();
    
    void update();
    
    ~Ball() = default;

};

#endif // BALL_H
