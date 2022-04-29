#include "Bat.h"

Bat::Bat(float startX, float startY)
{
    m_Position.x = startX;
    m_Position.y = startY;
    
    m_BatShape.setSize(sf::Vector2f(5, 50));
    m_BatShape.setPosition(m_Position);
}

sf::FloatRect Bat::getPosition()
{
    return m_BatShape.getGlobalBounds();
}

sf::RectangleShape Bat::getShape()
{
    return m_BatShape;
}

void Bat::moveUp()
{
    m_Position.y -= m_Speed;
}

void Bat::moveDown()
{
    m_Position.y += m_Speed;
}

void Bat::keepBatUp()
{
    m_Position.y = 0;
}

void Bat::keepBatDown(float yResolutionScreen)
{
    m_Position.y = yResolutionScreen - 50;
}

void Bat::update()
{
    m_BatShape.setPosition(m_Position);
}
