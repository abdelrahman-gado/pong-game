#include "Ball.h"

Ball::Ball(float startX, float startY)
{
    
    m_Position.x = startX;
    m_Position.y = startY;
    
    m_BallShape.setSize(sf::Vector2f(10, 10));
    m_BallShape.setPosition(m_Position);
}

sf::FloatRect Ball::getPosition()
{
    return m_BallShape.getGlobalBounds();
}

sf::RectangleShape Ball::getShape()
{
    return m_BallShape;
}

float Ball::getXVelocity()
{
    return m_Xvelocity;
}

float Ball::getYVelocity()
{
    return m_Yvelocity;
}

// make the ball at center for new serv (play) when the ball go out of the screen at any bat side (player side)
void Ball::hitBottom()
{
    m_Position.x = 400;
    m_Position.y = 300;
}

void Ball::reboundFromBat()
{
    // make the ball take an angle when it rebound from the bat
    m_Position.x -= (m_Xvelocity * 30);
    m_Xvelocity = -m_Xvelocity;
}

void Ball::reboundFromSides()
{
    // make the ball take an angle when it rebound from the sides
    m_Position.x -= (m_Xvelocity * 30);
    m_Yvelocity = -m_Yvelocity;
}


void Ball::update()
{
    // always change the position of the ball
    m_Position.x += m_Xvelocity;
    m_Position.y += m_Yvelocity;
    
    m_BallShape.setPosition(m_Position);
}


